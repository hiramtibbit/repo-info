<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1`](#golang1)
-	[`golang:1.11`](#golang111)
-	[`golang:1.11.10`](#golang11110)
-	[`golang:1.11.10-alpine`](#golang11110-alpine)
-	[`golang:1.11.10-alpine3.8`](#golang11110-alpine38)
-	[`golang:1.11.10-alpine3.9`](#golang11110-alpine39)
-	[`golang:1.11.10-stretch`](#golang11110-stretch)
-	[`golang:1.11.10-windowsservercore`](#golang11110-windowsservercore)
-	[`golang:1.11.10-windowsservercore-1803`](#golang11110-windowsservercore-1803)
-	[`golang:1.11.10-windowsservercore-1809`](#golang11110-windowsservercore-1809)
-	[`golang:1.11.10-windowsservercore-ltsc2016`](#golang11110-windowsservercore-ltsc2016)
-	[`golang:1.11-alpine`](#golang111-alpine)
-	[`golang:1.11-alpine3.8`](#golang111-alpine38)
-	[`golang:1.11-alpine3.9`](#golang111-alpine39)
-	[`golang:1.11-stretch`](#golang111-stretch)
-	[`golang:1.11-windowsservercore`](#golang111-windowsservercore)
-	[`golang:1.11-windowsservercore-1803`](#golang111-windowsservercore-1803)
-	[`golang:1.11-windowsservercore-1809`](#golang111-windowsservercore-1809)
-	[`golang:1.11-windowsservercore-ltsc2016`](#golang111-windowsservercore-ltsc2016)
-	[`golang:1.12`](#golang112)
-	[`golang:1.12.5`](#golang1125)
-	[`golang:1.12.5-alpine`](#golang1125-alpine)
-	[`golang:1.12.5-alpine3.9`](#golang1125-alpine39)
-	[`golang:1.12.5-stretch`](#golang1125-stretch)
-	[`golang:1.12.5-windowsservercore`](#golang1125-windowsservercore)
-	[`golang:1.12.5-windowsservercore-1803`](#golang1125-windowsservercore-1803)
-	[`golang:1.12.5-windowsservercore-1809`](#golang1125-windowsservercore-1809)
-	[`golang:1.12.5-windowsservercore-ltsc2016`](#golang1125-windowsservercore-ltsc2016)
-	[`golang:1.12-alpine`](#golang112-alpine)
-	[`golang:1.12-alpine3.9`](#golang112-alpine39)
-	[`golang:1.12-stretch`](#golang112-stretch)
-	[`golang:1.12-windowsservercore`](#golang112-windowsservercore)
-	[`golang:1.12-windowsservercore-1803`](#golang112-windowsservercore-1803)
-	[`golang:1.12-windowsservercore-1809`](#golang112-windowsservercore-1809)
-	[`golang:1.12-windowsservercore-ltsc2016`](#golang112-windowsservercore-ltsc2016)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:1-alpine3.9`](#golang1-alpine39)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:1-windowsservercore-1803`](#golang1-windowsservercore-1803)
-	[`golang:1-windowsservercore-1809`](#golang1-windowsservercore-1809)
-	[`golang:1-windowsservercore-ltsc2016`](#golang1-windowsservercore-ltsc2016)
-	[`golang:alpine`](#golangalpine)
-	[`golang:alpine3.9`](#golangalpine39)
-	[`golang:latest`](#golanglatest)
-	[`golang:stretch`](#golangstretch)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:windowsservercore-1803`](#golangwindowsservercore-1803)
-	[`golang:windowsservercore-1809`](#golangwindowsservercore-1809)
-	[`golang:windowsservercore-ltsc2016`](#golangwindowsservercore-ltsc2016)

## `golang:1`

```console
$ docker pull golang@sha256:5bc207d20bd9e97c57dc2ad013f2b02d982cc6e411d48bdc79d90bb601696650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11`

```console
$ docker pull golang@sha256:f9b80d294e9601dd6a0f270d824f48421af63911135c28a3d92da3cae6e4ceae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.11` - linux; amd64

```console
$ docker pull golang@sha256:e0ac8642c1eb5bd5855657f7e52e169ed3b084f5595be489a2793df6c594c84d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289272459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844ced21382260d91f7c1aab6e14814b8a013b4a7a3fcd92e11c03048ac02cc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:25 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 09:50:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25531c95a463893f8c24174d86300dbe633af0a4883268b6f7993ecb7957ba1f`  
		Last Modified: Tue, 11 Jun 2019 09:51:58 GMT  
		Size: 121.1 MB (121073378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8de6e7d87f406c8a4b826071f4923b08f9fbd2cd45c6c173301498cb143ff`  
		Last Modified: Tue, 11 Jun 2019 09:51:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; arm variant v7

```console
$ docker pull golang@sha256:88f1fbff0b579ec0e5236c7e8a2e65e4d80dfb89da6b441486825714249e38b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248919480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de216322813d37977ac353626431a29805220903dda442639bafdd30c5853cba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:39 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 16:14:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:59 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:15:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:15:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429bf5ed694e498da4edd908f3c7b514e8e6466baff0df692a08eae948bfe20d`  
		Last Modified: Wed, 08 May 2019 16:16:49 GMT  
		Size: 101.0 MB (101043183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f3bddc5eb1e9142198b6f42fcbc2db34668f81bb7bf440b79ccebaa6f002c6`  
		Last Modified: Wed, 08 May 2019 16:16:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdac8243f3c1e4878c12062b622ca1134a62185d58533b2b70c75172ca0e2c72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc78cb672d915db6f1ff2ebf0c203b31224f116d2c0130eb9c27270491cf40e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:16:25 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 23:16:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:48 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65587d750f2d73893eec51687a626db089614acf38a05cdc75b07141295848`  
		Last Modified: Wed, 08 May 2019 23:19:18 GMT  
		Size: 98.9 MB (98916483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1383ed0aa80f8c9d977e8147026421b7dc3d05a9cc1661e2526e7a1eeed0196`  
		Last Modified: Wed, 08 May 2019 23:18:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; 386

```console
$ docker pull golang@sha256:2cea40bcd38b5337aa4a225ccd93e61d79882f6085fa488e149f2aa5381b8104
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279294057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4aaee163a3b4bed1b9e7a84cb8662766d45e355d8a5271601d923e6b01655ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:35:30 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 14:35:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:49 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c569d5624b2b58fe618a2e403938463e2edd065a9fefd81f4539dcc9aeb5c4de`  
		Last Modified: Tue, 11 Jun 2019 14:37:54 GMT  
		Size: 104.1 MB (104092831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47dde6164b521dcb5c5a30d60d824e69bdb7c88c41c6771118dcde285257394`  
		Last Modified: Tue, 11 Jun 2019 14:37:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; ppc64le

```console
$ docker pull golang@sha256:4894c3ffd0c7199cb54cddadeba42321f6b2d7cac474fe479c1e4e27f65b5b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261802065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8fd88624bb7a606238706ae47e0cc4d4a33bc23c25ca8dd40965885469fec5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:19:00 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:19:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:19:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:19:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:19:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:19:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8a90950e8fa7ffb5c0cceebefe74ef35fc35bb6e6bad561198daedf9d702c`  
		Last Modified: Tue, 11 Jun 2019 10:31:00 GMT  
		Size: 99.0 MB (99002311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a6ffdbdc126c99815c0d10dace52725aee62f937f55087b8bbda5dcf79ae0`  
		Last Modified: Tue, 11 Jun 2019 10:30:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; s390x

```console
$ docker pull golang@sha256:c3201336b78c3ccc0f09347c7369093a68e313853831a2a515a43530ac380642
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256112253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fd7909988c277941780b40db99c36f2546621b0387ae7d33c75efe7622e0ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:51 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 04:08:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:08:02 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:08:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:08:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:08:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157906863f94681c8bfeef5bb92133171ae952cb5e75cba77e511965c06e54f7`  
		Last Modified: Tue, 11 Jun 2019 04:09:32 GMT  
		Size: 99.8 MB (99793441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0adf6b74d21bcb929c45c198b9d4740b0eee39b16a0d7c6121f684415f09660`  
		Last Modified: Tue, 11 Jun 2019 04:09:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:ecc60e865c87553177cc587a3f9427d4f7c823356029c10b91f4f11342c09809
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5883528881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b46c7db1e7c87348f84791793a0edf8c8af84b17c3bfce75c180e82af1dc46`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:04:47 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:10:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:10:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cf8cce0d88339f54a116c36bd35b9eec724323cec90425f5c04a2e4496e59c`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5007e4ff7f8d41e8ba892b8582afb20c3d1f5a0d3c7bee3979629669e7bb4c`  
		Last Modified: Wed, 12 Jun 2019 13:28:39 GMT  
		Size: 138.5 MB (138546950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e12e0d68bfd04c1aa708b0445eb41bc101f7dc3c44d86910bcd52f057903b`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:81120848352b7c93d5884c2736fa243881abba1ffb0e6cbc06ff52378a933a0e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466811458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c8f059e734bd9982ee6f28d1373898d7d0c0b29b8bebb3d2799dfa9037399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:10:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:15:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:15:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08f52cd244974b1a64f3f87f8174089ebf5d68896e68793b26dc258c081dbdb`  
		Last Modified: Wed, 12 Jun 2019 13:28:56 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0c21899f9dae2a37c2e673f793d4fd192cfb1b105dc89b087cb0ac6535b418`  
		Last Modified: Wed, 12 Jun 2019 13:30:38 GMT  
		Size: 129.1 MB (129118432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5277bfd0116950d8e6662c1cc724d530a64060f03bbe96a454dce985da6ac3`  
		Last Modified: Wed, 12 Jun 2019 13:28:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:611879883542598c91cb85d935f7fb5e08f963922d17e200d878fc3a71c15034
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2544219942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa1dac860088d7aabb1e401cc64935d254c01a614593a3a1d314853ea66f40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:15:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:20:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:20:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0f2ebde484c64a98c8ff970c787a8f9845a68543b719fe6babb78866f636`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c0e182a52a01c0811e6304ac29daef674bf55c8d925c8d3e68e020a5cd474`  
		Last Modified: Wed, 12 Jun 2019 13:32:08 GMT  
		Size: 129.1 MB (129079941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76986629cc0ab12742760485c1af37070410e45a6ed58baede2cb521ab7610b`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10`

```console
$ docker pull golang@sha256:f9b80d294e9601dd6a0f270d824f48421af63911135c28a3d92da3cae6e4ceae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.11.10` - linux; amd64

```console
$ docker pull golang@sha256:e0ac8642c1eb5bd5855657f7e52e169ed3b084f5595be489a2793df6c594c84d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289272459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844ced21382260d91f7c1aab6e14814b8a013b4a7a3fcd92e11c03048ac02cc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:25 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 09:50:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25531c95a463893f8c24174d86300dbe633af0a4883268b6f7993ecb7957ba1f`  
		Last Modified: Tue, 11 Jun 2019 09:51:58 GMT  
		Size: 121.1 MB (121073378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8de6e7d87f406c8a4b826071f4923b08f9fbd2cd45c6c173301498cb143ff`  
		Last Modified: Tue, 11 Jun 2019 09:51:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; arm variant v7

```console
$ docker pull golang@sha256:88f1fbff0b579ec0e5236c7e8a2e65e4d80dfb89da6b441486825714249e38b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248919480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de216322813d37977ac353626431a29805220903dda442639bafdd30c5853cba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:39 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 16:14:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:59 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:15:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:15:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429bf5ed694e498da4edd908f3c7b514e8e6466baff0df692a08eae948bfe20d`  
		Last Modified: Wed, 08 May 2019 16:16:49 GMT  
		Size: 101.0 MB (101043183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f3bddc5eb1e9142198b6f42fcbc2db34668f81bb7bf440b79ccebaa6f002c6`  
		Last Modified: Wed, 08 May 2019 16:16:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdac8243f3c1e4878c12062b622ca1134a62185d58533b2b70c75172ca0e2c72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc78cb672d915db6f1ff2ebf0c203b31224f116d2c0130eb9c27270491cf40e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:16:25 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 23:16:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:48 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65587d750f2d73893eec51687a626db089614acf38a05cdc75b07141295848`  
		Last Modified: Wed, 08 May 2019 23:19:18 GMT  
		Size: 98.9 MB (98916483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1383ed0aa80f8c9d977e8147026421b7dc3d05a9cc1661e2526e7a1eeed0196`  
		Last Modified: Wed, 08 May 2019 23:18:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; 386

```console
$ docker pull golang@sha256:2cea40bcd38b5337aa4a225ccd93e61d79882f6085fa488e149f2aa5381b8104
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279294057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4aaee163a3b4bed1b9e7a84cb8662766d45e355d8a5271601d923e6b01655ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:35:30 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 14:35:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:49 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c569d5624b2b58fe618a2e403938463e2edd065a9fefd81f4539dcc9aeb5c4de`  
		Last Modified: Tue, 11 Jun 2019 14:37:54 GMT  
		Size: 104.1 MB (104092831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47dde6164b521dcb5c5a30d60d824e69bdb7c88c41c6771118dcde285257394`  
		Last Modified: Tue, 11 Jun 2019 14:37:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; ppc64le

```console
$ docker pull golang@sha256:4894c3ffd0c7199cb54cddadeba42321f6b2d7cac474fe479c1e4e27f65b5b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261802065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8fd88624bb7a606238706ae47e0cc4d4a33bc23c25ca8dd40965885469fec5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:19:00 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:19:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:19:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:19:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:19:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:19:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8a90950e8fa7ffb5c0cceebefe74ef35fc35bb6e6bad561198daedf9d702c`  
		Last Modified: Tue, 11 Jun 2019 10:31:00 GMT  
		Size: 99.0 MB (99002311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a6ffdbdc126c99815c0d10dace52725aee62f937f55087b8bbda5dcf79ae0`  
		Last Modified: Tue, 11 Jun 2019 10:30:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; s390x

```console
$ docker pull golang@sha256:c3201336b78c3ccc0f09347c7369093a68e313853831a2a515a43530ac380642
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256112253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fd7909988c277941780b40db99c36f2546621b0387ae7d33c75efe7622e0ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:51 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 04:08:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:08:02 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:08:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:08:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:08:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157906863f94681c8bfeef5bb92133171ae952cb5e75cba77e511965c06e54f7`  
		Last Modified: Tue, 11 Jun 2019 04:09:32 GMT  
		Size: 99.8 MB (99793441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0adf6b74d21bcb929c45c198b9d4740b0eee39b16a0d7c6121f684415f09660`  
		Last Modified: Tue, 11 Jun 2019 04:09:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:ecc60e865c87553177cc587a3f9427d4f7c823356029c10b91f4f11342c09809
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5883528881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b46c7db1e7c87348f84791793a0edf8c8af84b17c3bfce75c180e82af1dc46`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:04:47 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:10:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:10:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cf8cce0d88339f54a116c36bd35b9eec724323cec90425f5c04a2e4496e59c`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5007e4ff7f8d41e8ba892b8582afb20c3d1f5a0d3c7bee3979629669e7bb4c`  
		Last Modified: Wed, 12 Jun 2019 13:28:39 GMT  
		Size: 138.5 MB (138546950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e12e0d68bfd04c1aa708b0445eb41bc101f7dc3c44d86910bcd52f057903b`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:81120848352b7c93d5884c2736fa243881abba1ffb0e6cbc06ff52378a933a0e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466811458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c8f059e734bd9982ee6f28d1373898d7d0c0b29b8bebb3d2799dfa9037399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:10:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:15:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:15:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08f52cd244974b1a64f3f87f8174089ebf5d68896e68793b26dc258c081dbdb`  
		Last Modified: Wed, 12 Jun 2019 13:28:56 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0c21899f9dae2a37c2e673f793d4fd192cfb1b105dc89b087cb0ac6535b418`  
		Last Modified: Wed, 12 Jun 2019 13:30:38 GMT  
		Size: 129.1 MB (129118432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5277bfd0116950d8e6662c1cc724d530a64060f03bbe96a454dce985da6ac3`  
		Last Modified: Wed, 12 Jun 2019 13:28:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:611879883542598c91cb85d935f7fb5e08f963922d17e200d878fc3a71c15034
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2544219942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa1dac860088d7aabb1e401cc64935d254c01a614593a3a1d314853ea66f40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:15:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:20:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:20:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0f2ebde484c64a98c8ff970c787a8f9845a68543b719fe6babb78866f636`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c0e182a52a01c0811e6304ac29daef674bf55c8d925c8d3e68e020a5cd474`  
		Last Modified: Wed, 12 Jun 2019 13:32:08 GMT  
		Size: 129.1 MB (129079941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76986629cc0ab12742760485c1af37070410e45a6ed58baede2cb521ab7610b`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-alpine`

```console
$ docker pull golang@sha256:9e819eaa759d6ba6f792d358d0d583970c45b84203a89786edb00357c91ce7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11.10-alpine` - linux; amd64

```console
$ docker pull golang@sha256:490c19b97acedb13458022fe3463a6340b36525bd35f73c3e1c5bbba11bee507
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113315137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419986b2b50ac6afbec1d4bcd60763591c88ea01f951cdbd879a6834388ef1c5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:30:09 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 00:32:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:32:36 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:32:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:32:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:32:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f235158035b814a0f54c70510be66c2f9aba4a7891a65f134feff888dbdf0631`  
		Last Modified: Sat, 11 May 2019 00:34:03 GMT  
		Size: 110.3 MB (110255922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebee152852040e5c3a6a0ae0983afa975d090295648f81c098e45724adb54c6`  
		Last Modified: Sat, 11 May 2019 00:33:43 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:db56eafbf4d193eaa56da7fb22287889b909041d7349306d23f0b61f11c5ac5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ba6fdfd824127a58e8ce3f486c4650abe6586126b8a5c6fd1e656062e5f7f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:17:16 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 09:19:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:19:27 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:19:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:19:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:19:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ea55de614e97ee77e06e75adbe43b13485f72184f3f40f30fc57e0d52f0178`  
		Last Modified: Sat, 11 May 2019 09:21:30 GMT  
		Size: 106.4 MB (106420543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9fac2e4e94e60df829515fffc31e5a4b5314eb218e71bc60e8ec2dcd8cf28c`  
		Last Modified: Sat, 11 May 2019 09:20:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f5a3183f76aff49fb7a07d7200a1de5b1c7da307b7454bcb21c82131c2c4f1be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108743442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbbce58afc85e5cf479cf04a0158720e0fddd215f5d124c6c348cc912f03d78`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:07:30 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 13:09:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:09:30 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:09:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:09:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:09:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fe10b3b2722a0e27954baec7f999d72e36052fc82577c84774c937a371b80`  
		Last Modified: Sat, 11 May 2019 13:11:26 GMT  
		Size: 106.1 MB (106091444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9791d50a7b8a1e7c6ea7b29d7df2b13b218294bc2376862bc667031bed65496d`  
		Last Modified: Sat, 11 May 2019 13:10:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:eb0893ad6ec0fb37ea703472a8a789b4999efb62547181fe4751a23316209d66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107228294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a511cc97635e8f52d9adfc398b7804fc66e3a3535fa58cdd06e69e105db4d6a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:19:01 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 15:23:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:23:33 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:23:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:23:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:23:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2338d672a287e79f3bc2c72b819f3803ee410004d3a25d6e49fb70cc9e4cd`  
		Last Modified: Sat, 11 May 2019 15:26:31 GMT  
		Size: 104.2 MB (104236907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0d99062305019f6c809c08fd1c9fd5ab412312507172f2aae23f4b4f7f41c7`  
		Last Modified: Sat, 11 May 2019 15:25:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; 386

```console
$ docker pull golang@sha256:565dd83a3351cb870ba04e39eed5a981e3441b8fda413ad7f96c2e54f114f82c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112509061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed95ebd3824c135a54ef2608fb88ea935c8d2868f28a8702b557cdf698184e28`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 11:02:24 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:04:42 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:04:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b9bd8f37856f0141c12d8188ef2ee48fc77a65c2c5a396179af144f375b541`  
		Last Modified: Sat, 11 May 2019 11:06:10 GMT  
		Size: 109.5 MB (109454254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61738808a4eeb7020f24647716e9c8b84d4f8763602ea2c46c33b22ac50a4164`  
		Last Modified: Sat, 11 May 2019 11:05:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:55b75a75c71669b2283fc0f14434f65192accc2df21fa8448b409ed8f1f73b8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c346f5e84085ba02dec7ddff7f02d5b8723375a6c14f131970761f50b6c98f72`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:20:18 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:22:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:22:36 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:22:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:22:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca9a5bc5b1372fdbbed3b142128aefc8ca5473d14578313f2bf6fdac53c887`  
		Last Modified: Tue, 11 Jun 2019 10:32:22 GMT  
		Size: 104.2 MB (104196801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ee5c15adfa5cbe7095ab2f4b6ea1e64af6922ea9cec0a2522932043838ee4b`  
		Last Modified: Tue, 11 Jun 2019 10:31:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; s390x

```console
$ docker pull golang@sha256:c47016fe4df87002f482cf9cf3ab88241b0036c9383d771bc7393bc7d3285e59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113236052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6661eea2f9f285dd890d11866cea9c357cc475d71b917d6b3fd9a71bc52fd5a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:59:21 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 14:01:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 14:01:17 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 14:01:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 14:01:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 14:01:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d79103895c127c033999dc86647905e4ff849070f5789bbc9397c6a846b363`  
		Last Modified: Sat, 11 May 2019 14:03:16 GMT  
		Size: 110.4 MB (110390043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a497dbb40de9b4bf07f51fb20f6eb39e23481e3503fbd2575fdb0a35aa1a0c31`  
		Last Modified: Sat, 11 May 2019 14:02:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-alpine3.8`

```console
$ docker pull golang@sha256:0af8953fd48741e4258b0b6e6a39774e7a58fed10cbc46e1e69f413b573b47c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11.10-alpine3.8` - linux; amd64

```console
$ docker pull golang@sha256:7bc88cbb9d6653b933815a7ce53ad62ef83f98295192bc61ad3372c1a7a85277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112848819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5a145bbfccdef6fc6ed006bcb164bc160f97a7d52df224df8fb607d7a15c57`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:26:22 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:26:23 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:25:41 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 22:28:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:28:07 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:28:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:28:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:28:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb36876c91c5285538ecb67d7f5ee98b8aa983bc16efff580c25c4f90458a01`  
		Last Modified: Thu, 07 Mar 2019 23:34:10 GMT  
		Size: 309.1 KB (309129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6379ffb8b486f7fcaac284e2d91edaa7b22558985c30876a342a7eb61a5333d9`  
		Last Modified: Thu, 07 Mar 2019 23:34:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ec0c2fcac915e9b22f222c0b90b2e07c997089702d44fed4f3b33a1dd50e2`  
		Last Modified: Tue, 07 May 2019 22:30:57 GMT  
		Size: 110.3 MB (110332233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8f343b431f1fd3fe9399a798d1447872b2ccf0f264fffdd510595cd59345e7`  
		Last Modified: Tue, 07 May 2019 22:30:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.8` - linux; arm variant v6

```console
$ docker pull golang@sha256:d7044787fb4ba5cf8780ad49e28d630758f62e40a479ee2ee8a26acdccf93cd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108930950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd219f33022dbb1c30162a668ac134d9c4a5b68ca75ef3d4be9ec479b4765581`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:01:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:13:01 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:15:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:15:14 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:15:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd66baac6307795e6ad31b0dcc65468ed6172eeae3442fecd34c547443e702c7`  
		Last Modified: Fri, 08 Mar 2019 04:06:09 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bf069daaaf9f994fe4f01f05472bd4fbe54f1f6e7b10cc4906c26ba7710faa`  
		Last Modified: Fri, 08 Mar 2019 04:06:09 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d649d7e7fdaaae37ececfa702d273c739477bc525f63bd28d4bf95d67671f`  
		Last Modified: Tue, 07 May 2019 23:17:47 GMT  
		Size: 106.5 MB (106475280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd1bc28309f3180ffe14e417092947dd6a3edba9c3ffdc740367fdeedeea08d`  
		Last Modified: Tue, 07 May 2019 23:17:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:87192129c5095abf405e5001f4c3b5d0ddeff336eacff8dc1653899b05251ea3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106722936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2da34508e7e720aa568f99e93b03869ac16e538128504890827e751a2c26e92`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:57:16 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 11:57:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:14:34 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:17:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:17:18 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:17:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:17:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:17:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9eb8e797e17db753997b4892011458d989c9b685cee355e121fd17625d0e4c`  
		Last Modified: Fri, 08 Mar 2019 12:04:01 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0170af6e7bc5db4105674275f40b4b24bf61c19a5c36550b981be9b848df9ac5`  
		Last Modified: Fri, 08 Mar 2019 12:04:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9623fbe1a1a019741c99a57107676bf78dfadfffc818d593aa51b53aa56deca`  
		Last Modified: Tue, 07 May 2019 23:22:12 GMT  
		Size: 104.3 MB (104314019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c824f83837b9244ba0c7ed026a10c000736d817b1abceb34e5e5bfbe02a7b77`  
		Last Modified: Tue, 07 May 2019 23:21:35 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.8` - linux; 386

```console
$ docker pull golang@sha256:72c762ed47a9d1eadae8f4c88eab1ed3f25f0965d1ea6aba761c73a8e5085e24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112109615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243f6944fc11c3f4b5e0334df53a94778085e00fcab62a8317fed09012c04cc0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:46:44 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:46:45 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:12:49 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:15:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:15:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:15:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e34aa30710d99927507d4e43b67177cf7e9408f90710f1d5f6fa941c88626a2`  
		Last Modified: Fri, 08 Mar 2019 04:51:46 GMT  
		Size: 309.2 KB (309209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e618130b03e7463e3b537701bfc4ead22ca3f7cddd49102ac4cee3c46940356`  
		Last Modified: Fri, 08 Mar 2019 04:51:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ead299c389b06902f2b7d95bb3bb1fe6e08352cdd9ee39dc97f72b058990e43`  
		Last Modified: Tue, 07 May 2019 23:17:46 GMT  
		Size: 109.5 MB (109528096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cc6c451c33d4df6d3db6447dc5b52604c0577e80a45ce5180efcaa812345a`  
		Last Modified: Tue, 07 May 2019 23:17:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.8` - linux; ppc64le

```console
$ docker pull golang@sha256:a4d868834475771cf78e736222d584f766e11ae83f25bde7881e037d5265d2d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106767964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0ab269a60b78e8959e4b892bfa4fb61db4533677faf12e4f598c21085dd13`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Tue, 11 Jun 2019 10:23:22 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Jun 2019 10:23:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:23:43 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:25:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:25:59 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:26:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:26:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:26:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396ea21e48d611bac815352b135d40fa4f7fc6d24cc6f621e5eed0beaa79a2ce`  
		Last Modified: Tue, 11 Jun 2019 10:32:45 GMT  
		Size: 303.8 KB (303846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaa63a932e7a7c756783e8e9c9b8fae74277e5fab5e50a3698ea0f5db54cc4d`  
		Last Modified: Tue, 11 Jun 2019 10:32:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676f8fb973c8a045feb92bc5bcd56e361f39250a1a190208a8e70ec98eacd014`  
		Last Modified: Tue, 11 Jun 2019 10:33:34 GMT  
		Size: 104.3 MB (104268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fe0465beb23d63562fc315d3598c919a6733b469ab5ff10f259a94dc97b290`  
		Last Modified: Tue, 11 Jun 2019 10:32:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.8` - linux; s390x

```console
$ docker pull golang@sha256:b2c5f5a74b02f260aa92d0c62c13b37eb234e3f22d9420cc643162019c7df668
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113087617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eace40289512dfb72ada9c5fec5407171442a8556aa9cc60843afb4a5148be3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:03 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:16:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:16:34 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:20:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:20:31 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:20:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:20:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:20:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257298cf9264c0a14fdc9d6cd86031b7f6ee38de7cbd79452fa0a4833fdfd546`  
		Last Modified: Fri, 08 Mar 2019 04:19:43 GMT  
		Size: 309.6 KB (309589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb37945050b7080ebcc659888525c48a65aaad86e053776323fe4984cd9976b`  
		Last Modified: Fri, 08 Mar 2019 04:19:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eab543fd07f60c6c7d3d96f7374d4f89dccaef980650c95965d6ebd5f155a3`  
		Last Modified: Tue, 07 May 2019 23:25:43 GMT  
		Size: 110.5 MB (110470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13f4b120914dde7eef8602d3e7227dde9db1a9c438fa3c53ec4ae73b2059ce`  
		Last Modified: Tue, 07 May 2019 23:25:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-alpine3.9`

```console
$ docker pull golang@sha256:9e819eaa759d6ba6f792d358d0d583970c45b84203a89786edb00357c91ce7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11.10-alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:490c19b97acedb13458022fe3463a6340b36525bd35f73c3e1c5bbba11bee507
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113315137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419986b2b50ac6afbec1d4bcd60763591c88ea01f951cdbd879a6834388ef1c5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:30:09 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 00:32:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:32:36 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:32:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:32:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:32:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f235158035b814a0f54c70510be66c2f9aba4a7891a65f134feff888dbdf0631`  
		Last Modified: Sat, 11 May 2019 00:34:03 GMT  
		Size: 110.3 MB (110255922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebee152852040e5c3a6a0ae0983afa975d090295648f81c098e45724adb54c6`  
		Last Modified: Sat, 11 May 2019 00:33:43 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:db56eafbf4d193eaa56da7fb22287889b909041d7349306d23f0b61f11c5ac5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ba6fdfd824127a58e8ce3f486c4650abe6586126b8a5c6fd1e656062e5f7f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:17:16 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 09:19:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:19:27 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:19:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:19:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:19:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ea55de614e97ee77e06e75adbe43b13485f72184f3f40f30fc57e0d52f0178`  
		Last Modified: Sat, 11 May 2019 09:21:30 GMT  
		Size: 106.4 MB (106420543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9fac2e4e94e60df829515fffc31e5a4b5314eb218e71bc60e8ec2dcd8cf28c`  
		Last Modified: Sat, 11 May 2019 09:20:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:f5a3183f76aff49fb7a07d7200a1de5b1c7da307b7454bcb21c82131c2c4f1be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108743442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbbce58afc85e5cf479cf04a0158720e0fddd215f5d124c6c348cc912f03d78`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:07:30 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 13:09:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:09:30 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:09:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:09:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:09:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fe10b3b2722a0e27954baec7f999d72e36052fc82577c84774c937a371b80`  
		Last Modified: Sat, 11 May 2019 13:11:26 GMT  
		Size: 106.1 MB (106091444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9791d50a7b8a1e7c6ea7b29d7df2b13b218294bc2376862bc667031bed65496d`  
		Last Modified: Sat, 11 May 2019 13:10:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:eb0893ad6ec0fb37ea703472a8a789b4999efb62547181fe4751a23316209d66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107228294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a511cc97635e8f52d9adfc398b7804fc66e3a3535fa58cdd06e69e105db4d6a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:19:01 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 15:23:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:23:33 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:23:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:23:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:23:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2338d672a287e79f3bc2c72b819f3803ee410004d3a25d6e49fb70cc9e4cd`  
		Last Modified: Sat, 11 May 2019 15:26:31 GMT  
		Size: 104.2 MB (104236907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0d99062305019f6c809c08fd1c9fd5ab412312507172f2aae23f4b4f7f41c7`  
		Last Modified: Sat, 11 May 2019 15:25:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:565dd83a3351cb870ba04e39eed5a981e3441b8fda413ad7f96c2e54f114f82c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112509061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed95ebd3824c135a54ef2608fb88ea935c8d2868f28a8702b557cdf698184e28`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 11:02:24 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:04:42 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:04:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b9bd8f37856f0141c12d8188ef2ee48fc77a65c2c5a396179af144f375b541`  
		Last Modified: Sat, 11 May 2019 11:06:10 GMT  
		Size: 109.5 MB (109454254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61738808a4eeb7020f24647716e9c8b84d4f8763602ea2c46c33b22ac50a4164`  
		Last Modified: Sat, 11 May 2019 11:05:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:55b75a75c71669b2283fc0f14434f65192accc2df21fa8448b409ed8f1f73b8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c346f5e84085ba02dec7ddff7f02d5b8723375a6c14f131970761f50b6c98f72`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:20:18 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:22:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:22:36 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:22:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:22:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca9a5bc5b1372fdbbed3b142128aefc8ca5473d14578313f2bf6fdac53c887`  
		Last Modified: Tue, 11 Jun 2019 10:32:22 GMT  
		Size: 104.2 MB (104196801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ee5c15adfa5cbe7095ab2f4b6ea1e64af6922ea9cec0a2522932043838ee4b`  
		Last Modified: Tue, 11 Jun 2019 10:31:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:c47016fe4df87002f482cf9cf3ab88241b0036c9383d771bc7393bc7d3285e59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113236052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6661eea2f9f285dd890d11866cea9c357cc475d71b917d6b3fd9a71bc52fd5a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:59:21 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 14:01:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 14:01:17 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 14:01:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 14:01:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 14:01:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d79103895c127c033999dc86647905e4ff849070f5789bbc9397c6a846b363`  
		Last Modified: Sat, 11 May 2019 14:03:16 GMT  
		Size: 110.4 MB (110390043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a497dbb40de9b4bf07f51fb20f6eb39e23481e3503fbd2575fdb0a35aa1a0c31`  
		Last Modified: Sat, 11 May 2019 14:02:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-stretch`

```console
$ docker pull golang@sha256:8b12a0e3015e236d831fdd33ef62bf88126edf910eb87a589f5d7e67e1bc74fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11.10-stretch` - linux; amd64

```console
$ docker pull golang@sha256:e0ac8642c1eb5bd5855657f7e52e169ed3b084f5595be489a2793df6c594c84d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289272459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844ced21382260d91f7c1aab6e14814b8a013b4a7a3fcd92e11c03048ac02cc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:25 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 09:50:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25531c95a463893f8c24174d86300dbe633af0a4883268b6f7993ecb7957ba1f`  
		Last Modified: Tue, 11 Jun 2019 09:51:58 GMT  
		Size: 121.1 MB (121073378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8de6e7d87f406c8a4b826071f4923b08f9fbd2cd45c6c173301498cb143ff`  
		Last Modified: Tue, 11 Jun 2019 09:51:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:88f1fbff0b579ec0e5236c7e8a2e65e4d80dfb89da6b441486825714249e38b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248919480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de216322813d37977ac353626431a29805220903dda442639bafdd30c5853cba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:39 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 16:14:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:59 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:15:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:15:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429bf5ed694e498da4edd908f3c7b514e8e6466baff0df692a08eae948bfe20d`  
		Last Modified: Wed, 08 May 2019 16:16:49 GMT  
		Size: 101.0 MB (101043183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f3bddc5eb1e9142198b6f42fcbc2db34668f81bb7bf440b79ccebaa6f002c6`  
		Last Modified: Wed, 08 May 2019 16:16:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdac8243f3c1e4878c12062b622ca1134a62185d58533b2b70c75172ca0e2c72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc78cb672d915db6f1ff2ebf0c203b31224f116d2c0130eb9c27270491cf40e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:16:25 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 23:16:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:48 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65587d750f2d73893eec51687a626db089614acf38a05cdc75b07141295848`  
		Last Modified: Wed, 08 May 2019 23:19:18 GMT  
		Size: 98.9 MB (98916483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1383ed0aa80f8c9d977e8147026421b7dc3d05a9cc1661e2526e7a1eeed0196`  
		Last Modified: Wed, 08 May 2019 23:18:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; 386

```console
$ docker pull golang@sha256:2cea40bcd38b5337aa4a225ccd93e61d79882f6085fa488e149f2aa5381b8104
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279294057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4aaee163a3b4bed1b9e7a84cb8662766d45e355d8a5271601d923e6b01655ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:35:30 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 14:35:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:49 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c569d5624b2b58fe618a2e403938463e2edd065a9fefd81f4539dcc9aeb5c4de`  
		Last Modified: Tue, 11 Jun 2019 14:37:54 GMT  
		Size: 104.1 MB (104092831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47dde6164b521dcb5c5a30d60d824e69bdb7c88c41c6771118dcde285257394`  
		Last Modified: Tue, 11 Jun 2019 14:37:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:4894c3ffd0c7199cb54cddadeba42321f6b2d7cac474fe479c1e4e27f65b5b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261802065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8fd88624bb7a606238706ae47e0cc4d4a33bc23c25ca8dd40965885469fec5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:19:00 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:19:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:19:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:19:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:19:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:19:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8a90950e8fa7ffb5c0cceebefe74ef35fc35bb6e6bad561198daedf9d702c`  
		Last Modified: Tue, 11 Jun 2019 10:31:00 GMT  
		Size: 99.0 MB (99002311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a6ffdbdc126c99815c0d10dace52725aee62f937f55087b8bbda5dcf79ae0`  
		Last Modified: Tue, 11 Jun 2019 10:30:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; s390x

```console
$ docker pull golang@sha256:c3201336b78c3ccc0f09347c7369093a68e313853831a2a515a43530ac380642
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256112253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fd7909988c277941780b40db99c36f2546621b0387ae7d33c75efe7622e0ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:51 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 04:08:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:08:02 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:08:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:08:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:08:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157906863f94681c8bfeef5bb92133171ae952cb5e75cba77e511965c06e54f7`  
		Last Modified: Tue, 11 Jun 2019 04:09:32 GMT  
		Size: 99.8 MB (99793441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0adf6b74d21bcb929c45c198b9d4740b0eee39b16a0d7c6121f684415f09660`  
		Last Modified: Tue, 11 Jun 2019 04:09:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore`

```console
$ docker pull golang@sha256:c938191074c145f2498bc33db190fb96c0ba9c093bd4700606bf3e4af7fefe85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.11.10-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:ecc60e865c87553177cc587a3f9427d4f7c823356029c10b91f4f11342c09809
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5883528881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b46c7db1e7c87348f84791793a0edf8c8af84b17c3bfce75c180e82af1dc46`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:04:47 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:10:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:10:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cf8cce0d88339f54a116c36bd35b9eec724323cec90425f5c04a2e4496e59c`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5007e4ff7f8d41e8ba892b8582afb20c3d1f5a0d3c7bee3979629669e7bb4c`  
		Last Modified: Wed, 12 Jun 2019 13:28:39 GMT  
		Size: 138.5 MB (138546950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e12e0d68bfd04c1aa708b0445eb41bc101f7dc3c44d86910bcd52f057903b`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:81120848352b7c93d5884c2736fa243881abba1ffb0e6cbc06ff52378a933a0e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466811458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c8f059e734bd9982ee6f28d1373898d7d0c0b29b8bebb3d2799dfa9037399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:10:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:15:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:15:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08f52cd244974b1a64f3f87f8174089ebf5d68896e68793b26dc258c081dbdb`  
		Last Modified: Wed, 12 Jun 2019 13:28:56 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0c21899f9dae2a37c2e673f793d4fd192cfb1b105dc89b087cb0ac6535b418`  
		Last Modified: Wed, 12 Jun 2019 13:30:38 GMT  
		Size: 129.1 MB (129118432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5277bfd0116950d8e6662c1cc724d530a64060f03bbe96a454dce985da6ac3`  
		Last Modified: Wed, 12 Jun 2019 13:28:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:611879883542598c91cb85d935f7fb5e08f963922d17e200d878fc3a71c15034
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2544219942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa1dac860088d7aabb1e401cc64935d254c01a614593a3a1d314853ea66f40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:15:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:20:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:20:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0f2ebde484c64a98c8ff970c787a8f9845a68543b719fe6babb78866f636`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c0e182a52a01c0811e6304ac29daef674bf55c8d925c8d3e68e020a5cd474`  
		Last Modified: Wed, 12 Jun 2019 13:32:08 GMT  
		Size: 129.1 MB (129079941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76986629cc0ab12742760485c1af37070410e45a6ed58baede2cb521ab7610b`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore-1803`

```console
$ docker pull golang@sha256:83c2729a68f0e8308709a921970e04e43d4a16b7c1f70e4d1e6623921f9f61ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:1.11.10-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:81120848352b7c93d5884c2736fa243881abba1ffb0e6cbc06ff52378a933a0e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466811458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c8f059e734bd9982ee6f28d1373898d7d0c0b29b8bebb3d2799dfa9037399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:10:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:15:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:15:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08f52cd244974b1a64f3f87f8174089ebf5d68896e68793b26dc258c081dbdb`  
		Last Modified: Wed, 12 Jun 2019 13:28:56 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0c21899f9dae2a37c2e673f793d4fd192cfb1b105dc89b087cb0ac6535b418`  
		Last Modified: Wed, 12 Jun 2019 13:30:38 GMT  
		Size: 129.1 MB (129118432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5277bfd0116950d8e6662c1cc724d530a64060f03bbe96a454dce985da6ac3`  
		Last Modified: Wed, 12 Jun 2019 13:28:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore-1809`

```console
$ docker pull golang@sha256:2bba71095308d683135e44037e07af0d5a7f13b3c11c6d3b81926958f223a634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:1.11.10-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:611879883542598c91cb85d935f7fb5e08f963922d17e200d878fc3a71c15034
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2544219942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa1dac860088d7aabb1e401cc64935d254c01a614593a3a1d314853ea66f40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:15:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:20:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:20:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0f2ebde484c64a98c8ff970c787a8f9845a68543b719fe6babb78866f636`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c0e182a52a01c0811e6304ac29daef674bf55c8d925c8d3e68e020a5cd474`  
		Last Modified: Wed, 12 Jun 2019 13:32:08 GMT  
		Size: 129.1 MB (129079941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76986629cc0ab12742760485c1af37070410e45a6ed58baede2cb521ab7610b`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:160acd7a8ec2a7b225c33c068687949828157f53cb14a0f34b6eca851572c4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:1.11.10-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:ecc60e865c87553177cc587a3f9427d4f7c823356029c10b91f4f11342c09809
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5883528881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b46c7db1e7c87348f84791793a0edf8c8af84b17c3bfce75c180e82af1dc46`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:04:47 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:10:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:10:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cf8cce0d88339f54a116c36bd35b9eec724323cec90425f5c04a2e4496e59c`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5007e4ff7f8d41e8ba892b8582afb20c3d1f5a0d3c7bee3979629669e7bb4c`  
		Last Modified: Wed, 12 Jun 2019 13:28:39 GMT  
		Size: 138.5 MB (138546950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e12e0d68bfd04c1aa708b0445eb41bc101f7dc3c44d86910bcd52f057903b`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-alpine`

```console
$ docker pull golang@sha256:9e819eaa759d6ba6f792d358d0d583970c45b84203a89786edb00357c91ce7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11-alpine` - linux; amd64

```console
$ docker pull golang@sha256:490c19b97acedb13458022fe3463a6340b36525bd35f73c3e1c5bbba11bee507
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113315137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419986b2b50ac6afbec1d4bcd60763591c88ea01f951cdbd879a6834388ef1c5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:30:09 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 00:32:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:32:36 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:32:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:32:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:32:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f235158035b814a0f54c70510be66c2f9aba4a7891a65f134feff888dbdf0631`  
		Last Modified: Sat, 11 May 2019 00:34:03 GMT  
		Size: 110.3 MB (110255922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebee152852040e5c3a6a0ae0983afa975d090295648f81c098e45724adb54c6`  
		Last Modified: Sat, 11 May 2019 00:33:43 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:db56eafbf4d193eaa56da7fb22287889b909041d7349306d23f0b61f11c5ac5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ba6fdfd824127a58e8ce3f486c4650abe6586126b8a5c6fd1e656062e5f7f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:17:16 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 09:19:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:19:27 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:19:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:19:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:19:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ea55de614e97ee77e06e75adbe43b13485f72184f3f40f30fc57e0d52f0178`  
		Last Modified: Sat, 11 May 2019 09:21:30 GMT  
		Size: 106.4 MB (106420543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9fac2e4e94e60df829515fffc31e5a4b5314eb218e71bc60e8ec2dcd8cf28c`  
		Last Modified: Sat, 11 May 2019 09:20:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f5a3183f76aff49fb7a07d7200a1de5b1c7da307b7454bcb21c82131c2c4f1be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108743442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbbce58afc85e5cf479cf04a0158720e0fddd215f5d124c6c348cc912f03d78`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:07:30 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 13:09:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:09:30 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:09:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:09:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:09:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fe10b3b2722a0e27954baec7f999d72e36052fc82577c84774c937a371b80`  
		Last Modified: Sat, 11 May 2019 13:11:26 GMT  
		Size: 106.1 MB (106091444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9791d50a7b8a1e7c6ea7b29d7df2b13b218294bc2376862bc667031bed65496d`  
		Last Modified: Sat, 11 May 2019 13:10:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:eb0893ad6ec0fb37ea703472a8a789b4999efb62547181fe4751a23316209d66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107228294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a511cc97635e8f52d9adfc398b7804fc66e3a3535fa58cdd06e69e105db4d6a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:19:01 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 15:23:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:23:33 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:23:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:23:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:23:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2338d672a287e79f3bc2c72b819f3803ee410004d3a25d6e49fb70cc9e4cd`  
		Last Modified: Sat, 11 May 2019 15:26:31 GMT  
		Size: 104.2 MB (104236907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0d99062305019f6c809c08fd1c9fd5ab412312507172f2aae23f4b4f7f41c7`  
		Last Modified: Sat, 11 May 2019 15:25:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; 386

```console
$ docker pull golang@sha256:565dd83a3351cb870ba04e39eed5a981e3441b8fda413ad7f96c2e54f114f82c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112509061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed95ebd3824c135a54ef2608fb88ea935c8d2868f28a8702b557cdf698184e28`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 11:02:24 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:04:42 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:04:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b9bd8f37856f0141c12d8188ef2ee48fc77a65c2c5a396179af144f375b541`  
		Last Modified: Sat, 11 May 2019 11:06:10 GMT  
		Size: 109.5 MB (109454254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61738808a4eeb7020f24647716e9c8b84d4f8763602ea2c46c33b22ac50a4164`  
		Last Modified: Sat, 11 May 2019 11:05:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:55b75a75c71669b2283fc0f14434f65192accc2df21fa8448b409ed8f1f73b8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c346f5e84085ba02dec7ddff7f02d5b8723375a6c14f131970761f50b6c98f72`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:20:18 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:22:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:22:36 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:22:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:22:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca9a5bc5b1372fdbbed3b142128aefc8ca5473d14578313f2bf6fdac53c887`  
		Last Modified: Tue, 11 Jun 2019 10:32:22 GMT  
		Size: 104.2 MB (104196801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ee5c15adfa5cbe7095ab2f4b6ea1e64af6922ea9cec0a2522932043838ee4b`  
		Last Modified: Tue, 11 Jun 2019 10:31:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; s390x

```console
$ docker pull golang@sha256:c47016fe4df87002f482cf9cf3ab88241b0036c9383d771bc7393bc7d3285e59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113236052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6661eea2f9f285dd890d11866cea9c357cc475d71b917d6b3fd9a71bc52fd5a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:59:21 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 14:01:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 14:01:17 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 14:01:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 14:01:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 14:01:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d79103895c127c033999dc86647905e4ff849070f5789bbc9397c6a846b363`  
		Last Modified: Sat, 11 May 2019 14:03:16 GMT  
		Size: 110.4 MB (110390043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a497dbb40de9b4bf07f51fb20f6eb39e23481e3503fbd2575fdb0a35aa1a0c31`  
		Last Modified: Sat, 11 May 2019 14:02:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-alpine3.8`

```console
$ docker pull golang@sha256:0af8953fd48741e4258b0b6e6a39774e7a58fed10cbc46e1e69f413b573b47c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11-alpine3.8` - linux; amd64

```console
$ docker pull golang@sha256:7bc88cbb9d6653b933815a7ce53ad62ef83f98295192bc61ad3372c1a7a85277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112848819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5a145bbfccdef6fc6ed006bcb164bc160f97a7d52df224df8fb607d7a15c57`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:26:22 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:26:23 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:25:41 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 22:28:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:28:07 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:28:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:28:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:28:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb36876c91c5285538ecb67d7f5ee98b8aa983bc16efff580c25c4f90458a01`  
		Last Modified: Thu, 07 Mar 2019 23:34:10 GMT  
		Size: 309.1 KB (309129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6379ffb8b486f7fcaac284e2d91edaa7b22558985c30876a342a7eb61a5333d9`  
		Last Modified: Thu, 07 Mar 2019 23:34:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ec0c2fcac915e9b22f222c0b90b2e07c997089702d44fed4f3b33a1dd50e2`  
		Last Modified: Tue, 07 May 2019 22:30:57 GMT  
		Size: 110.3 MB (110332233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8f343b431f1fd3fe9399a798d1447872b2ccf0f264fffdd510595cd59345e7`  
		Last Modified: Tue, 07 May 2019 22:30:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.8` - linux; arm variant v6

```console
$ docker pull golang@sha256:d7044787fb4ba5cf8780ad49e28d630758f62e40a479ee2ee8a26acdccf93cd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108930950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd219f33022dbb1c30162a668ac134d9c4a5b68ca75ef3d4be9ec479b4765581`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:01:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:13:01 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:15:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:15:14 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:15:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd66baac6307795e6ad31b0dcc65468ed6172eeae3442fecd34c547443e702c7`  
		Last Modified: Fri, 08 Mar 2019 04:06:09 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bf069daaaf9f994fe4f01f05472bd4fbe54f1f6e7b10cc4906c26ba7710faa`  
		Last Modified: Fri, 08 Mar 2019 04:06:09 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4d649d7e7fdaaae37ececfa702d273c739477bc525f63bd28d4bf95d67671f`  
		Last Modified: Tue, 07 May 2019 23:17:47 GMT  
		Size: 106.5 MB (106475280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd1bc28309f3180ffe14e417092947dd6a3edba9c3ffdc740367fdeedeea08d`  
		Last Modified: Tue, 07 May 2019 23:17:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:87192129c5095abf405e5001f4c3b5d0ddeff336eacff8dc1653899b05251ea3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106722936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2da34508e7e720aa568f99e93b03869ac16e538128504890827e751a2c26e92`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 11:57:16 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 11:57:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:14:34 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:17:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:17:18 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:17:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:17:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:17:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9eb8e797e17db753997b4892011458d989c9b685cee355e121fd17625d0e4c`  
		Last Modified: Fri, 08 Mar 2019 12:04:01 GMT  
		Size: 308.7 KB (308678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0170af6e7bc5db4105674275f40b4b24bf61c19a5c36550b981be9b848df9ac5`  
		Last Modified: Fri, 08 Mar 2019 12:04:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9623fbe1a1a019741c99a57107676bf78dfadfffc818d593aa51b53aa56deca`  
		Last Modified: Tue, 07 May 2019 23:22:12 GMT  
		Size: 104.3 MB (104314019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c824f83837b9244ba0c7ed026a10c000736d817b1abceb34e5e5bfbe02a7b77`  
		Last Modified: Tue, 07 May 2019 23:21:35 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.8` - linux; 386

```console
$ docker pull golang@sha256:72c762ed47a9d1eadae8f4c88eab1ed3f25f0965d1ea6aba761c73a8e5085e24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112109615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243f6944fc11c3f4b5e0334df53a94778085e00fcab62a8317fed09012c04cc0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:46:44 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:46:45 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:12:49 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:15:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:15:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:15:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e34aa30710d99927507d4e43b67177cf7e9408f90710f1d5f6fa941c88626a2`  
		Last Modified: Fri, 08 Mar 2019 04:51:46 GMT  
		Size: 309.2 KB (309209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e618130b03e7463e3b537701bfc4ead22ca3f7cddd49102ac4cee3c46940356`  
		Last Modified: Fri, 08 Mar 2019 04:51:46 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ead299c389b06902f2b7d95bb3bb1fe6e08352cdd9ee39dc97f72b058990e43`  
		Last Modified: Tue, 07 May 2019 23:17:46 GMT  
		Size: 109.5 MB (109528096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3cc6c451c33d4df6d3db6447dc5b52604c0577e80a45ce5180efcaa812345a`  
		Last Modified: Tue, 07 May 2019 23:17:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.8` - linux; ppc64le

```console
$ docker pull golang@sha256:a4d868834475771cf78e736222d584f766e11ae83f25bde7881e037d5265d2d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106767964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0ab269a60b78e8959e4b892bfa4fb61db4533677faf12e4f598c21085dd13`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Tue, 11 Jun 2019 10:23:22 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Jun 2019 10:23:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:23:43 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:25:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:25:59 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:26:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:26:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:26:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396ea21e48d611bac815352b135d40fa4f7fc6d24cc6f621e5eed0beaa79a2ce`  
		Last Modified: Tue, 11 Jun 2019 10:32:45 GMT  
		Size: 303.8 KB (303846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaa63a932e7a7c756783e8e9c9b8fae74277e5fab5e50a3698ea0f5db54cc4d`  
		Last Modified: Tue, 11 Jun 2019 10:32:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676f8fb973c8a045feb92bc5bcd56e361f39250a1a190208a8e70ec98eacd014`  
		Last Modified: Tue, 11 Jun 2019 10:33:34 GMT  
		Size: 104.3 MB (104268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fe0465beb23d63562fc315d3598c919a6733b469ab5ff10f259a94dc97b290`  
		Last Modified: Tue, 11 Jun 2019 10:32:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.8` - linux; s390x

```console
$ docker pull golang@sha256:b2c5f5a74b02f260aa92d0c62c13b37eb234e3f22d9420cc643162019c7df668
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113087617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eace40289512dfb72ada9c5fec5407171442a8556aa9cc60843afb4a5148be3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:03 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:16:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:16:34 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:20:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:20:31 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:20:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:20:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:20:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257298cf9264c0a14fdc9d6cd86031b7f6ee38de7cbd79452fa0a4833fdfd546`  
		Last Modified: Fri, 08 Mar 2019 04:19:43 GMT  
		Size: 309.6 KB (309589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb37945050b7080ebcc659888525c48a65aaad86e053776323fe4984cd9976b`  
		Last Modified: Fri, 08 Mar 2019 04:19:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eab543fd07f60c6c7d3d96f7374d4f89dccaef980650c95965d6ebd5f155a3`  
		Last Modified: Tue, 07 May 2019 23:25:43 GMT  
		Size: 110.5 MB (110470078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13f4b120914dde7eef8602d3e7227dde9db1a9c438fa3c53ec4ae73b2059ce`  
		Last Modified: Tue, 07 May 2019 23:25:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-alpine3.9`

```console
$ docker pull golang@sha256:9e819eaa759d6ba6f792d358d0d583970c45b84203a89786edb00357c91ce7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11-alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:490c19b97acedb13458022fe3463a6340b36525bd35f73c3e1c5bbba11bee507
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113315137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419986b2b50ac6afbec1d4bcd60763591c88ea01f951cdbd879a6834388ef1c5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:30:09 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 00:32:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:32:36 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:32:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:32:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:32:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f235158035b814a0f54c70510be66c2f9aba4a7891a65f134feff888dbdf0631`  
		Last Modified: Sat, 11 May 2019 00:34:03 GMT  
		Size: 110.3 MB (110255922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebee152852040e5c3a6a0ae0983afa975d090295648f81c098e45724adb54c6`  
		Last Modified: Sat, 11 May 2019 00:33:43 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:db56eafbf4d193eaa56da7fb22287889b909041d7349306d23f0b61f11c5ac5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ba6fdfd824127a58e8ce3f486c4650abe6586126b8a5c6fd1e656062e5f7f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:17:16 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 09:19:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:19:27 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:19:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:19:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:19:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ea55de614e97ee77e06e75adbe43b13485f72184f3f40f30fc57e0d52f0178`  
		Last Modified: Sat, 11 May 2019 09:21:30 GMT  
		Size: 106.4 MB (106420543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9fac2e4e94e60df829515fffc31e5a4b5314eb218e71bc60e8ec2dcd8cf28c`  
		Last Modified: Sat, 11 May 2019 09:20:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:f5a3183f76aff49fb7a07d7200a1de5b1c7da307b7454bcb21c82131c2c4f1be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108743442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbbce58afc85e5cf479cf04a0158720e0fddd215f5d124c6c348cc912f03d78`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:07:30 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 13:09:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:09:30 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:09:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:09:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:09:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16fe10b3b2722a0e27954baec7f999d72e36052fc82577c84774c937a371b80`  
		Last Modified: Sat, 11 May 2019 13:11:26 GMT  
		Size: 106.1 MB (106091444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9791d50a7b8a1e7c6ea7b29d7df2b13b218294bc2376862bc667031bed65496d`  
		Last Modified: Sat, 11 May 2019 13:10:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:eb0893ad6ec0fb37ea703472a8a789b4999efb62547181fe4751a23316209d66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107228294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a511cc97635e8f52d9adfc398b7804fc66e3a3535fa58cdd06e69e105db4d6a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:19:01 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 15:23:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:23:33 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:23:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:23:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:23:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a2338d672a287e79f3bc2c72b819f3803ee410004d3a25d6e49fb70cc9e4cd`  
		Last Modified: Sat, 11 May 2019 15:26:31 GMT  
		Size: 104.2 MB (104236907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0d99062305019f6c809c08fd1c9fd5ab412312507172f2aae23f4b4f7f41c7`  
		Last Modified: Sat, 11 May 2019 15:25:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:565dd83a3351cb870ba04e39eed5a981e3441b8fda413ad7f96c2e54f114f82c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112509061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed95ebd3824c135a54ef2608fb88ea935c8d2868f28a8702b557cdf698184e28`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 11:02:24 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:04:42 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:04:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:04:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:04:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b9bd8f37856f0141c12d8188ef2ee48fc77a65c2c5a396179af144f375b541`  
		Last Modified: Sat, 11 May 2019 11:06:10 GMT  
		Size: 109.5 MB (109454254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61738808a4eeb7020f24647716e9c8b84d4f8763602ea2c46c33b22ac50a4164`  
		Last Modified: Sat, 11 May 2019 11:05:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:55b75a75c71669b2283fc0f14434f65192accc2df21fa8448b409ed8f1f73b8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c346f5e84085ba02dec7ddff7f02d5b8723375a6c14f131970761f50b6c98f72`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:20:18 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:22:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:22:36 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:22:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:22:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca9a5bc5b1372fdbbed3b142128aefc8ca5473d14578313f2bf6fdac53c887`  
		Last Modified: Tue, 11 Jun 2019 10:32:22 GMT  
		Size: 104.2 MB (104196801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ee5c15adfa5cbe7095ab2f4b6ea1e64af6922ea9cec0a2522932043838ee4b`  
		Last Modified: Tue, 11 Jun 2019 10:31:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:c47016fe4df87002f482cf9cf3ab88241b0036c9383d771bc7393bc7d3285e59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113236052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6661eea2f9f285dd890d11866cea9c357cc475d71b917d6b3fd9a71bc52fd5a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:59:21 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 14:01:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 14:01:17 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 14:01:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 14:01:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 14:01:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d79103895c127c033999dc86647905e4ff849070f5789bbc9397c6a846b363`  
		Last Modified: Sat, 11 May 2019 14:03:16 GMT  
		Size: 110.4 MB (110390043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a497dbb40de9b4bf07f51fb20f6eb39e23481e3503fbd2575fdb0a35aa1a0c31`  
		Last Modified: Sat, 11 May 2019 14:02:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-stretch`

```console
$ docker pull golang@sha256:8b12a0e3015e236d831fdd33ef62bf88126edf910eb87a589f5d7e67e1bc74fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.11-stretch` - linux; amd64

```console
$ docker pull golang@sha256:e0ac8642c1eb5bd5855657f7e52e169ed3b084f5595be489a2793df6c594c84d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289272459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844ced21382260d91f7c1aab6e14814b8a013b4a7a3fcd92e11c03048ac02cc3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:25 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 09:50:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25531c95a463893f8c24174d86300dbe633af0a4883268b6f7993ecb7957ba1f`  
		Last Modified: Tue, 11 Jun 2019 09:51:58 GMT  
		Size: 121.1 MB (121073378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb8de6e7d87f406c8a4b826071f4923b08f9fbd2cd45c6c173301498cb143ff`  
		Last Modified: Tue, 11 Jun 2019 09:51:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:88f1fbff0b579ec0e5236c7e8a2e65e4d80dfb89da6b441486825714249e38b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248919480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de216322813d37977ac353626431a29805220903dda442639bafdd30c5853cba`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:39 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 16:14:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:59 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:15:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:15:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429bf5ed694e498da4edd908f3c7b514e8e6466baff0df692a08eae948bfe20d`  
		Last Modified: Wed, 08 May 2019 16:16:49 GMT  
		Size: 101.0 MB (101043183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f3bddc5eb1e9142198b6f42fcbc2db34668f81bb7bf440b79ccebaa6f002c6`  
		Last Modified: Wed, 08 May 2019 16:16:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdac8243f3c1e4878c12062b622ca1134a62185d58533b2b70c75172ca0e2c72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc78cb672d915db6f1ff2ebf0c203b31224f116d2c0130eb9c27270491cf40e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:16:25 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 23:16:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:48 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65587d750f2d73893eec51687a626db089614acf38a05cdc75b07141295848`  
		Last Modified: Wed, 08 May 2019 23:19:18 GMT  
		Size: 98.9 MB (98916483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1383ed0aa80f8c9d977e8147026421b7dc3d05a9cc1661e2526e7a1eeed0196`  
		Last Modified: Wed, 08 May 2019 23:18:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; 386

```console
$ docker pull golang@sha256:2cea40bcd38b5337aa4a225ccd93e61d79882f6085fa488e149f2aa5381b8104
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279294057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4aaee163a3b4bed1b9e7a84cb8662766d45e355d8a5271601d923e6b01655ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:35:30 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 14:35:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:49 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c569d5624b2b58fe618a2e403938463e2edd065a9fefd81f4539dcc9aeb5c4de`  
		Last Modified: Tue, 11 Jun 2019 14:37:54 GMT  
		Size: 104.1 MB (104092831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47dde6164b521dcb5c5a30d60d824e69bdb7c88c41c6771118dcde285257394`  
		Last Modified: Tue, 11 Jun 2019 14:37:17 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:4894c3ffd0c7199cb54cddadeba42321f6b2d7cac474fe479c1e4e27f65b5b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261802065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8fd88624bb7a606238706ae47e0cc4d4a33bc23c25ca8dd40965885469fec5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:19:00 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 10:19:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:19:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:19:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:19:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:19:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8a90950e8fa7ffb5c0cceebefe74ef35fc35bb6e6bad561198daedf9d702c`  
		Last Modified: Tue, 11 Jun 2019 10:31:00 GMT  
		Size: 99.0 MB (99002311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776a6ffdbdc126c99815c0d10dace52725aee62f937f55087b8bbda5dcf79ae0`  
		Last Modified: Tue, 11 Jun 2019 10:30:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; s390x

```console
$ docker pull golang@sha256:c3201336b78c3ccc0f09347c7369093a68e313853831a2a515a43530ac380642
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256112253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fd7909988c277941780b40db99c36f2546621b0387ae7d33c75efe7622e0ef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:51 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 11 Jun 2019 04:08:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:08:02 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:08:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:08:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:08:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157906863f94681c8bfeef5bb92133171ae952cb5e75cba77e511965c06e54f7`  
		Last Modified: Tue, 11 Jun 2019 04:09:32 GMT  
		Size: 99.8 MB (99793441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0adf6b74d21bcb929c45c198b9d4740b0eee39b16a0d7c6121f684415f09660`  
		Last Modified: Tue, 11 Jun 2019 04:09:15 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore`

```console
$ docker pull golang@sha256:c938191074c145f2498bc33db190fb96c0ba9c093bd4700606bf3e4af7fefe85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.11-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:ecc60e865c87553177cc587a3f9427d4f7c823356029c10b91f4f11342c09809
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5883528881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b46c7db1e7c87348f84791793a0edf8c8af84b17c3bfce75c180e82af1dc46`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:04:47 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:10:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:10:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cf8cce0d88339f54a116c36bd35b9eec724323cec90425f5c04a2e4496e59c`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5007e4ff7f8d41e8ba892b8582afb20c3d1f5a0d3c7bee3979629669e7bb4c`  
		Last Modified: Wed, 12 Jun 2019 13:28:39 GMT  
		Size: 138.5 MB (138546950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e12e0d68bfd04c1aa708b0445eb41bc101f7dc3c44d86910bcd52f057903b`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:81120848352b7c93d5884c2736fa243881abba1ffb0e6cbc06ff52378a933a0e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466811458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c8f059e734bd9982ee6f28d1373898d7d0c0b29b8bebb3d2799dfa9037399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:10:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:15:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:15:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08f52cd244974b1a64f3f87f8174089ebf5d68896e68793b26dc258c081dbdb`  
		Last Modified: Wed, 12 Jun 2019 13:28:56 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0c21899f9dae2a37c2e673f793d4fd192cfb1b105dc89b087cb0ac6535b418`  
		Last Modified: Wed, 12 Jun 2019 13:30:38 GMT  
		Size: 129.1 MB (129118432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5277bfd0116950d8e6662c1cc724d530a64060f03bbe96a454dce985da6ac3`  
		Last Modified: Wed, 12 Jun 2019 13:28:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:611879883542598c91cb85d935f7fb5e08f963922d17e200d878fc3a71c15034
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2544219942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa1dac860088d7aabb1e401cc64935d254c01a614593a3a1d314853ea66f40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:15:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:20:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:20:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0f2ebde484c64a98c8ff970c787a8f9845a68543b719fe6babb78866f636`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c0e182a52a01c0811e6304ac29daef674bf55c8d925c8d3e68e020a5cd474`  
		Last Modified: Wed, 12 Jun 2019 13:32:08 GMT  
		Size: 129.1 MB (129079941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76986629cc0ab12742760485c1af37070410e45a6ed58baede2cb521ab7610b`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore-1803`

```console
$ docker pull golang@sha256:83c2729a68f0e8308709a921970e04e43d4a16b7c1f70e4d1e6623921f9f61ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:1.11-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:81120848352b7c93d5884c2736fa243881abba1ffb0e6cbc06ff52378a933a0e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2466811458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3c8f059e734bd9982ee6f28d1373898d7d0c0b29b8bebb3d2799dfa9037399`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:10:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:15:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:15:38 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08f52cd244974b1a64f3f87f8174089ebf5d68896e68793b26dc258c081dbdb`  
		Last Modified: Wed, 12 Jun 2019 13:28:56 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0c21899f9dae2a37c2e673f793d4fd192cfb1b105dc89b087cb0ac6535b418`  
		Last Modified: Wed, 12 Jun 2019 13:30:38 GMT  
		Size: 129.1 MB (129118432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5277bfd0116950d8e6662c1cc724d530a64060f03bbe96a454dce985da6ac3`  
		Last Modified: Wed, 12 Jun 2019 13:28:55 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore-1809`

```console
$ docker pull golang@sha256:2bba71095308d683135e44037e07af0d5a7f13b3c11c6d3b81926958f223a634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:1.11-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:611879883542598c91cb85d935f7fb5e08f963922d17e200d878fc3a71c15034
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2544219942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa1dac860088d7aabb1e401cc64935d254c01a614593a3a1d314853ea66f40`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:15:46 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:20:28 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:20:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e0f2ebde484c64a98c8ff970c787a8f9845a68543b719fe6babb78866f636`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c0e182a52a01c0811e6304ac29daef674bf55c8d925c8d3e68e020a5cd474`  
		Last Modified: Wed, 12 Jun 2019 13:32:08 GMT  
		Size: 129.1 MB (129079941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76986629cc0ab12742760485c1af37070410e45a6ed58baede2cb521ab7610b`  
		Last Modified: Wed, 12 Jun 2019 13:30:53 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:160acd7a8ec2a7b225c33c068687949828157f53cb14a0f34b6eca851572c4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:1.11-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:ecc60e865c87553177cc587a3f9427d4f7c823356029c10b91f4f11342c09809
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5883528881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b46c7db1e7c87348f84791793a0edf8c8af84b17c3bfce75c180e82af1dc46`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 13:04:47 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 12 Jun 2019 13:10:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:10:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cf8cce0d88339f54a116c36bd35b9eec724323cec90425f5c04a2e4496e59c`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5007e4ff7f8d41e8ba892b8582afb20c3d1f5a0d3c7bee3979629669e7bb4c`  
		Last Modified: Wed, 12 Jun 2019 13:28:39 GMT  
		Size: 138.5 MB (138546950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e12e0d68bfd04c1aa708b0445eb41bc101f7dc3c44d86910bcd52f057903b`  
		Last Modified: Wed, 12 Jun 2019 13:27:00 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12`

```console
$ docker pull golang@sha256:5bc207d20bd9e97c57dc2ad013f2b02d982cc6e411d48bdc79d90bb601696650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.12` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5`

```console
$ docker pull golang@sha256:5bc207d20bd9e97c57dc2ad013f2b02d982cc6e411d48bdc79d90bb601696650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.12.5` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-alpine`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.12.5-alpine` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-alpine3.9`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.12.5-alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-stretch`

```console
$ docker pull golang@sha256:e057fbea877a2386927ad72b1aaf3cca6199976fc8d8ea804f83f6f6f37acd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.12.5-stretch` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore`

```console
$ docker pull golang@sha256:a658308e3b0ebf02eeed2a34cf50afae73ae3e52b19fc68fb4ab05c0764f1870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.12.5-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore-1803`

```console
$ docker pull golang@sha256:52cc0314b01f6b20edb58f9d4807f88377219dfab5712ac3d138a64908a00a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:1.12.5-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore-1809`

```console
$ docker pull golang@sha256:0761fce82228b9ef43ed3427bcb2dc3e4be2a452ce11889c8c1e6aa15569b8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:1.12.5-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:5e5d51f3ccd0a4354610be60b02dcc27b2d5879e0ff202b475f10cb1fc437725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:1.12.5-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-alpine`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.12-alpine` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-alpine3.9`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.12-alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-stretch`

```console
$ docker pull golang@sha256:e057fbea877a2386927ad72b1aaf3cca6199976fc8d8ea804f83f6f6f37acd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.12-stretch` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore`

```console
$ docker pull golang@sha256:a658308e3b0ebf02eeed2a34cf50afae73ae3e52b19fc68fb4ab05c0764f1870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1.12-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore-1803`

```console
$ docker pull golang@sha256:52cc0314b01f6b20edb58f9d4807f88377219dfab5712ac3d138a64908a00a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:1.12-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore-1809`

```console
$ docker pull golang@sha256:0761fce82228b9ef43ed3427bcb2dc3e4be2a452ce11889c8c1e6aa15569b8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:1.12-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:5e5d51f3ccd0a4354610be60b02dcc27b2d5879e0ff202b475f10cb1fc437725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:1.12-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.9`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:e057fbea877a2386927ad72b1aaf3cca6199976fc8d8ea804f83f6f6f37acd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:a658308e3b0ebf02eeed2a34cf50afae73ae3e52b19fc68fb4ab05c0764f1870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1803`

```console
$ docker pull golang@sha256:52cc0314b01f6b20edb58f9d4807f88377219dfab5712ac3d138a64908a00a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:1-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1809`

```console
$ docker pull golang@sha256:0761fce82228b9ef43ed3427bcb2dc3e4be2a452ce11889c8c1e6aa15569b8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:1-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:5e5d51f3ccd0a4354610be60b02dcc27b2d5879e0ff202b475f10cb1fc437725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.9`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:5bc207d20bd9e97c57dc2ad013f2b02d982cc6e411d48bdc79d90bb601696650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:e057fbea877a2386927ad72b1aaf3cca6199976fc8d8ea804f83f6f6f37acd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:stretch` - linux; amd64

```console
$ docker pull golang@sha256:35e22d07fcf5fee472630b821f655bb1973ded0f64a9a4f7d2db0287179ecb3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296139626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef078f0da9e8ac9aa9f44b9fef9ce52b75c9145f1223233c28cd861b1fb8e0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:50:00 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 09:50:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 09:50:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 09:50:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 09:50:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 09:50:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5b1749350d4b8208c4f8331deb742158dba50b277faa9d3a18e7d3d21b44b`  
		Last Modified: Tue, 11 Jun 2019 09:51:27 GMT  
		Size: 127.9 MB (127940546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca642e59c35603924cb323f2c51a926a6908bf1a9c5d738375a63a6bcfcc180d`  
		Last Modified: Tue, 11 Jun 2019 09:51:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0e24dec0382a38ba75c18134e3a0b7f727f5039cdd4ed980aec74001b7f5a873
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d246b7b8295fdf9eb4b33371118a5126a8d12a6f262a10e23f3706c0dd2a2b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:14:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 16:14:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 16:14:22 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 16:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:14:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 16:14:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98be8c9f1a89c0aeae2fbe50cb29300a4ee2854a8f8a15498672e6a64a2ab20`  
		Last Modified: Wed, 08 May 2019 16:15:43 GMT  
		Size: 46.0 MB (46001929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d7d7615a7a059f74cf68051dd13f0b973b15effbc4e7158103c8c23b93a74`  
		Last Modified: Wed, 08 May 2019 16:15:59 GMT  
		Size: 106.2 MB (106225640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ebb94d9dbfbf2b0d431c4483944dce30981a24e3f1e1ac5098a93619a8e9c`  
		Last Modified: Wed, 08 May 2019 16:15:25 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5729d15f03694232a81da4d2f5d15eb159e165f2e4e6170c810d807e9f17be55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258303616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ad13a583ba3631bef6e211d5868d1b91e5471382294932cba11b686d4b3e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 23:15:43 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 23:16:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 23:16:08 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 23:16:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 23:16:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4a52520a2c55d5ed38e6ad4da9a27712951a7c47a72cfc21e0fb9aeae14119`  
		Last Modified: Wed, 08 May 2019 23:17:50 GMT  
		Size: 49.1 MB (49069964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7290d095c4a0b6bba3a4be2058ceae86ee8b23306a13e8ef09a5f74233a507`  
		Last Modified: Wed, 08 May 2019 23:18:14 GMT  
		Size: 104.3 MB (104256599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ffc2c76a4929cd299ff64f48dad6a4cd403cfcea6f3e55a1c22c86d75d48d`  
		Last Modified: Wed, 08 May 2019 23:17:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:55830b298a796a7cf26ea44c91d96a745f5f04cb9ce23b5425646b323f3af39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284666593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fa672c3d10ee79ba64d074b245bcbd55ff0f3e6bfdf0a9b9c8f3d5cf6cad76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:59 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 14:35:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 14:35:16 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 14:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 14:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 14:35:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f074521e6b34e6344da49ca0775135092aa12d87a57f521b904c938b57865d`  
		Last Modified: Tue, 11 Jun 2019 14:37:07 GMT  
		Size: 109.5 MB (109465367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aec2dfc74f7e896e79da98b9ad05966ad96beb58b9d6c488f754fcc883665b1`  
		Last Modified: Tue, 11 Jun 2019 14:36:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:29c9b0806ca1ca6f6221216a0decdb1b7406204e1c528f461aed2d2c8dab152b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266754420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff7696fbae187464bdf2fdd43584772099a93075dff422b8e0cdda9833f1c66`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:20 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:14:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:14:57 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:15:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:15:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abca790cceb3df71ff742fa605af446984e0cf01e5479492f708a800bb50d63a`  
		Last Modified: Tue, 11 Jun 2019 10:27:41 GMT  
		Size: 104.0 MB (103954666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35d4841e6e1709cafb385248f2dbee39edb637cb6ca49ee65ac735e5d38fb51`  
		Last Modified: Tue, 11 Jun 2019 10:26:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:a1f366990d2739b6b395edbc7c72384599ef2241f26f44248001d03a06ae6975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267327043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d78ab1fd63decd53a11968a9f6c63e77d9096467625e2dd6bcd8821381d7dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 04:07:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 04:07:39 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 04:07:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 04:07:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 04:07:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faa7d052673778b04e241bb1d00fb0e091aa480221e0f0718ef49057ee4bd9d`  
		Last Modified: Tue, 11 Jun 2019 04:09:04 GMT  
		Size: 111.0 MB (111008230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741f90e7ba2c35b793899e67a3080b88ef586ee99ac72668023ce6d895e8a224`  
		Last Modified: Tue, 11 Jun 2019 04:08:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:a658308e3b0ebf02eeed2a34cf50afae73ae3e52b19fc68fb4ab05c0764f1870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `golang:windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:52cc0314b01f6b20edb58f9d4807f88377219dfab5712ac3d138a64908a00a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1809`

```console
$ docker pull golang@sha256:0761fce82228b9ef43ed3427bcb2dc3e4be2a452ce11889c8c1e6aa15569b8b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `golang:windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull golang@sha256:9b06c7d9118bc6752cd31c353793b1a0338d3ae32bf27c775e3eef6c66cfe4f4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2552087450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c1f97591c137644edfb42e55b635d95664d0fb3af1a7dd7196cd5844e05eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:57:48 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:57:49 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:57:50 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:57:51 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:59:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:59:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:59:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:59:32 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 13:04:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:04:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8084e6e79cde19b02b6d656965a6679586f5a137d1d4b19a0c0f910a1cc8f1`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2258ad2576bba89c5c073e7c9367a5bb9f5281ee6dff0806c0a997032877e051`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c860e60ff5242b49374c5bbca9ed23816ee2bab97906deb8953c887f663c1b22`  
		Last Modified: Wed, 12 Jun 2019 13:25:16 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a78ccd9d2058d607e3306cd3e70dacc19acb111cc88ddb6434ad24afee9f323`  
		Last Modified: Wed, 12 Jun 2019 13:25:15 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bb5b24ea72fc9322960cc0a451e6b97d4b7d3790e5941111e6f7041093c9bc`  
		Last Modified: Wed, 12 Jun 2019 13:25:26 GMT  
		Size: 28.8 MB (28768071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5c437aa87355aa133477d3a5711e7ee1534edb09abcef320baddf2154c5cc5`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad53d888c2accf2faa888ae04c5dbf9dad1b2626f286b229a1922688c0feb43`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 295.9 KB (295875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee9a4a341bcfe698d4b6c8e2171b2ce7a6377a41034a2025fc9de046867664b`  
		Last Modified: Wed, 12 Jun 2019 13:25:12 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ca2d1648ad0b08244c89914d49f9ffd0d0e6fc35c6c2294f62999ecba15c5`  
		Last Modified: Wed, 12 Jun 2019 13:26:33 GMT  
		Size: 136.9 MB (136947467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420d1c398c45c3d4e4469cabae9d4d26dd94a0a2d2ed8986576bf3b9639ecc8b`  
		Last Modified: Wed, 12 Jun 2019 13:25:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:5e5d51f3ccd0a4354610be60b02dcc27b2d5879e0ff202b475f10cb1fc437725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:b3b40091ffa3409222393386a5bab1b03f6b239aa3f3c91e8e23b6e697aa0d53
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891384260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1462c223400dee77ea4e12a953d89152bc4df433abedc2dfb505af584d78b45b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:44:23 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:50:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:50:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4804b9c6f2d6a2df2b1f583a0b8d1c7ec719f257f9c3b1581606810f4ac6fb`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b30795f5aae5c1d76f7f3dcd2fc503989f4ac819cd29073d3703717d5d2e7`  
		Last Modified: Wed, 12 Jun 2019 13:22:53 GMT  
		Size: 146.4 MB (146402307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62eb7e53b0c7bcd612d1e7b2ec45d38e20e36469a84ba6b3d33252f25142df7a`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

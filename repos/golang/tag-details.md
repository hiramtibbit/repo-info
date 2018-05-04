<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1`](#golang1)
-	[`golang:1.10`](#golang110)
-	[`golang:1.10.2`](#golang1102)
-	[`golang:1.10.2-alpine`](#golang1102-alpine)
-	[`golang:1.10.2-alpine3.7`](#golang1102-alpine37)
-	[`golang:1.10.2-nanoserver`](#golang1102-nanoserver)
-	[`golang:1.10.2-nanoserver-sac2016`](#golang1102-nanoserver-sac2016)
-	[`golang:1.10.2-stretch`](#golang1102-stretch)
-	[`golang:1.10.2-windowsservercore`](#golang1102-windowsservercore)
-	[`golang:1.10.2-windowsservercore-1709`](#golang1102-windowsservercore-1709)
-	[`golang:1.10.2-windowsservercore-ltsc2016`](#golang1102-windowsservercore-ltsc2016)
-	[`golang:1.10-alpine`](#golang110-alpine)
-	[`golang:1.10-alpine3.7`](#golang110-alpine37)
-	[`golang:1.10-nanoserver`](#golang110-nanoserver)
-	[`golang:1.10-nanoserver-sac2016`](#golang110-nanoserver-sac2016)
-	[`golang:1.10-stretch`](#golang110-stretch)
-	[`golang:1.10-windowsservercore`](#golang110-windowsservercore)
-	[`golang:1.10-windowsservercore-1709`](#golang110-windowsservercore-1709)
-	[`golang:1.10-windowsservercore-ltsc2016`](#golang110-windowsservercore-ltsc2016)
-	[`golang:1.9`](#golang19)
-	[`golang:1.9.6`](#golang196)
-	[`golang:1.9.6-alpine`](#golang196-alpine)
-	[`golang:1.9.6-alpine3.6`](#golang196-alpine36)
-	[`golang:1.9.6-alpine3.7`](#golang196-alpine37)
-	[`golang:1.9.6-nanoserver`](#golang196-nanoserver)
-	[`golang:1.9.6-nanoserver-sac2016`](#golang196-nanoserver-sac2016)
-	[`golang:1.9.6-stretch`](#golang196-stretch)
-	[`golang:1.9.6-windowsservercore`](#golang196-windowsservercore)
-	[`golang:1.9.6-windowsservercore-1709`](#golang196-windowsservercore-1709)
-	[`golang:1.9.6-windowsservercore-ltsc2016`](#golang196-windowsservercore-ltsc2016)
-	[`golang:1.9-alpine`](#golang19-alpine)
-	[`golang:1.9-alpine3.6`](#golang19-alpine36)
-	[`golang:1.9-alpine3.7`](#golang19-alpine37)
-	[`golang:1.9-nanoserver`](#golang19-nanoserver)
-	[`golang:1.9-nanoserver-sac2016`](#golang19-nanoserver-sac2016)
-	[`golang:1.9-stretch`](#golang19-stretch)
-	[`golang:1.9-windowsservercore`](#golang19-windowsservercore)
-	[`golang:1.9-windowsservercore-1709`](#golang19-windowsservercore-1709)
-	[`golang:1.9-windowsservercore-ltsc2016`](#golang19-windowsservercore-ltsc2016)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:1-alpine3.7`](#golang1-alpine37)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:1-nanoserver-sac2016`](#golang1-nanoserver-sac2016)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:1-windowsservercore-1709`](#golang1-windowsservercore-1709)
-	[`golang:1-windowsservercore-ltsc2016`](#golang1-windowsservercore-ltsc2016)
-	[`golang:alpine`](#golangalpine)
-	[`golang:alpine3.7`](#golangalpine37)
-	[`golang:latest`](#golanglatest)
-	[`golang:nanoserver`](#golangnanoserver)
-	[`golang:nanoserver-sac2016`](#golangnanoserver-sac2016)
-	[`golang:stretch`](#golangstretch)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:windowsservercore-1709`](#golangwindowsservercore-1709)
-	[`golang:windowsservercore-ltsc2016`](#golangwindowsservercore-ltsc2016)

## `golang:1`

```console
$ docker pull golang@sha256:6dc28d87587563e5b69d839ce37f8e5a61f2b4101e7e97d6e7aeb2e0117cf501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10`

```console
$ docker pull golang@sha256:6dc28d87587563e5b69d839ce37f8e5a61f2b4101e7e97d6e7aeb2e0117cf501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.10` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2`

```console
$ docker pull golang@sha256:6dc28d87587563e5b69d839ce37f8e5a61f2b4101e7e97d6e7aeb2e0117cf501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.10.2` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-alpine`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.10.2-alpine` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-alpine` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-alpine3.7`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.10.2-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-nanoserver`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10.2-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-nanoserver-sac2016`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10.2-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-stretch`

```console
$ docker pull golang@sha256:ea1f4ed5cf489c4ddf75f31fadd23bfed8fa1717ef70a44ad2813f6319cd58d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.10.2-stretch` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-stretch` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-windowsservercore`

```console
$ docker pull golang@sha256:8f026b39c8d7ba4c3b50b72fe7b548bfc4be5f9c192a47689eaa4b8dbf7215ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.10.2-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.2-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-windowsservercore-1709`

```console
$ docker pull golang@sha256:35d809a6fe87e9e30dbadf762d28d29d8fbebd143299f6cf86d3be5065bba9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.10.2-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:aaa1485601456f5ed6a92bcff8a41aefb51f74844fb01d9714eb6b5ba9865216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10.2-windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-alpine`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.10-alpine` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-alpine3.7`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.10-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver-sac2016`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-stretch`

```console
$ docker pull golang@sha256:ea1f4ed5cf489c4ddf75f31fadd23bfed8fa1717ef70a44ad2813f6319cd58d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.10-stretch` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore`

```console
$ docker pull golang@sha256:8f026b39c8d7ba4c3b50b72fe7b548bfc4be5f9c192a47689eaa4b8dbf7215ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.10-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore-1709`

```console
$ docker pull golang@sha256:35d809a6fe87e9e30dbadf762d28d29d8fbebd143299f6cf86d3be5065bba9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.10-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:aaa1485601456f5ed6a92bcff8a41aefb51f74844fb01d9714eb6b5ba9865216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10-windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:f6232771b513b3eb0a9757dd4dea66e60487353e638d196690153df98f526e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.9` - linux; amd64

```console
$ docker pull golang@sha256:7e4ffa435af5dc88b65f5eeed054818fcc8b7764099a9d67f8c8d411666ddda0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286272198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf264aa4f97ac32adc73dee86a944197c0064bd572c624ce8c035c934c325e24`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 04:20:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:20:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:20:42 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:20:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:20:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:20:55 GMT
WORKDIR /go
# Fri, 04 May 2018 04:20:57 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a85d2cf7973404b6d4a65bbe7de1e91be1f3a85c47e2e5f57dd78b835828f7`  
		Last Modified: Fri, 04 May 2018 05:31:06 GMT  
		Size: 118.3 MB (118278883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90b8067d37137eebaa6fe2bf7c87971d171e8376d9b991f05247c0d51915c65`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2f226b6edfca80e9dcc214ac96d1539e3d0f911028890a2153e06131363b2`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9e8846e53a8d763926946e1f3ace4783c21a599e151ef4cf36f1df1a53859c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256125476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8509a68658064c03d0a1302af866806456689adf7c0bcce27341a26824d3e3a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:43:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:43:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:43:41 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:43:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:43:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:46 GMT
WORKDIR /go
# Fri, 04 May 2018 08:43:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf43e100125c09dc1db01dee386556475b84591ae2f9619c049c2cb402f9a07`  
		Last Modified: Fri, 04 May 2018 08:51:47 GMT  
		Size: 102.3 MB (102274644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc11201422320421a621b4c54b84517364fc6db636120b80bc6edc0e82c20b1c`  
		Last Modified: Fri, 04 May 2018 08:51:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeee85626f03c5ed71346d0dea9a735b12b146eba47c2db3bf942b0ccece1f8`  
		Last Modified: Fri, 04 May 2018 08:51:14 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:382655fff2dc5847f3f44068153467069fe251e1fbbcc47b435ef25cd44c5324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280929038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2d1ff818fcce5ecabd893980890f308518d145e0905eb68ac8f949a7fc9d25`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:42:54 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:43:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:43:11 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:43:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:43:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:43:12 GMT
WORKDIR /go
# Fri, 04 May 2018 10:43:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7956f8ce3989d068ca75058c525f164dfa2898ad8de68d08bdf3569760c66f26`  
		Last Modified: Fri, 04 May 2018 10:53:20 GMT  
		Size: 105.9 MB (105922508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a998eb6b4303146b5a887d0907e6378e6aaf95b287e0cc2fe89618a64f8eea`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eba7743d97305dd2af7d33fb60e85b07b103b4f607c06ccd87beeb38f5559a`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:8f50db6e65b54fbf937af8100e6dbed17dc0de225a6d4af20e0c705138be1761
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5557537858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ff7faa621b2b0245460ecc8cd7c4cf056d6cf6d7d796fa062c7f774dce7b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:34:12 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:39:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:39:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e487a54ba71db255f39a9b447cfd453be57ebf108503c1876039b2a89e1e20e`  
		Last Modified: Fri, 04 May 2018 09:54:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b30323409d580a08e4c759dc1f010cc6c7c4fe6d571e27f7ab96d7d8ed33c`  
		Last Modified: Fri, 04 May 2018 09:55:31 GMT  
		Size: 129.0 MB (128965231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99aa3e0a9e3eead7473b7bc3bc2ff05316390e6841d0f1f8aeb980ec1c42cf`  
		Last Modified: Fri, 04 May 2018 09:54:20 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:c4a4dc2ecb2ddaae15e1897c9a419149dae50034f1bfac3d01fdf066b2debc22
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3193707889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185052936347a9d5d0020a62f78cc709350211d83e5019fabc12e01dcc9e2212`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:39:25 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5841a0ee96e1f4008c1204ae921c0f398399623f2ec0ccc953c2eafec5d11c12`  
		Last Modified: Fri, 04 May 2018 09:55:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8b9152bd671a7459c2293dbd6d8f0ca6bab7aa541855aca355ef8015aebb7a`  
		Last Modified: Fri, 04 May 2018 09:56:53 GMT  
		Size: 124.1 MB (124138783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1266a0c5690f9d97f82497d0efe2b1f9858b3c078bfb924fd781ffac80dca8`  
		Last Modified: Fri, 04 May 2018 09:55:45 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6`

```console
$ docker pull golang@sha256:f6232771b513b3eb0a9757dd4dea66e60487353e638d196690153df98f526e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.9.6` - linux; amd64

```console
$ docker pull golang@sha256:7e4ffa435af5dc88b65f5eeed054818fcc8b7764099a9d67f8c8d411666ddda0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286272198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf264aa4f97ac32adc73dee86a944197c0064bd572c624ce8c035c934c325e24`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 04:20:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:20:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:20:42 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:20:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:20:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:20:55 GMT
WORKDIR /go
# Fri, 04 May 2018 04:20:57 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a85d2cf7973404b6d4a65bbe7de1e91be1f3a85c47e2e5f57dd78b835828f7`  
		Last Modified: Fri, 04 May 2018 05:31:06 GMT  
		Size: 118.3 MB (118278883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90b8067d37137eebaa6fe2bf7c87971d171e8376d9b991f05247c0d51915c65`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2f226b6edfca80e9dcc214ac96d1539e3d0f911028890a2153e06131363b2`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9e8846e53a8d763926946e1f3ace4783c21a599e151ef4cf36f1df1a53859c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256125476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8509a68658064c03d0a1302af866806456689adf7c0bcce27341a26824d3e3a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:43:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:43:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:43:41 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:43:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:43:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:46 GMT
WORKDIR /go
# Fri, 04 May 2018 08:43:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf43e100125c09dc1db01dee386556475b84591ae2f9619c049c2cb402f9a07`  
		Last Modified: Fri, 04 May 2018 08:51:47 GMT  
		Size: 102.3 MB (102274644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc11201422320421a621b4c54b84517364fc6db636120b80bc6edc0e82c20b1c`  
		Last Modified: Fri, 04 May 2018 08:51:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeee85626f03c5ed71346d0dea9a735b12b146eba47c2db3bf942b0ccece1f8`  
		Last Modified: Fri, 04 May 2018 08:51:14 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6` - linux; 386

```console
$ docker pull golang@sha256:382655fff2dc5847f3f44068153467069fe251e1fbbcc47b435ef25cd44c5324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280929038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2d1ff818fcce5ecabd893980890f308518d145e0905eb68ac8f949a7fc9d25`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:42:54 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:43:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:43:11 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:43:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:43:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:43:12 GMT
WORKDIR /go
# Fri, 04 May 2018 10:43:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7956f8ce3989d068ca75058c525f164dfa2898ad8de68d08bdf3569760c66f26`  
		Last Modified: Fri, 04 May 2018 10:53:20 GMT  
		Size: 105.9 MB (105922508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a998eb6b4303146b5a887d0907e6378e6aaf95b287e0cc2fe89618a64f8eea`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eba7743d97305dd2af7d33fb60e85b07b103b4f607c06ccd87beeb38f5559a`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:8f50db6e65b54fbf937af8100e6dbed17dc0de225a6d4af20e0c705138be1761
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5557537858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ff7faa621b2b0245460ecc8cd7c4cf056d6cf6d7d796fa062c7f774dce7b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:34:12 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:39:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:39:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e487a54ba71db255f39a9b447cfd453be57ebf108503c1876039b2a89e1e20e`  
		Last Modified: Fri, 04 May 2018 09:54:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b30323409d580a08e4c759dc1f010cc6c7c4fe6d571e27f7ab96d7d8ed33c`  
		Last Modified: Fri, 04 May 2018 09:55:31 GMT  
		Size: 129.0 MB (128965231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99aa3e0a9e3eead7473b7bc3bc2ff05316390e6841d0f1f8aeb980ec1c42cf`  
		Last Modified: Fri, 04 May 2018 09:54:20 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:c4a4dc2ecb2ddaae15e1897c9a419149dae50034f1bfac3d01fdf066b2debc22
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3193707889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185052936347a9d5d0020a62f78cc709350211d83e5019fabc12e01dcc9e2212`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:39:25 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5841a0ee96e1f4008c1204ae921c0f398399623f2ec0ccc953c2eafec5d11c12`  
		Last Modified: Fri, 04 May 2018 09:55:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8b9152bd671a7459c2293dbd6d8f0ca6bab7aa541855aca355ef8015aebb7a`  
		Last Modified: Fri, 04 May 2018 09:56:53 GMT  
		Size: 124.1 MB (124138783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1266a0c5690f9d97f82497d0efe2b1f9858b3c078bfb924fd781ffac80dca8`  
		Last Modified: Fri, 04 May 2018 09:55:45 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-alpine`

```console
$ docker pull golang@sha256:1988aa198fae0918f5f41c5ae2b4c0fba0cbead3dd5e5b6a833ba109fc3162c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9.6-alpine` - linux; amd64

```console
$ docker pull golang@sha256:e62c47c3636348f33580d70ccaa3b8df7a8fefe56efabf17213b3771439e82dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82634968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499696d18cfe5e756e56c9f7115466e96bfe0df8f4774ae629d2eced15138236`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:04:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 01:04:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:54:27 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:54:28 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 04:55:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:55:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:55:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:55:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:55:48 GMT
WORKDIR /go
# Fri, 04 May 2018 04:55:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f966ecaebdf4698bf3d7a20b5dee5ce88ed176940b9a5385b1c7dd82385f97f0`  
		Last Modified: Wed, 10 Jan 2018 01:25:40 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1ad863697c6dcbba2b83cc247a8a696938ab4da3feae4a6d08b3d07dd3fe80`  
		Last Modified: Wed, 10 Jan 2018 01:25:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65cca5cc6ad1489b874b5be1c00e832e6b486cb375b6b13d0a634249e423c5b`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17475c0615c80f07b03bc33c16f0b5e0a256bf38dd85b9659c60335bca5c99b`  
		Last Modified: Fri, 04 May 2018 05:33:41 GMT  
		Size: 80.3 MB (80289793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d3168177933a586c0860c8e4f743aa549b746813c899d25965050c0f95cf6a`  
		Last Modified: Fri, 04 May 2018 05:33:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d660078289ee2eeba65df71184cf3536d36629b248b6b1e3886b3a944e104f0`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:8061aff704a4edf88009c9f830344684ed7e85cce5eb5332ba6e28895518bb0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80414143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360f06ffbcd9f096a1b0a8566ce758df782f8e87b921bf0d502ad8bfe2895a47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 08:27:29 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 08:27:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:27:36 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:27:37 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:44:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:44:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:44:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:44:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:44:51 GMT
WORKDIR /go
# Fri, 04 May 2018 08:44:53 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb8d85e78ebfc2588f5bb469565e3a9c1c3d49907fe42ea6f576e1816e77f6`  
		Last Modified: Fri, 04 May 2018 08:51:58 GMT  
		Size: 352.2 KB (352155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec00395d0c24e9f2dd06f95131c2780a18520c18821c7704145a65595d3ba0e1`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a212a0f45eaff2960e7234a74fa8eed60698ea3034e7d8df27ad6717236c97b3`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ecc85b9a827a6b7cedd31a1b55c7b43119509f5126f89d50d4fb29c53d6d04`  
		Last Modified: Fri, 04 May 2018 08:54:02 GMT  
		Size: 78.1 MB (78093342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc676daab1d39225dc203137f0b746836f041ff3cc3e06b37a59ccaeba5a9073`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41bd3495f29cd9f4fd01d67c80fb72f9bd79c82c4333438d21312e275cb598`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2f989dfa8d8a7e8b7ce395fe6a5ef6b5dc6ed050391a1afffe42138188ceddc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78752650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8e3d2a794c65c5a56ff9220bb70d80ccb59f891b78d5735cca4908e0e1018`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:46:09 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:46:09 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:47:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:47:47 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:47:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:47:53 GMT
WORKDIR /go
# Fri, 04 May 2018 08:47:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae44a9d929a0f7f774a276b1abeda949212ff63805c2d35fd8e1856cb1e47859`  
		Last Modified: Thu, 26 Oct 2017 05:18:54 GMT  
		Size: 351.5 KB (351492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11fa162bc593505d0e792ade6064701834ba4262cf5fda38fdbe83d0ba13951`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2949bff820c8d2b4c27f89b65315f44434688537bf1349a5f0534ab2b2d47`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce03402be15a7a81b2351f4ec97b465fb703993ca82a2afa23f71c6d13c3b094`  
		Last Modified: Fri, 04 May 2018 08:53:20 GMT  
		Size: 76.5 MB (76483803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163cfb71998d3ebebad986da9200f45ebfc754071b2d84b420d13ef480085cc`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52684d243115a69ea3ac3157c639a7439604276c8411c3767be26278d8a001da`  
		Last Modified: Fri, 04 May 2018 08:52:49 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine` - linux; 386

```console
$ docker pull golang@sha256:6a6c9174a5c0150be07d000f6f8eea4aa9fec6fa3871eb03273104e259d8180c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81363160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc72abb8f987497906d72f3f53904ca932f55a9292869bd2d6e33565e331ac6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:46:46 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:46:47 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:46:47 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:46:47 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 10:48:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:48:20 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:48:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:48:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:48:21 GMT
WORKDIR /go
# Fri, 04 May 2018 10:48:21 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7cc6828e904affbc98d2746967fd66ded924c1e070bcaed1789446230cd930`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 352.1 KB (352117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98e60baac13b7a3dcff4546aa51f0b6ef25013e47c206cd62199d4ce99deb1b`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17420a40b9bdbc13a39f959c8b959e00250da649254870e9ddcdc67949d7a536`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894723ddb8841724b496eee01b59aeddb8b3dd6ecd2727bbd6df42af5e0a5c3`  
		Last Modified: Fri, 04 May 2018 10:54:48 GMT  
		Size: 79.0 MB (78962841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29839e6af0200c83224ce88521b51fe47bbbf3d7ba1c6d6d55a635cc85a9bd7`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd19463bcc14c0414d5a9f3d4b3fd908d0cf1e2c5867e4bce9e097a8f3859017`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-alpine3.6`

```console
$ docker pull golang@sha256:1988aa198fae0918f5f41c5ae2b4c0fba0cbead3dd5e5b6a833ba109fc3162c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9.6-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:e62c47c3636348f33580d70ccaa3b8df7a8fefe56efabf17213b3771439e82dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82634968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499696d18cfe5e756e56c9f7115466e96bfe0df8f4774ae629d2eced15138236`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:04:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 01:04:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:54:27 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:54:28 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 04:55:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:55:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:55:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:55:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:55:48 GMT
WORKDIR /go
# Fri, 04 May 2018 04:55:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f966ecaebdf4698bf3d7a20b5dee5ce88ed176940b9a5385b1c7dd82385f97f0`  
		Last Modified: Wed, 10 Jan 2018 01:25:40 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1ad863697c6dcbba2b83cc247a8a696938ab4da3feae4a6d08b3d07dd3fe80`  
		Last Modified: Wed, 10 Jan 2018 01:25:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65cca5cc6ad1489b874b5be1c00e832e6b486cb375b6b13d0a634249e423c5b`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17475c0615c80f07b03bc33c16f0b5e0a256bf38dd85b9659c60335bca5c99b`  
		Last Modified: Fri, 04 May 2018 05:33:41 GMT  
		Size: 80.3 MB (80289793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d3168177933a586c0860c8e4f743aa549b746813c899d25965050c0f95cf6a`  
		Last Modified: Fri, 04 May 2018 05:33:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d660078289ee2eeba65df71184cf3536d36629b248b6b1e3886b3a944e104f0`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:8061aff704a4edf88009c9f830344684ed7e85cce5eb5332ba6e28895518bb0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80414143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360f06ffbcd9f096a1b0a8566ce758df782f8e87b921bf0d502ad8bfe2895a47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 08:27:29 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 08:27:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:27:36 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:27:37 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:44:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:44:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:44:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:44:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:44:51 GMT
WORKDIR /go
# Fri, 04 May 2018 08:44:53 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb8d85e78ebfc2588f5bb469565e3a9c1c3d49907fe42ea6f576e1816e77f6`  
		Last Modified: Fri, 04 May 2018 08:51:58 GMT  
		Size: 352.2 KB (352155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec00395d0c24e9f2dd06f95131c2780a18520c18821c7704145a65595d3ba0e1`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a212a0f45eaff2960e7234a74fa8eed60698ea3034e7d8df27ad6717236c97b3`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ecc85b9a827a6b7cedd31a1b55c7b43119509f5126f89d50d4fb29c53d6d04`  
		Last Modified: Fri, 04 May 2018 08:54:02 GMT  
		Size: 78.1 MB (78093342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc676daab1d39225dc203137f0b746836f041ff3cc3e06b37a59ccaeba5a9073`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41bd3495f29cd9f4fd01d67c80fb72f9bd79c82c4333438d21312e275cb598`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2f989dfa8d8a7e8b7ce395fe6a5ef6b5dc6ed050391a1afffe42138188ceddc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78752650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8e3d2a794c65c5a56ff9220bb70d80ccb59f891b78d5735cca4908e0e1018`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:46:09 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:46:09 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:47:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:47:47 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:47:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:47:53 GMT
WORKDIR /go
# Fri, 04 May 2018 08:47:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae44a9d929a0f7f774a276b1abeda949212ff63805c2d35fd8e1856cb1e47859`  
		Last Modified: Thu, 26 Oct 2017 05:18:54 GMT  
		Size: 351.5 KB (351492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11fa162bc593505d0e792ade6064701834ba4262cf5fda38fdbe83d0ba13951`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2949bff820c8d2b4c27f89b65315f44434688537bf1349a5f0534ab2b2d47`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce03402be15a7a81b2351f4ec97b465fb703993ca82a2afa23f71c6d13c3b094`  
		Last Modified: Fri, 04 May 2018 08:53:20 GMT  
		Size: 76.5 MB (76483803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163cfb71998d3ebebad986da9200f45ebfc754071b2d84b420d13ef480085cc`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52684d243115a69ea3ac3157c639a7439604276c8411c3767be26278d8a001da`  
		Last Modified: Fri, 04 May 2018 08:52:49 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:6a6c9174a5c0150be07d000f6f8eea4aa9fec6fa3871eb03273104e259d8180c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81363160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc72abb8f987497906d72f3f53904ca932f55a9292869bd2d6e33565e331ac6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:46:46 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:46:47 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:46:47 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:46:47 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 10:48:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:48:20 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:48:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:48:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:48:21 GMT
WORKDIR /go
# Fri, 04 May 2018 10:48:21 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7cc6828e904affbc98d2746967fd66ded924c1e070bcaed1789446230cd930`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 352.1 KB (352117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98e60baac13b7a3dcff4546aa51f0b6ef25013e47c206cd62199d4ce99deb1b`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17420a40b9bdbc13a39f959c8b959e00250da649254870e9ddcdc67949d7a536`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894723ddb8841724b496eee01b59aeddb8b3dd6ecd2727bbd6df42af5e0a5c3`  
		Last Modified: Fri, 04 May 2018 10:54:48 GMT  
		Size: 79.0 MB (78962841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29839e6af0200c83224ce88521b51fe47bbbf3d7ba1c6d6d55a635cc85a9bd7`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd19463bcc14c0414d5a9f3d4b3fd908d0cf1e2c5867e4bce9e097a8f3859017`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-alpine3.7`

```console
$ docker pull golang@sha256:417e5d4f75fcc1d4710389fb7ff4134005fadd952f43a0664f936961abcf1c7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9.6-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:16e5e145a7ae5d659f03e0a533c4c9edc366da9395e87ba45ded2eb5949910b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82661161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3f33e0545448dff5943536422ce9e959cb75f5cb2bb512984452ff15388580`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:30:14 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:30:16 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 04:31:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:40:22 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:40:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:40:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:40:25 GMT
WORKDIR /go
# Fri, 04 May 2018 04:40:25 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16334699edf9d07389b7cc8f4b3cda42318a9a94aeac7fa9fb0b407b87b9e817`  
		Last Modified: Fri, 04 May 2018 05:31:52 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec5e4c7c56b6f752fd0a042a221f4d8333aa5ba7816bda16a829e754726bb64`  
		Last Modified: Fri, 04 May 2018 05:32:22 GMT  
		Size: 80.3 MB (80285179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105a56799b21912b955660c4995440cdf252c0b0c74645791395d3f4ecaebbf1`  
		Last Modified: Fri, 04 May 2018 05:31:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f177ee54fddb12030a73b07f47a57a754d0fa035c12fcd41df67c11a86a58`  
		Last Modified: Fri, 04 May 2018 05:31:51 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:600fe7e9586c67ca0225f0d34cc4f52ccd055437cc948c2e624b3980797c4e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79789720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4e437d482b7195ae9c6f3ea466853147cfb2404aa9274b76418643d55b56ec`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:10:30 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:10:31 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:26:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:27:02 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:27:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:27:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:27:07 GMT
WORKDIR /go
# Fri, 04 May 2018 08:27:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074a5e43546b173c6b91b250be6eb406ccdb36abcd90c4e4fe8df71b30412896`  
		Last Modified: Fri, 04 May 2018 08:49:22 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b77a6a1d13c23158b512b1d003b9c38fc184f2bf72d2666d7106a8fb60226f`  
		Last Modified: Fri, 04 May 2018 08:51:34 GMT  
		Size: 77.4 MB (77439958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90543098a0bb644f9fe8c0aa80aa65e718e4168f7d4fb2c66970d7b8d2bbf97f`  
		Last Modified: Fri, 04 May 2018 08:49:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e89b3078c000cc9565c0c0f8b8f11ba4a855ef9508c8c171746113327546da`  
		Last Modified: Fri, 04 May 2018 08:49:24 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5de3cf6d29ea057becace8027ebaf12011ec91f311b0b585ac926b7ae6c1cb23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78179640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622352f9304ba5b2ed5b5deaa643047f63626da6fb4db6dbe20f17b0b126f964`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:43:58 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:43:59 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:45:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:45:38 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:45:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:45:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:45:44 GMT
WORKDIR /go
# Fri, 04 May 2018 08:45:45 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2464f2c16842d87cfe9cdf3b0c10843dc143896eacf7ee70209c46bf7db3277c`  
		Last Modified: Fri, 04 May 2018 08:52:04 GMT  
		Size: 792.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38bcfd21727fa25b6e53980d1f6141498c028175216ecff852e0b2900897746`  
		Last Modified: Fri, 04 May 2018 08:52:35 GMT  
		Size: 75.9 MB (75879970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076ff81ee7bb4d493512c3166eac8675502273e76926f5d000f242369669de01`  
		Last Modified: Fri, 04 May 2018 08:52:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd8fd36f18b20c7ca6e3599cd97f1f61300f85dd5d6ecd9c2d9ec6e4c43f10`  
		Last Modified: Fri, 04 May 2018 08:52:04 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:68330b393a23f0de29b3188cb18d046cdbd48b33ad02db0167aba0d518a2b797
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80802044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c22f5acf231772bcca0b636b89c200d32c2a325d905ad7dbb68c86300b610f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:43:17 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:43:17 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 10:44:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:44:25 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:44:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:44:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:44:26 GMT
WORKDIR /go
# Fri, 04 May 2018 10:44:27 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d969b36284578bede36520cf5fb36bdacf990cc64abfd3b16b4bc6b077471d06`  
		Last Modified: Fri, 04 May 2018 10:53:35 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1be884ebf544efaf2f53baa76ded442dd54a1f7e6307d0be55ca8805db57c9`  
		Last Modified: Fri, 04 May 2018 10:54:03 GMT  
		Size: 78.4 MB (78364484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440030c04a5f2b7892e1708335c28fdce5155ebe89720739feb89d0147f6e64`  
		Last Modified: Fri, 04 May 2018 10:53:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dab4862d2d1594ff26a8947c3bdadafd563980de56433572ac6aebc11c7ee7`  
		Last Modified: Fri, 04 May 2018 10:53:35 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-nanoserver`

```console
$ docker pull golang@sha256:39e13d9842e64680ed4f38a070017b04a5752f9e632ff4d72efa3b1f878344f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9.6-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:456e1461eb767a098a29d5d3533facfa5353564e0fd2dd03e7acd906411c7d58
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.3 MB (533277889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01813eab32ee5c517b68908802ed8c9c55de50575dde2b6c204e50cd1e06ea9e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:44:23 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:48:45 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:48:47 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15381b85a58a19655162b9445096da14b35b6be171364cd949a8e1b1ada70b9`  
		Last Modified: Fri, 04 May 2018 09:57:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8344ddddfe1e8bdfbec7bccca8474d58346d68078042ed3c9cf46a96a4d2f69`  
		Last Modified: Fri, 04 May 2018 09:58:14 GMT  
		Size: 120.4 MB (120352105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2b72c8ce7fd19855c8d682c27405038029d4f91f6e89f9627aaf735674c2a`  
		Last Modified: Fri, 04 May 2018 09:57:05 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-nanoserver-sac2016`

```console
$ docker pull golang@sha256:39e13d9842e64680ed4f38a070017b04a5752f9e632ff4d72efa3b1f878344f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9.6-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:456e1461eb767a098a29d5d3533facfa5353564e0fd2dd03e7acd906411c7d58
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.3 MB (533277889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01813eab32ee5c517b68908802ed8c9c55de50575dde2b6c204e50cd1e06ea9e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:44:23 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:48:45 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:48:47 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15381b85a58a19655162b9445096da14b35b6be171364cd949a8e1b1ada70b9`  
		Last Modified: Fri, 04 May 2018 09:57:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8344ddddfe1e8bdfbec7bccca8474d58346d68078042ed3c9cf46a96a4d2f69`  
		Last Modified: Fri, 04 May 2018 09:58:14 GMT  
		Size: 120.4 MB (120352105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2b72c8ce7fd19855c8d682c27405038029d4f91f6e89f9627aaf735674c2a`  
		Last Modified: Fri, 04 May 2018 09:57:05 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-stretch`

```console
$ docker pull golang@sha256:389e9cf54e397d98643758b8be5b7951c8c0b24c485282cd0bc73bf492469037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9.6-stretch` - linux; amd64

```console
$ docker pull golang@sha256:7e4ffa435af5dc88b65f5eeed054818fcc8b7764099a9d67f8c8d411666ddda0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286272198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf264aa4f97ac32adc73dee86a944197c0064bd572c624ce8c035c934c325e24`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 04:20:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:20:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:20:42 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:20:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:20:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:20:55 GMT
WORKDIR /go
# Fri, 04 May 2018 04:20:57 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a85d2cf7973404b6d4a65bbe7de1e91be1f3a85c47e2e5f57dd78b835828f7`  
		Last Modified: Fri, 04 May 2018 05:31:06 GMT  
		Size: 118.3 MB (118278883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90b8067d37137eebaa6fe2bf7c87971d171e8376d9b991f05247c0d51915c65`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2f226b6edfca80e9dcc214ac96d1539e3d0f911028890a2153e06131363b2`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9e8846e53a8d763926946e1f3ace4783c21a599e151ef4cf36f1df1a53859c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256125476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8509a68658064c03d0a1302af866806456689adf7c0bcce27341a26824d3e3a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:43:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:43:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:43:41 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:43:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:43:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:46 GMT
WORKDIR /go
# Fri, 04 May 2018 08:43:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf43e100125c09dc1db01dee386556475b84591ae2f9619c049c2cb402f9a07`  
		Last Modified: Fri, 04 May 2018 08:51:47 GMT  
		Size: 102.3 MB (102274644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc11201422320421a621b4c54b84517364fc6db636120b80bc6edc0e82c20b1c`  
		Last Modified: Fri, 04 May 2018 08:51:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeee85626f03c5ed71346d0dea9a735b12b146eba47c2db3bf942b0ccece1f8`  
		Last Modified: Fri, 04 May 2018 08:51:14 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-stretch` - linux; 386

```console
$ docker pull golang@sha256:382655fff2dc5847f3f44068153467069fe251e1fbbcc47b435ef25cd44c5324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280929038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2d1ff818fcce5ecabd893980890f308518d145e0905eb68ac8f949a7fc9d25`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:42:54 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:43:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:43:11 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:43:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:43:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:43:12 GMT
WORKDIR /go
# Fri, 04 May 2018 10:43:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7956f8ce3989d068ca75058c525f164dfa2898ad8de68d08bdf3569760c66f26`  
		Last Modified: Fri, 04 May 2018 10:53:20 GMT  
		Size: 105.9 MB (105922508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a998eb6b4303146b5a887d0907e6378e6aaf95b287e0cc2fe89618a64f8eea`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eba7743d97305dd2af7d33fb60e85b07b103b4f607c06ccd87beeb38f5559a`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-windowsservercore`

```console
$ docker pull golang@sha256:a22542678415c0f08842813247f94fea7211548f435f437cc3704928ac941e06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.9.6-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:8f50db6e65b54fbf937af8100e6dbed17dc0de225a6d4af20e0c705138be1761
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5557537858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ff7faa621b2b0245460ecc8cd7c4cf056d6cf6d7d796fa062c7f774dce7b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:34:12 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:39:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:39:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e487a54ba71db255f39a9b447cfd453be57ebf108503c1876039b2a89e1e20e`  
		Last Modified: Fri, 04 May 2018 09:54:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b30323409d580a08e4c759dc1f010cc6c7c4fe6d571e27f7ab96d7d8ed33c`  
		Last Modified: Fri, 04 May 2018 09:55:31 GMT  
		Size: 129.0 MB (128965231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99aa3e0a9e3eead7473b7bc3bc2ff05316390e6841d0f1f8aeb980ec1c42cf`  
		Last Modified: Fri, 04 May 2018 09:54:20 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.6-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:c4a4dc2ecb2ddaae15e1897c9a419149dae50034f1bfac3d01fdf066b2debc22
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3193707889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185052936347a9d5d0020a62f78cc709350211d83e5019fabc12e01dcc9e2212`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:39:25 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5841a0ee96e1f4008c1204ae921c0f398399623f2ec0ccc953c2eafec5d11c12`  
		Last Modified: Fri, 04 May 2018 09:55:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8b9152bd671a7459c2293dbd6d8f0ca6bab7aa541855aca355ef8015aebb7a`  
		Last Modified: Fri, 04 May 2018 09:56:53 GMT  
		Size: 124.1 MB (124138783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1266a0c5690f9d97f82497d0efe2b1f9858b3c078bfb924fd781ffac80dca8`  
		Last Modified: Fri, 04 May 2018 09:55:45 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-windowsservercore-1709`

```console
$ docker pull golang@sha256:bffdfa08ce4e574eca5c73e3de50250303ddca20e653526d66b60106c53e0c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.9.6-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:c4a4dc2ecb2ddaae15e1897c9a419149dae50034f1bfac3d01fdf066b2debc22
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3193707889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185052936347a9d5d0020a62f78cc709350211d83e5019fabc12e01dcc9e2212`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:39:25 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5841a0ee96e1f4008c1204ae921c0f398399623f2ec0ccc953c2eafec5d11c12`  
		Last Modified: Fri, 04 May 2018 09:55:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8b9152bd671a7459c2293dbd6d8f0ca6bab7aa541855aca355ef8015aebb7a`  
		Last Modified: Fri, 04 May 2018 09:56:53 GMT  
		Size: 124.1 MB (124138783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1266a0c5690f9d97f82497d0efe2b1f9858b3c078bfb924fd781ffac80dca8`  
		Last Modified: Fri, 04 May 2018 09:55:45 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:584e15a960472492882ba915863c3ddbbaab1f7e36b0f9b847a249fa616ff73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9.6-windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:8f50db6e65b54fbf937af8100e6dbed17dc0de225a6d4af20e0c705138be1761
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5557537858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ff7faa621b2b0245460ecc8cd7c4cf056d6cf6d7d796fa062c7f774dce7b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:34:12 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:39:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:39:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e487a54ba71db255f39a9b447cfd453be57ebf108503c1876039b2a89e1e20e`  
		Last Modified: Fri, 04 May 2018 09:54:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b30323409d580a08e4c759dc1f010cc6c7c4fe6d571e27f7ab96d7d8ed33c`  
		Last Modified: Fri, 04 May 2018 09:55:31 GMT  
		Size: 129.0 MB (128965231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99aa3e0a9e3eead7473b7bc3bc2ff05316390e6841d0f1f8aeb980ec1c42cf`  
		Last Modified: Fri, 04 May 2018 09:54:20 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:1988aa198fae0918f5f41c5ae2b4c0fba0cbead3dd5e5b6a833ba109fc3162c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:e62c47c3636348f33580d70ccaa3b8df7a8fefe56efabf17213b3771439e82dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82634968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499696d18cfe5e756e56c9f7115466e96bfe0df8f4774ae629d2eced15138236`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:04:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 01:04:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:54:27 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:54:28 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 04:55:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:55:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:55:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:55:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:55:48 GMT
WORKDIR /go
# Fri, 04 May 2018 04:55:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f966ecaebdf4698bf3d7a20b5dee5ce88ed176940b9a5385b1c7dd82385f97f0`  
		Last Modified: Wed, 10 Jan 2018 01:25:40 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1ad863697c6dcbba2b83cc247a8a696938ab4da3feae4a6d08b3d07dd3fe80`  
		Last Modified: Wed, 10 Jan 2018 01:25:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65cca5cc6ad1489b874b5be1c00e832e6b486cb375b6b13d0a634249e423c5b`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17475c0615c80f07b03bc33c16f0b5e0a256bf38dd85b9659c60335bca5c99b`  
		Last Modified: Fri, 04 May 2018 05:33:41 GMT  
		Size: 80.3 MB (80289793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d3168177933a586c0860c8e4f743aa549b746813c899d25965050c0f95cf6a`  
		Last Modified: Fri, 04 May 2018 05:33:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d660078289ee2eeba65df71184cf3536d36629b248b6b1e3886b3a944e104f0`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:8061aff704a4edf88009c9f830344684ed7e85cce5eb5332ba6e28895518bb0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80414143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360f06ffbcd9f096a1b0a8566ce758df782f8e87b921bf0d502ad8bfe2895a47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 08:27:29 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 08:27:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:27:36 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:27:37 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:44:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:44:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:44:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:44:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:44:51 GMT
WORKDIR /go
# Fri, 04 May 2018 08:44:53 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb8d85e78ebfc2588f5bb469565e3a9c1c3d49907fe42ea6f576e1816e77f6`  
		Last Modified: Fri, 04 May 2018 08:51:58 GMT  
		Size: 352.2 KB (352155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec00395d0c24e9f2dd06f95131c2780a18520c18821c7704145a65595d3ba0e1`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a212a0f45eaff2960e7234a74fa8eed60698ea3034e7d8df27ad6717236c97b3`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ecc85b9a827a6b7cedd31a1b55c7b43119509f5126f89d50d4fb29c53d6d04`  
		Last Modified: Fri, 04 May 2018 08:54:02 GMT  
		Size: 78.1 MB (78093342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc676daab1d39225dc203137f0b746836f041ff3cc3e06b37a59ccaeba5a9073`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41bd3495f29cd9f4fd01d67c80fb72f9bd79c82c4333438d21312e275cb598`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2f989dfa8d8a7e8b7ce395fe6a5ef6b5dc6ed050391a1afffe42138188ceddc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78752650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8e3d2a794c65c5a56ff9220bb70d80ccb59f891b78d5735cca4908e0e1018`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:46:09 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:46:09 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:47:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:47:47 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:47:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:47:53 GMT
WORKDIR /go
# Fri, 04 May 2018 08:47:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae44a9d929a0f7f774a276b1abeda949212ff63805c2d35fd8e1856cb1e47859`  
		Last Modified: Thu, 26 Oct 2017 05:18:54 GMT  
		Size: 351.5 KB (351492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11fa162bc593505d0e792ade6064701834ba4262cf5fda38fdbe83d0ba13951`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2949bff820c8d2b4c27f89b65315f44434688537bf1349a5f0534ab2b2d47`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce03402be15a7a81b2351f4ec97b465fb703993ca82a2afa23f71c6d13c3b094`  
		Last Modified: Fri, 04 May 2018 08:53:20 GMT  
		Size: 76.5 MB (76483803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163cfb71998d3ebebad986da9200f45ebfc754071b2d84b420d13ef480085cc`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52684d243115a69ea3ac3157c639a7439604276c8411c3767be26278d8a001da`  
		Last Modified: Fri, 04 May 2018 08:52:49 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; 386

```console
$ docker pull golang@sha256:6a6c9174a5c0150be07d000f6f8eea4aa9fec6fa3871eb03273104e259d8180c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81363160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc72abb8f987497906d72f3f53904ca932f55a9292869bd2d6e33565e331ac6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:46:46 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:46:47 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:46:47 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:46:47 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 10:48:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:48:20 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:48:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:48:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:48:21 GMT
WORKDIR /go
# Fri, 04 May 2018 10:48:21 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7cc6828e904affbc98d2746967fd66ded924c1e070bcaed1789446230cd930`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 352.1 KB (352117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98e60baac13b7a3dcff4546aa51f0b6ef25013e47c206cd62199d4ce99deb1b`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17420a40b9bdbc13a39f959c8b959e00250da649254870e9ddcdc67949d7a536`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894723ddb8841724b496eee01b59aeddb8b3dd6ecd2727bbd6df42af5e0a5c3`  
		Last Modified: Fri, 04 May 2018 10:54:48 GMT  
		Size: 79.0 MB (78962841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29839e6af0200c83224ce88521b51fe47bbbf3d7ba1c6d6d55a635cc85a9bd7`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd19463bcc14c0414d5a9f3d4b3fd908d0cf1e2c5867e4bce9e097a8f3859017`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:1988aa198fae0918f5f41c5ae2b4c0fba0cbead3dd5e5b6a833ba109fc3162c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:e62c47c3636348f33580d70ccaa3b8df7a8fefe56efabf17213b3771439e82dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82634968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499696d18cfe5e756e56c9f7115466e96bfe0df8f4774ae629d2eced15138236`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:04:03 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 01:04:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:54:27 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:54:28 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 04:55:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:55:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:55:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:55:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:55:48 GMT
WORKDIR /go
# Fri, 04 May 2018 04:55:48 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f966ecaebdf4698bf3d7a20b5dee5ce88ed176940b9a5385b1c7dd82385f97f0`  
		Last Modified: Wed, 10 Jan 2018 01:25:40 GMT  
		Size: 351.0 KB (350995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1ad863697c6dcbba2b83cc247a8a696938ab4da3feae4a6d08b3d07dd3fe80`  
		Last Modified: Wed, 10 Jan 2018 01:25:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65cca5cc6ad1489b874b5be1c00e832e6b486cb375b6b13d0a634249e423c5b`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17475c0615c80f07b03bc33c16f0b5e0a256bf38dd85b9659c60335bca5c99b`  
		Last Modified: Fri, 04 May 2018 05:33:41 GMT  
		Size: 80.3 MB (80289793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d3168177933a586c0860c8e4f743aa549b746813c899d25965050c0f95cf6a`  
		Last Modified: Fri, 04 May 2018 05:33:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d660078289ee2eeba65df71184cf3536d36629b248b6b1e3886b3a944e104f0`  
		Last Modified: Fri, 04 May 2018 05:33:10 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:8061aff704a4edf88009c9f830344684ed7e85cce5eb5332ba6e28895518bb0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80414143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360f06ffbcd9f096a1b0a8566ce758df782f8e87b921bf0d502ad8bfe2895a47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 08:27:29 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 08:27:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:27:36 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:27:37 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:44:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:44:44 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:44:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:44:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:44:51 GMT
WORKDIR /go
# Fri, 04 May 2018 08:44:53 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbb8d85e78ebfc2588f5bb469565e3a9c1c3d49907fe42ea6f576e1816e77f6`  
		Last Modified: Fri, 04 May 2018 08:51:58 GMT  
		Size: 352.2 KB (352155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec00395d0c24e9f2dd06f95131c2780a18520c18821c7704145a65595d3ba0e1`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a212a0f45eaff2960e7234a74fa8eed60698ea3034e7d8df27ad6717236c97b3`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ecc85b9a827a6b7cedd31a1b55c7b43119509f5126f89d50d4fb29c53d6d04`  
		Last Modified: Fri, 04 May 2018 08:54:02 GMT  
		Size: 78.1 MB (78093342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc676daab1d39225dc203137f0b746836f041ff3cc3e06b37a59ccaeba5a9073`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41bd3495f29cd9f4fd01d67c80fb72f9bd79c82c4333438d21312e275cb598`  
		Last Modified: Fri, 04 May 2018 08:51:54 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2f989dfa8d8a7e8b7ce395fe6a5ef6b5dc6ed050391a1afffe42138188ceddc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78752650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8e3d2a794c65c5a56ff9220bb70d80ccb59f891b78d5735cca4908e0e1018`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:15:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 26 Oct 2017 05:15:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:46:09 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:46:09 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:47:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:47:47 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:47:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:47:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:47:53 GMT
WORKDIR /go
# Fri, 04 May 2018 08:47:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae44a9d929a0f7f774a276b1abeda949212ff63805c2d35fd8e1856cb1e47859`  
		Last Modified: Thu, 26 Oct 2017 05:18:54 GMT  
		Size: 351.5 KB (351492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11fa162bc593505d0e792ade6064701834ba4262cf5fda38fdbe83d0ba13951`  
		Last Modified: Thu, 26 Oct 2017 05:18:53 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab2949bff820c8d2b4c27f89b65315f44434688537bf1349a5f0534ab2b2d47`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce03402be15a7a81b2351f4ec97b465fb703993ca82a2afa23f71c6d13c3b094`  
		Last Modified: Fri, 04 May 2018 08:53:20 GMT  
		Size: 76.5 MB (76483803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163cfb71998d3ebebad986da9200f45ebfc754071b2d84b420d13ef480085cc`  
		Last Modified: Fri, 04 May 2018 08:52:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52684d243115a69ea3ac3157c639a7439604276c8411c3767be26278d8a001da`  
		Last Modified: Fri, 04 May 2018 08:52:49 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:6a6c9174a5c0150be07d000f6f8eea4aa9fec6fa3871eb03273104e259d8180c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81363160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc72abb8f987497906d72f3f53904ca932f55a9292869bd2d6e33565e331ac6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:46:46 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:46:47 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:46:47 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:46:47 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 10:48:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:48:20 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:48:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:48:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:48:21 GMT
WORKDIR /go
# Fri, 04 May 2018 10:48:21 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7cc6828e904affbc98d2746967fd66ded924c1e070bcaed1789446230cd930`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 352.1 KB (352117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98e60baac13b7a3dcff4546aa51f0b6ef25013e47c206cd62199d4ce99deb1b`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17420a40b9bdbc13a39f959c8b959e00250da649254870e9ddcdc67949d7a536`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894723ddb8841724b496eee01b59aeddb8b3dd6ecd2727bbd6df42af5e0a5c3`  
		Last Modified: Fri, 04 May 2018 10:54:48 GMT  
		Size: 79.0 MB (78962841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29839e6af0200c83224ce88521b51fe47bbbf3d7ba1c6d6d55a635cc85a9bd7`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd19463bcc14c0414d5a9f3d4b3fd908d0cf1e2c5867e4bce9e097a8f3859017`  
		Last Modified: Fri, 04 May 2018 10:54:21 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.7`

```console
$ docker pull golang@sha256:417e5d4f75fcc1d4710389fb7ff4134005fadd952f43a0664f936961abcf1c7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:16e5e145a7ae5d659f03e0a533c4c9edc366da9395e87ba45ded2eb5949910b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82661161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3f33e0545448dff5943536422ce9e959cb75f5cb2bb512984452ff15388580`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:30:14 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:30:16 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 04:31:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:40:22 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:40:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:40:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:40:25 GMT
WORKDIR /go
# Fri, 04 May 2018 04:40:25 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16334699edf9d07389b7cc8f4b3cda42318a9a94aeac7fa9fb0b407b87b9e817`  
		Last Modified: Fri, 04 May 2018 05:31:52 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec5e4c7c56b6f752fd0a042a221f4d8333aa5ba7816bda16a829e754726bb64`  
		Last Modified: Fri, 04 May 2018 05:32:22 GMT  
		Size: 80.3 MB (80285179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105a56799b21912b955660c4995440cdf252c0b0c74645791395d3f4ecaebbf1`  
		Last Modified: Fri, 04 May 2018 05:31:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f177ee54fddb12030a73b07f47a57a754d0fa035c12fcd41df67c11a86a58`  
		Last Modified: Fri, 04 May 2018 05:31:51 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:600fe7e9586c67ca0225f0d34cc4f52ccd055437cc948c2e624b3980797c4e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79789720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4e437d482b7195ae9c6f3ea466853147cfb2404aa9274b76418643d55b56ec`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:10:30 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:10:31 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:26:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:27:02 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:27:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:27:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:27:07 GMT
WORKDIR /go
# Fri, 04 May 2018 08:27:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074a5e43546b173c6b91b250be6eb406ccdb36abcd90c4e4fe8df71b30412896`  
		Last Modified: Fri, 04 May 2018 08:49:22 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b77a6a1d13c23158b512b1d003b9c38fc184f2bf72d2666d7106a8fb60226f`  
		Last Modified: Fri, 04 May 2018 08:51:34 GMT  
		Size: 77.4 MB (77439958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90543098a0bb644f9fe8c0aa80aa65e718e4168f7d4fb2c66970d7b8d2bbf97f`  
		Last Modified: Fri, 04 May 2018 08:49:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e89b3078c000cc9565c0c0f8b8f11ba4a855ef9508c8c171746113327546da`  
		Last Modified: Fri, 04 May 2018 08:49:24 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:5de3cf6d29ea057becace8027ebaf12011ec91f311b0b585ac926b7ae6c1cb23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78179640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622352f9304ba5b2ed5b5deaa643047f63626da6fb4db6dbe20f17b0b126f964`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:43:58 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:43:59 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 08:45:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:45:38 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:45:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:45:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:45:44 GMT
WORKDIR /go
# Fri, 04 May 2018 08:45:45 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2464f2c16842d87cfe9cdf3b0c10843dc143896eacf7ee70209c46bf7db3277c`  
		Last Modified: Fri, 04 May 2018 08:52:04 GMT  
		Size: 792.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38bcfd21727fa25b6e53980d1f6141498c028175216ecff852e0b2900897746`  
		Last Modified: Fri, 04 May 2018 08:52:35 GMT  
		Size: 75.9 MB (75879970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076ff81ee7bb4d493512c3166eac8675502273e76926f5d000f242369669de01`  
		Last Modified: Fri, 04 May 2018 08:52:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bd8fd36f18b20c7ca6e3599cd97f1f61300f85dd5d6ecd9c2d9ec6e4c43f10`  
		Last Modified: Fri, 04 May 2018 08:52:04 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:68330b393a23f0de29b3188cb18d046cdbd48b33ad02db0167aba0d518a2b797
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80802044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c22f5acf231772bcca0b636b89c200d32c2a325d905ad7dbb68c86300b610f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:43:17 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:43:17 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 04 May 2018 10:44:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:44:25 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:44:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:44:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:44:26 GMT
WORKDIR /go
# Fri, 04 May 2018 10:44:27 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d969b36284578bede36520cf5fb36bdacf990cc64abfd3b16b4bc6b077471d06`  
		Last Modified: Fri, 04 May 2018 10:53:35 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1be884ebf544efaf2f53baa76ded442dd54a1f7e6307d0be55ca8805db57c9`  
		Last Modified: Fri, 04 May 2018 10:54:03 GMT  
		Size: 78.4 MB (78364484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440030c04a5f2b7892e1708335c28fdce5155ebe89720739feb89d0147f6e64`  
		Last Modified: Fri, 04 May 2018 10:53:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07dab4862d2d1594ff26a8947c3bdadafd563980de56433572ac6aebc11c7ee7`  
		Last Modified: Fri, 04 May 2018 10:53:35 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:39e13d9842e64680ed4f38a070017b04a5752f9e632ff4d72efa3b1f878344f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:456e1461eb767a098a29d5d3533facfa5353564e0fd2dd03e7acd906411c7d58
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.3 MB (533277889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01813eab32ee5c517b68908802ed8c9c55de50575dde2b6c204e50cd1e06ea9e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:44:23 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:48:45 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:48:47 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15381b85a58a19655162b9445096da14b35b6be171364cd949a8e1b1ada70b9`  
		Last Modified: Fri, 04 May 2018 09:57:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8344ddddfe1e8bdfbec7bccca8474d58346d68078042ed3c9cf46a96a4d2f69`  
		Last Modified: Fri, 04 May 2018 09:58:14 GMT  
		Size: 120.4 MB (120352105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2b72c8ce7fd19855c8d682c27405038029d4f91f6e89f9627aaf735674c2a`  
		Last Modified: Fri, 04 May 2018 09:57:05 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver-sac2016`

```console
$ docker pull golang@sha256:39e13d9842e64680ed4f38a070017b04a5752f9e632ff4d72efa3b1f878344f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:456e1461eb767a098a29d5d3533facfa5353564e0fd2dd03e7acd906411c7d58
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.3 MB (533277889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01813eab32ee5c517b68908802ed8c9c55de50575dde2b6c204e50cd1e06ea9e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:44:23 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:48:45 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:48:47 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15381b85a58a19655162b9445096da14b35b6be171364cd949a8e1b1ada70b9`  
		Last Modified: Fri, 04 May 2018 09:57:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8344ddddfe1e8bdfbec7bccca8474d58346d68078042ed3c9cf46a96a4d2f69`  
		Last Modified: Fri, 04 May 2018 09:58:14 GMT  
		Size: 120.4 MB (120352105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2b72c8ce7fd19855c8d682c27405038029d4f91f6e89f9627aaf735674c2a`  
		Last Modified: Fri, 04 May 2018 09:57:05 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:389e9cf54e397d98643758b8be5b7951c8c0b24c485282cd0bc73bf492469037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1.9-stretch` - linux; amd64

```console
$ docker pull golang@sha256:7e4ffa435af5dc88b65f5eeed054818fcc8b7764099a9d67f8c8d411666ddda0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286272198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf264aa4f97ac32adc73dee86a944197c0064bd572c624ce8c035c934c325e24`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 04:20:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 04:20:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:20:42 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:20:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:20:54 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:20:55 GMT
WORKDIR /go
# Fri, 04 May 2018 04:20:57 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a85d2cf7973404b6d4a65bbe7de1e91be1f3a85c47e2e5f57dd78b835828f7`  
		Last Modified: Fri, 04 May 2018 05:31:06 GMT  
		Size: 118.3 MB (118278883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90b8067d37137eebaa6fe2bf7c87971d171e8376d9b991f05247c0d51915c65`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2f226b6edfca80e9dcc214ac96d1539e3d0f911028890a2153e06131363b2`  
		Last Modified: Fri, 04 May 2018 05:30:35 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9e8846e53a8d763926946e1f3ace4783c21a599e151ef4cf36f1df1a53859c40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256125476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8509a68658064c03d0a1302af866806456689adf7c0bcce27341a26824d3e3a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:43:19 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 08:43:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:43:41 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:43:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:43:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:46 GMT
WORKDIR /go
# Fri, 04 May 2018 08:43:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf43e100125c09dc1db01dee386556475b84591ae2f9619c049c2cb402f9a07`  
		Last Modified: Fri, 04 May 2018 08:51:47 GMT  
		Size: 102.3 MB (102274644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc11201422320421a621b4c54b84517364fc6db636120b80bc6edc0e82c20b1c`  
		Last Modified: Fri, 04 May 2018 08:51:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeee85626f03c5ed71346d0dea9a735b12b146eba47c2db3bf942b0ccece1f8`  
		Last Modified: Fri, 04 May 2018 08:51:14 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:382655fff2dc5847f3f44068153467069fe251e1fbbcc47b435ef25cd44c5324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280929038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2d1ff818fcce5ecabd893980890f308518d145e0905eb68ac8f949a7fc9d25`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:42:54 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 10:43:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d1eb07f99ac06906225ac2b296503f06cc257b472e7d7817b8f822fe3766ebfe' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='73e56ec4408650d9fda0be8282a9ad49c51ad17929b4d20c04cea07249726bd8' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8596d64b9f582d6209c04513824e428d1c356276180d2089d4dfcf4c7cf8a6cc' ;; 		i386) goRelArch='linux-386'; goRelSha256='de65e35d7e540578e78a3c6917b9e9033b55617ef894a1de1a6a6da5a1b948dd' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='b1203546c68e3be7b5e36a5cfb6ff5ef94bd476f5423035bc7e65255858741ff' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2baa6e48eedb8ec7e2a4d2454cdf05d1f46d5a07ff2f03cab5b7b8eadef7e112' ;; 		*) goRelArch='src'; goRelSha256='36f4059be658f7f07091e27fe04bb9e97a0c4836eb446e4c5bac3c90ff9e5828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:43:11 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:43:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:43:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:43:12 GMT
WORKDIR /go
# Fri, 04 May 2018 10:43:13 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7956f8ce3989d068ca75058c525f164dfa2898ad8de68d08bdf3569760c66f26`  
		Last Modified: Fri, 04 May 2018 10:53:20 GMT  
		Size: 105.9 MB (105922508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a998eb6b4303146b5a887d0907e6378e6aaf95b287e0cc2fe89618a64f8eea`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9eba7743d97305dd2af7d33fb60e85b07b103b4f607c06ccd87beeb38f5559a`  
		Last Modified: Fri, 04 May 2018 10:52:50 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:a22542678415c0f08842813247f94fea7211548f435f437cc3704928ac941e06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:8f50db6e65b54fbf937af8100e6dbed17dc0de225a6d4af20e0c705138be1761
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5557537858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ff7faa621b2b0245460ecc8cd7c4cf056d6cf6d7d796fa062c7f774dce7b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:34:12 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:39:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:39:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e487a54ba71db255f39a9b447cfd453be57ebf108503c1876039b2a89e1e20e`  
		Last Modified: Fri, 04 May 2018 09:54:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b30323409d580a08e4c759dc1f010cc6c7c4fe6d571e27f7ab96d7d8ed33c`  
		Last Modified: Fri, 04 May 2018 09:55:31 GMT  
		Size: 129.0 MB (128965231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99aa3e0a9e3eead7473b7bc3bc2ff05316390e6841d0f1f8aeb980ec1c42cf`  
		Last Modified: Fri, 04 May 2018 09:54:20 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:c4a4dc2ecb2ddaae15e1897c9a419149dae50034f1bfac3d01fdf066b2debc22
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3193707889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185052936347a9d5d0020a62f78cc709350211d83e5019fabc12e01dcc9e2212`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:39:25 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5841a0ee96e1f4008c1204ae921c0f398399623f2ec0ccc953c2eafec5d11c12`  
		Last Modified: Fri, 04 May 2018 09:55:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8b9152bd671a7459c2293dbd6d8f0ca6bab7aa541855aca355ef8015aebb7a`  
		Last Modified: Fri, 04 May 2018 09:56:53 GMT  
		Size: 124.1 MB (124138783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1266a0c5690f9d97f82497d0efe2b1f9858b3c078bfb924fd781ffac80dca8`  
		Last Modified: Fri, 04 May 2018 09:55:45 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore-1709`

```console
$ docker pull golang@sha256:bffdfa08ce4e574eca5c73e3de50250303ddca20e653526d66b60106c53e0c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.9-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:c4a4dc2ecb2ddaae15e1897c9a419149dae50034f1bfac3d01fdf066b2debc22
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3193707889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185052936347a9d5d0020a62f78cc709350211d83e5019fabc12e01dcc9e2212`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:39:25 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5841a0ee96e1f4008c1204ae921c0f398399623f2ec0ccc953c2eafec5d11c12`  
		Last Modified: Fri, 04 May 2018 09:55:44 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8b9152bd671a7459c2293dbd6d8f0ca6bab7aa541855aca355ef8015aebb7a`  
		Last Modified: Fri, 04 May 2018 09:56:53 GMT  
		Size: 124.1 MB (124138783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1266a0c5690f9d97f82497d0efe2b1f9858b3c078bfb924fd781ffac80dca8`  
		Last Modified: Fri, 04 May 2018 09:55:45 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:584e15a960472492882ba915863c3ddbbaab1f7e36b0f9b847a249fa616ff73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9-windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:8f50db6e65b54fbf937af8100e6dbed17dc0de225a6d4af20e0c705138be1761
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5557537858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5ff7faa621b2b0245460ecc8cd7c4cf056d6cf6d7d796fa062c7f774dce7b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:34:12 GMT
ENV GOLANG_VERSION=1.9.6
# Fri, 04 May 2018 09:39:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:39:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e487a54ba71db255f39a9b447cfd453be57ebf108503c1876039b2a89e1e20e`  
		Last Modified: Fri, 04 May 2018 09:54:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610b30323409d580a08e4c759dc1f010cc6c7c4fe6d571e27f7ab96d7d8ed33c`  
		Last Modified: Fri, 04 May 2018 09:55:31 GMT  
		Size: 129.0 MB (128965231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee99aa3e0a9e3eead7473b7bc3bc2ff05316390e6841d0f1f8aeb980ec1c42cf`  
		Last Modified: Fri, 04 May 2018 09:54:20 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:ea1f4ed5cf489c4ddf75f31fadd23bfed8fa1717ef70a44ad2813f6319cd58d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:8f026b39c8d7ba4c3b50b72fe7b548bfc4be5f9c192a47689eaa4b8dbf7215ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1709`

```console
$ docker pull golang@sha256:35d809a6fe87e9e30dbadf762d28d29d8fbebd143299f6cf86d3be5065bba9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:aaa1485601456f5ed6a92bcff8a41aefb51f74844fb01d9714eb6b5ba9865216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.7`

```console
$ docker pull golang@sha256:a7332ad1e832ecab05bd301acfb3b96a4b43173e9be280fcaaab4525c4620412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:96e25c71acc7756adaa0c9237bc799dfba4c0a71409612b3111f20a79a9c4cc2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115631500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fe62871090f69071a42563d90ea9cc8e392a4d78b5c73dd7a0bc8410fcc79f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 04:03:12 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 04:04:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 04:04:33 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 04:04:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 04:04:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 04:04:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db6b75ae47d80509f558b9cf7834dfe5586d2ed3cfdc9932efa4cb46b2f903d`  
		Last Modified: Fri, 04 May 2018 05:27:44 GMT  
		Size: 113.3 MB (113257669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc46bec5ec291af4c5d7847b76968f8fdc8a789122341c75ac221dac678105e4`  
		Last Modified: Fri, 04 May 2018 05:27:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:a6a92e5e1cec66e391d69052c57836ccf1fc135bcd2cc93b3b29adfec2f3641f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113545360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2760ccd5484b35153be5d84bb2ab65a2f0503f57e9d8f1a877fc16b70e05f3e1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 07:49:33 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 07:49:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 07:49:39 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:10:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:10:09 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:10:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:10:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:10:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a9e37402da570663e49b5bb319a334af271e19ed8eedf37b8bf031066e99`  
		Last Modified: Fri, 04 May 2018 08:45:19 GMT  
		Size: 308.8 KB (308803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8458ecf2b7a1a3ed9aa0b9f857e18667949eed6ff92f17e5d8ae82e19680f4b8`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacfe88afbaaef9ab265bf65e53698809b6e01c09c6619644a53edcb0446904e`  
		Last Modified: Fri, 04 May 2018 08:48:22 GMT  
		Size: 111.2 MB (111197775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a127e469e3a244d6699a1c54ae453cc11ecbc16e388dc908f1f596ef727ed1`  
		Last Modified: Fri, 04 May 2018 08:45:18 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:10353895adbaaf5460cd58bfc45a767a02fd81ad197a16bff5419da1f11fb107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111302638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510010285245fbf30884c48449da3a20aeb1862ab99b0523844c0b53c1cf630`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 08:40:23 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:42:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:42:56 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:42:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:43:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165f7621630840cad58b6937da54aeb293895875ca9bab8a515fd1240e0fd0cd`  
		Last Modified: Fri, 04 May 2018 08:50:19 GMT  
		Size: 109.0 MB (109005114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a9646cee5d50ad0e388318bee3d7739a70f1f58e24189fde85d3812746cf0`  
		Last Modified: Fri, 04 May 2018 08:49:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:848e2b390fa5a97b0b838297f3eb8121c8dce29078c722eaf6cc6b861ba49c25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115067464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff591eccc6d09fcd0c513993332c45cbc9dc6be6b759ecbaa9a4b67791ac437`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 04 May 2018 10:39:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 04 May 2018 10:39:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 04 May 2018 10:39:19 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:40:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:40:57 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:40:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508ebbfb788b428feda7e301d7609b9af4768ee379d7344ddc36c1389b04e609`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 308.7 KB (308743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dab486af05f9604ad9a29d6880434c1d3ace98274282dbf8958bdaed372dee7`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf76a8ebeae0341a433c4fe06d4c20f12b37070dd9bffb883dfa78c3cc201da`  
		Last Modified: Fri, 04 May 2018 10:52:04 GMT  
		Size: 112.6 MB (112632050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a2d3025fae01a604d568d8e659120e2f5b3761d45423df8f4429e1320fe00e`  
		Last Modified: Fri, 04 May 2018 10:51:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:6dc28d87587563e5b69d839ce37f8e5a61f2b4101e7e97d6e7aeb2e0117cf501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver-sac2016`

```console
$ docker pull golang@sha256:d2e8f16c7baaa06309baf2cf3863e0ec31a782f571c125ac1974aa8573388956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d605501e4e8bab4d3d81df7a635420d298eaa3690422eb12ff73a257abbe861f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553926092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54681216861361ed1dc37dfc0a3ca6b6f85931c174349bc9ebe8812e3f805d1e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 04 May 2018 09:29:00 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:34:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:34:06 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce546014d244744206785bf51b7e0160f0e2d3b47e1b63cc80779d6880729ad2`  
		Last Modified: Fri, 04 May 2018 09:52:41 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1229bf1d2c95705033ddd801891bd41234dcaadd14f8671f0cf33ad1d31919ac`  
		Last Modified: Fri, 04 May 2018 09:54:02 GMT  
		Size: 141.0 MB (141000305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf739b7fbfd133da530dd9ddd0893a914890ec4e08931f56b3b0523f34a3b3d2`  
		Last Modified: Fri, 04 May 2018 09:52:40 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:ea1f4ed5cf489c4ddf75f31fadd23bfed8fa1717ef70a44ad2813f6319cd58d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `golang:stretch` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:8f026b39c8d7ba4c3b50b72fe7b548bfc4be5f9c192a47689eaa4b8dbf7215ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1709`

```console
$ docker pull golang@sha256:35d809a6fe87e9e30dbadf762d28d29d8fbebd143299f6cf86d3be5065bba9f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:aaa1485601456f5ed6a92bcff8a41aefb51f74844fb01d9714eb6b5ba9865216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

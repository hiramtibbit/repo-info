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
$ docker pull golang@sha256:4826b5c314a498142c7291ad835ab6be1bf02f7813d6932d01f1f0f1383cdda1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.16299.371; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:f0fdc456f6c882319d853d3252d94a1ea80007be095e2547dcca473c5ad39954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287900803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af690c440281a524947b15bb44fa4394eca3032c3c96f9a4efb03350dd7a1af`
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
# Wed, 02 May 2018 21:08:40 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 02 May 2018 21:08:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:08:57 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:08:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:08:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:08:58 GMT
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
	-	`sha256:f235c5ef78917f9af09421590e5e0e824a69a8a3cf02309cc696604ebf14644d`  
		Last Modified: Wed, 02 May 2018 21:31:35 GMT  
		Size: 119.9 MB (119908857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd98e20e590978aa01863ac53b0a5fa82ad14b5f301dd6e82f232e2d80f6f52`  
		Last Modified: Wed, 02 May 2018 21:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:eff26cd589c34a159853619f5853fcdc875962311e93a26933efb5d17087a914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250668113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f627eb7b4e409e2976ad8d8d4aafcd7219d257897fef54d0c245d03a3b730b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:03 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:31:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:23 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea8b1bbd4e1478ef859989a600784faabbbfbc30979a061cc5dbaad92376644`  
		Last Modified: Sat, 28 Apr 2018 16:33:02 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6c2fe02ce960c6e1e17082d2062edd1b8bad4abaf9ae663199c9f39a9d0793`  
		Last Modified: Sat, 28 Apr 2018 16:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:01842011b6960ee4ab3393de05278edf78ba3b16bf001f6b1e1253b8ba7efd4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256333779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c415c624bceba4c90e67e9022da3b23f782c1d3be4b912840f4ca7e22b7f5558`
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
# Tue, 01 May 2018 21:00:11 GMT
ENV GOLANG_VERSION=1.10.1
# Tue, 01 May 2018 21:00:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:00:32 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:00:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:00:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:00:35 GMT
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
	-	`sha256:812609ab353b766b277df13cb5dd0b5a1fd54e5a54ca6225615bb3ed02bb09f5`  
		Last Modified: Tue, 01 May 2018 21:02:54 GMT  
		Size: 102.5 MB (102484315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564e4116740ad79a98a6751270d14b9bca1f02e773b8054ee74c3faf870a500`  
		Last Modified: Tue, 01 May 2018 21:02:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:55db959e96ba482afab6a57ec4cccef51a63bb2d0e1a0931f97900c50588ec0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283294635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49b4dfac6aba698bf832178599b38e9cc66bb5754499fd87ec47ee86e1339d`
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
# Sat, 28 Apr 2018 19:34:46 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 19:34:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:34:59 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:34:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:00 GMT
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
	-	`sha256:63284462132e4702c4c4731b65d81788381bf7a78b8b9498ee661c35c5ba54ef`  
		Last Modified: Sat, 28 Apr 2018 19:36:03 GMT  
		Size: 108.3 MB (108289472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238c5e1631bdedf2484d37e43a815dd16078022459760b42a850dc23db9d231`  
		Last Modified: Sat, 28 Apr 2018 19:35:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:d3081efe4f5d8977d5c41e3db7431b6506591b26e58cc6917404fe6a9165284d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263880360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dfa0d4cd4a362eba3ccf4838392da0e92eb4ab8a443f35e7d63e0a47f540e4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:52 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:46:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:46:21 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:46:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:46:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1301ac0c8b038c154411da781db9ab5a93c81519111c1d55af0350cc7d1a7e4a`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 101.3 MB (101280522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb56bc4c6935e816d2090c7e35d32838ceb62765f8c7550f5ed9baef30cb04`  
		Last Modified: Sat, 28 Apr 2018 16:51:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:f591f51a2bcbceab2c533eedd672bb0616fec55bdd3825ccfb5b400a144c297f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256812972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd819385f9194859f21463fab66cd5562e8c0ec8e206929ed66b0385a2352013`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 17:59:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 17:59:37 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 17:59:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 17:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dda9c6fec4414401ff62489714c167d06388726e4f5538ee01466b90167816`  
		Last Modified: Sat, 28 Apr 2018 18:00:57 GMT  
		Size: 100.7 MB (100679434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bcbc075fcb1a6ff8e45891c46d790874dc66fa2ca973659dbed00adde6c45c`  
		Last Modified: Sat, 28 Apr 2018 18:00:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10`

```console
$ docker pull golang@sha256:4826b5c314a498142c7291ad835ab6be1bf02f7813d6932d01f1f0f1383cdda1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.16299.371; amd64

### `golang:1.10` - linux; amd64

```console
$ docker pull golang@sha256:f0fdc456f6c882319d853d3252d94a1ea80007be095e2547dcca473c5ad39954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287900803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af690c440281a524947b15bb44fa4394eca3032c3c96f9a4efb03350dd7a1af`
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
# Wed, 02 May 2018 21:08:40 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 02 May 2018 21:08:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:08:57 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:08:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:08:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:08:58 GMT
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
	-	`sha256:f235c5ef78917f9af09421590e5e0e824a69a8a3cf02309cc696604ebf14644d`  
		Last Modified: Wed, 02 May 2018 21:31:35 GMT  
		Size: 119.9 MB (119908857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd98e20e590978aa01863ac53b0a5fa82ad14b5f301dd6e82f232e2d80f6f52`  
		Last Modified: Wed, 02 May 2018 21:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; arm variant v7

```console
$ docker pull golang@sha256:eff26cd589c34a159853619f5853fcdc875962311e93a26933efb5d17087a914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250668113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f627eb7b4e409e2976ad8d8d4aafcd7219d257897fef54d0c245d03a3b730b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:03 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:31:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:23 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea8b1bbd4e1478ef859989a600784faabbbfbc30979a061cc5dbaad92376644`  
		Last Modified: Sat, 28 Apr 2018 16:33:02 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6c2fe02ce960c6e1e17082d2062edd1b8bad4abaf9ae663199c9f39a9d0793`  
		Last Modified: Sat, 28 Apr 2018 16:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:01842011b6960ee4ab3393de05278edf78ba3b16bf001f6b1e1253b8ba7efd4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256333779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c415c624bceba4c90e67e9022da3b23f782c1d3be4b912840f4ca7e22b7f5558`
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
# Tue, 01 May 2018 21:00:11 GMT
ENV GOLANG_VERSION=1.10.1
# Tue, 01 May 2018 21:00:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:00:32 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:00:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:00:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:00:35 GMT
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
	-	`sha256:812609ab353b766b277df13cb5dd0b5a1fd54e5a54ca6225615bb3ed02bb09f5`  
		Last Modified: Tue, 01 May 2018 21:02:54 GMT  
		Size: 102.5 MB (102484315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564e4116740ad79a98a6751270d14b9bca1f02e773b8054ee74c3faf870a500`  
		Last Modified: Tue, 01 May 2018 21:02:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; 386

```console
$ docker pull golang@sha256:55db959e96ba482afab6a57ec4cccef51a63bb2d0e1a0931f97900c50588ec0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283294635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49b4dfac6aba698bf832178599b38e9cc66bb5754499fd87ec47ee86e1339d`
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
# Sat, 28 Apr 2018 19:34:46 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 19:34:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:34:59 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:34:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:00 GMT
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
	-	`sha256:63284462132e4702c4c4731b65d81788381bf7a78b8b9498ee661c35c5ba54ef`  
		Last Modified: Sat, 28 Apr 2018 19:36:03 GMT  
		Size: 108.3 MB (108289472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238c5e1631bdedf2484d37e43a815dd16078022459760b42a850dc23db9d231`  
		Last Modified: Sat, 28 Apr 2018 19:35:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; ppc64le

```console
$ docker pull golang@sha256:d3081efe4f5d8977d5c41e3db7431b6506591b26e58cc6917404fe6a9165284d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263880360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dfa0d4cd4a362eba3ccf4838392da0e92eb4ab8a443f35e7d63e0a47f540e4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:52 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:46:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:46:21 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:46:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:46:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1301ac0c8b038c154411da781db9ab5a93c81519111c1d55af0350cc7d1a7e4a`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 101.3 MB (101280522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb56bc4c6935e816d2090c7e35d32838ceb62765f8c7550f5ed9baef30cb04`  
		Last Modified: Sat, 28 Apr 2018 16:51:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; s390x

```console
$ docker pull golang@sha256:f591f51a2bcbceab2c533eedd672bb0616fec55bdd3825ccfb5b400a144c297f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256812972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd819385f9194859f21463fab66cd5562e8c0ec8e206929ed66b0385a2352013`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 17:59:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 17:59:37 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 17:59:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 17:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dda9c6fec4414401ff62489714c167d06388726e4f5538ee01466b90167816`  
		Last Modified: Sat, 28 Apr 2018 18:00:57 GMT  
		Size: 100.7 MB (100679434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bcbc075fcb1a6ff8e45891c46d790874dc66fa2ca973659dbed00adde6c45c`  
		Last Modified: Sat, 28 Apr 2018 18:00:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.2`

**does not exist** (yet?)

## `golang:1.10.2-alpine`

**does not exist** (yet?)

## `golang:1.10.2-alpine3.7`

**does not exist** (yet?)

## `golang:1.10.2-nanoserver`

**does not exist** (yet?)

## `golang:1.10.2-nanoserver-sac2016`

**does not exist** (yet?)

## `golang:1.10.2-stretch`

**does not exist** (yet?)

## `golang:1.10.2-windowsservercore`

**does not exist** (yet?)

## `golang:1.10.2-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.10.2-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.10-alpine`

```console
$ docker pull golang@sha256:356aea725be911d52e0f2f0344a17ac3d97c54c74d50b8561f58eae6cc0871bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.10-alpine` - linux; amd64

```console
$ docker pull golang@sha256:8feac1bd797378827a82529e8d31290799df5a637235f10220355d6268f6eecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115632343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d894fca6d4b4f9d0c31abbec419c4515fbea5b8e93fef81b2f38ed9b3b173e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 11 Apr 2018 17:21:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:21:13 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:21:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:21:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6678747892c3d3b99cafaaf96a55f7b0649bb5e0eda79547fb20c593820dd61`  
		Last Modified: Wed, 11 Apr 2018 17:41:25 GMT  
		Size: 113.3 MB (113258672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5f22d8b231edd526e2606d6636678e40369ceceaafe500696dc44d4c4166a`  
		Last Modified: Wed, 11 Apr 2018 17:41:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:d98cc903f00f47488b65984ec9e0fc1c8c8ce2bc123a7e3b661d2c64152d80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c10e8072f53f43afbe2cbf5869d625fd4f9d9ee69c87c03d8983354d1fc1d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:05:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:05:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:05:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:05:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:05:53 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c7b2c41aca361131fb052b7a47c2c589adcbd7882d1bc6696a1b9e2b5fb81`  
		Last Modified: Thu, 12 Apr 2018 08:36:52 GMT  
		Size: 111.2 MB (111198863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9815fe4c94177dbc38d028bb244b3448c527af0cdfb450e0cb9b9b86be78fab`  
		Last Modified: Thu, 12 Apr 2018 08:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f35b216be879a5433a47836e34bb9fb8997e4755b0c27198842bab3753c3f8dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111307289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0192a7d70dbc8e7d97f445a34acf16802aec2ae182dbc0866393c3383636f26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:55:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:56:02 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:56:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:56:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:56:06 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc965c341891efad1bb75bd9a6e462088c9df2ac16d66301046f2aea458bc06`  
		Last Modified: Thu, 12 Apr 2018 09:03:53 GMT  
		Size: 109.0 MB (109009924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4324136182b2078be649cb80804806b67f91430f5d5286e7eaedbb77471cf8a3`  
		Last Modified: Thu, 12 Apr 2018 09:03:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; 386

```console
$ docker pull golang@sha256:b1ef8107d31d43b9c739ff016f5c8f27d4d71ff998034e4a0813696baa910b9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1c4c7bed63ba4602558b3e2547546771cafda702fb7b11577193dd461c888`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:03:40 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 13 Apr 2018 20:05:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:05:58 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:05:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:05:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:05:59 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04392d6dbfce7bbe29cde0310020d07380a583bb5ac17ff4cacbaa825f2404`  
		Last Modified: Fri, 13 Apr 2018 20:11:55 GMT  
		Size: 112.6 MB (112602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9cdfefd8e82c32ca29178e8e7f28f01aa9e44b310ee0bd80823119942751bf`  
		Last Modified: Fri, 13 Apr 2018 20:11:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:1703213fd4f20f30e38c9e8e308a0e7f8ca58d18089c095bea6d5d170e15a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60e21b3d523f853257ff10f46f8206eebb325e787babd863d5d7d201df5c380`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:24:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:24:43 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:24:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:24:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:24:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92473223693582fcfc091541416f84dd313bf325ec064a04eb9c5e8a36da3573`  
		Last Modified: Thu, 12 Apr 2018 08:30:36 GMT  
		Size: 109.0 MB (109006847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cb7a90d6bf985a84230253ff39c5db7bbf531423007c20b7e2b6257284b80`  
		Last Modified: Thu, 12 Apr 2018 08:30:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; s390x

```console
$ docker pull golang@sha256:11d80187dc260cc3b2daf9b217948ed2fa07f218275e918c41f2202f64e462a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115936135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea341f8a0a12ef657cf292925a44f1875b53ae3fdc393b80d7e549595c11977`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 11:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:47:38 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:47:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:47:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:47:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df2fc5ccb3f4914eedcbc06cdeffedccab6e94393679e6c93d5f532735a806`  
		Last Modified: Thu, 12 Apr 2018 11:50:31 GMT  
		Size: 113.4 MB (113441453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d73467edcbf2f261e22069c5ccf66e3f38a93dc2cec2fcfccb00cd32112d84e`  
		Last Modified: Thu, 12 Apr 2018 11:50:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-alpine3.7`

```console
$ docker pull golang@sha256:356aea725be911d52e0f2f0344a17ac3d97c54c74d50b8561f58eae6cc0871bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.10-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:8feac1bd797378827a82529e8d31290799df5a637235f10220355d6268f6eecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115632343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d894fca6d4b4f9d0c31abbec419c4515fbea5b8e93fef81b2f38ed9b3b173e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 11 Apr 2018 17:21:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:21:13 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:21:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:21:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6678747892c3d3b99cafaaf96a55f7b0649bb5e0eda79547fb20c593820dd61`  
		Last Modified: Wed, 11 Apr 2018 17:41:25 GMT  
		Size: 113.3 MB (113258672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5f22d8b231edd526e2606d6636678e40369ceceaafe500696dc44d4c4166a`  
		Last Modified: Wed, 11 Apr 2018 17:41:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:d98cc903f00f47488b65984ec9e0fc1c8c8ce2bc123a7e3b661d2c64152d80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c10e8072f53f43afbe2cbf5869d625fd4f9d9ee69c87c03d8983354d1fc1d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:05:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:05:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:05:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:05:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:05:53 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c7b2c41aca361131fb052b7a47c2c589adcbd7882d1bc6696a1b9e2b5fb81`  
		Last Modified: Thu, 12 Apr 2018 08:36:52 GMT  
		Size: 111.2 MB (111198863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9815fe4c94177dbc38d028bb244b3448c527af0cdfb450e0cb9b9b86be78fab`  
		Last Modified: Thu, 12 Apr 2018 08:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f35b216be879a5433a47836e34bb9fb8997e4755b0c27198842bab3753c3f8dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111307289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0192a7d70dbc8e7d97f445a34acf16802aec2ae182dbc0866393c3383636f26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:55:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:56:02 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:56:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:56:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:56:06 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc965c341891efad1bb75bd9a6e462088c9df2ac16d66301046f2aea458bc06`  
		Last Modified: Thu, 12 Apr 2018 09:03:53 GMT  
		Size: 109.0 MB (109009924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4324136182b2078be649cb80804806b67f91430f5d5286e7eaedbb77471cf8a3`  
		Last Modified: Thu, 12 Apr 2018 09:03:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:b1ef8107d31d43b9c739ff016f5c8f27d4d71ff998034e4a0813696baa910b9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1c4c7bed63ba4602558b3e2547546771cafda702fb7b11577193dd461c888`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:03:40 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 13 Apr 2018 20:05:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:05:58 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:05:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:05:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:05:59 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04392d6dbfce7bbe29cde0310020d07380a583bb5ac17ff4cacbaa825f2404`  
		Last Modified: Fri, 13 Apr 2018 20:11:55 GMT  
		Size: 112.6 MB (112602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9cdfefd8e82c32ca29178e8e7f28f01aa9e44b310ee0bd80823119942751bf`  
		Last Modified: Fri, 13 Apr 2018 20:11:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:1703213fd4f20f30e38c9e8e308a0e7f8ca58d18089c095bea6d5d170e15a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60e21b3d523f853257ff10f46f8206eebb325e787babd863d5d7d201df5c380`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:24:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:24:43 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:24:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:24:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:24:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92473223693582fcfc091541416f84dd313bf325ec064a04eb9c5e8a36da3573`  
		Last Modified: Thu, 12 Apr 2018 08:30:36 GMT  
		Size: 109.0 MB (109006847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cb7a90d6bf985a84230253ff39c5db7bbf531423007c20b7e2b6257284b80`  
		Last Modified: Thu, 12 Apr 2018 08:30:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:11d80187dc260cc3b2daf9b217948ed2fa07f218275e918c41f2202f64e462a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115936135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea341f8a0a12ef657cf292925a44f1875b53ae3fdc393b80d7e549595c11977`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 11:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:47:38 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:47:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:47:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:47:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df2fc5ccb3f4914eedcbc06cdeffedccab6e94393679e6c93d5f532735a806`  
		Last Modified: Thu, 12 Apr 2018 11:50:31 GMT  
		Size: 113.4 MB (113441453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d73467edcbf2f261e22069c5ccf66e3f38a93dc2cec2fcfccb00cd32112d84e`  
		Last Modified: Thu, 12 Apr 2018 11:50:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
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
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
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
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver-sac2016`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.10-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
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
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
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
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-stretch`

```console
$ docker pull golang@sha256:e7331dea607f66adb0d597f43d7cb9cdc36ac73cff56536bde3311b46c5186e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.10-stretch` - linux; amd64

```console
$ docker pull golang@sha256:f0fdc456f6c882319d853d3252d94a1ea80007be095e2547dcca473c5ad39954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287900803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af690c440281a524947b15bb44fa4394eca3032c3c96f9a4efb03350dd7a1af`
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
# Wed, 02 May 2018 21:08:40 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 02 May 2018 21:08:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:08:57 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:08:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:08:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:08:58 GMT
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
	-	`sha256:f235c5ef78917f9af09421590e5e0e824a69a8a3cf02309cc696604ebf14644d`  
		Last Modified: Wed, 02 May 2018 21:31:35 GMT  
		Size: 119.9 MB (119908857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd98e20e590978aa01863ac53b0a5fa82ad14b5f301dd6e82f232e2d80f6f52`  
		Last Modified: Wed, 02 May 2018 21:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:eff26cd589c34a159853619f5853fcdc875962311e93a26933efb5d17087a914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250668113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f627eb7b4e409e2976ad8d8d4aafcd7219d257897fef54d0c245d03a3b730b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:03 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:31:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:23 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea8b1bbd4e1478ef859989a600784faabbbfbc30979a061cc5dbaad92376644`  
		Last Modified: Sat, 28 Apr 2018 16:33:02 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6c2fe02ce960c6e1e17082d2062edd1b8bad4abaf9ae663199c9f39a9d0793`  
		Last Modified: Sat, 28 Apr 2018 16:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:01842011b6960ee4ab3393de05278edf78ba3b16bf001f6b1e1253b8ba7efd4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256333779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c415c624bceba4c90e67e9022da3b23f782c1d3be4b912840f4ca7e22b7f5558`
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
# Tue, 01 May 2018 21:00:11 GMT
ENV GOLANG_VERSION=1.10.1
# Tue, 01 May 2018 21:00:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:00:32 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:00:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:00:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:00:35 GMT
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
	-	`sha256:812609ab353b766b277df13cb5dd0b5a1fd54e5a54ca6225615bb3ed02bb09f5`  
		Last Modified: Tue, 01 May 2018 21:02:54 GMT  
		Size: 102.5 MB (102484315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564e4116740ad79a98a6751270d14b9bca1f02e773b8054ee74c3faf870a500`  
		Last Modified: Tue, 01 May 2018 21:02:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; 386

```console
$ docker pull golang@sha256:55db959e96ba482afab6a57ec4cccef51a63bb2d0e1a0931f97900c50588ec0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283294635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49b4dfac6aba698bf832178599b38e9cc66bb5754499fd87ec47ee86e1339d`
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
# Sat, 28 Apr 2018 19:34:46 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 19:34:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:34:59 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:34:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:00 GMT
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
	-	`sha256:63284462132e4702c4c4731b65d81788381bf7a78b8b9498ee661c35c5ba54ef`  
		Last Modified: Sat, 28 Apr 2018 19:36:03 GMT  
		Size: 108.3 MB (108289472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238c5e1631bdedf2484d37e43a815dd16078022459760b42a850dc23db9d231`  
		Last Modified: Sat, 28 Apr 2018 19:35:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d3081efe4f5d8977d5c41e3db7431b6506591b26e58cc6917404fe6a9165284d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263880360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dfa0d4cd4a362eba3ccf4838392da0e92eb4ab8a443f35e7d63e0a47f540e4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:52 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:46:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:46:21 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:46:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:46:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1301ac0c8b038c154411da781db9ab5a93c81519111c1d55af0350cc7d1a7e4a`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 101.3 MB (101280522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb56bc4c6935e816d2090c7e35d32838ceb62765f8c7550f5ed9baef30cb04`  
		Last Modified: Sat, 28 Apr 2018 16:51:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; s390x

```console
$ docker pull golang@sha256:f591f51a2bcbceab2c533eedd672bb0616fec55bdd3825ccfb5b400a144c297f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256812972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd819385f9194859f21463fab66cd5562e8c0ec8e206929ed66b0385a2352013`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 17:59:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 17:59:37 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 17:59:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 17:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dda9c6fec4414401ff62489714c167d06388726e4f5538ee01466b90167816`  
		Last Modified: Sat, 28 Apr 2018 18:00:57 GMT  
		Size: 100.7 MB (100679434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bcbc075fcb1a6ff8e45891c46d790874dc66fa2ca973659dbed00adde6c45c`  
		Last Modified: Sat, 28 Apr 2018 18:00:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore`

```console
$ docker pull golang@sha256:51462342db563174cc5dd0bd34e22eba2065ce0b9ea4e11b57d6dae26df2d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.10-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore-1709`

```console
$ docker pull golang@sha256:51462342db563174cc5dd0bd34e22eba2065ce0b9ea4e11b57d6dae26df2d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.10-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:fbaa2deef1c92ea228745852bf562c0475937fb448976fe0b1c2bdd398fc12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1.10-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:e58af737d4bf04b5ffd0ff11899accaf2f7463fdb7c34e07d869e7c54d876b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.16299.371; amd64

### `golang:1.9` - linux; amd64

```console
$ docker pull golang@sha256:4c412ed3b7ceb95b053ccde6baa63d033dfb667ead15e96caa261d511a81b3b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273708156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b4fb1b6c7943b9b18138401c5b3139bbc79087da2e427146cf73129721fed`
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
# Wed, 02 May 2018 21:11:07 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 02 May 2018 21:11:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:11:21 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:11:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:11:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:11:23 GMT
WORKDIR /go
# Wed, 02 May 2018 21:11:24 GMT
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
	-	`sha256:26416dc48904f6ea10df6ed6dc183e9e6711827536b1fc604b95c143efcec589`  
		Last Modified: Wed, 02 May 2018 21:37:53 GMT  
		Size: 105.7 MB (105714845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b0dec0e83c6368bdac7db42a170a8095ae388f2c62a362b2a8aa51d1e18c55`  
		Last Modified: Wed, 02 May 2018 21:37:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f54e21f6e077586554604eab139ca7e7b295651857293beba03d7b0dbfef9`  
		Last Modified: Wed, 02 May 2018 21:37:29 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:6909e6042edb0c4f1872c055bd603b5aff4d33360369dee5d67668e946a773d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238765825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6071d4f8382f015ca0f6bc8fd571c964673dcb1d5dea4da2d349c5a539b79d9`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:34 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 16:31:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:52 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:54 GMT
WORKDIR /go
# Sat, 28 Apr 2018 16:31:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e85322bf4d029d660bd94f4ff317034fbc6d5cd062d95350793d8622fa648a`  
		Last Modified: Sat, 28 Apr 2018 16:34:08 GMT  
		Size: 91.1 MB (91093050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0884399ff5031bd046a4f798db3121bcd20a47a25c692d3b42ec258e9528ac`  
		Last Modified: Sat, 28 Apr 2018 16:33:42 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e25e7610ac7a7a0702df873fc5f46cc4e910c73e2d29e728463f336abf57c`  
		Last Modified: Sat, 28 Apr 2018 16:33:42 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:045d33195d3fb23d9bdb02da409410588e9f6cef1f5d09127684329d9a84a1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243549065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5aa1806864a2127d2ce38a1f156afecc24c9558060931d0688f980bd664d59`
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
# Tue, 01 May 2018 21:01:00 GMT
ENV GOLANG_VERSION=1.9.5
# Tue, 01 May 2018 21:01:26 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:01:27 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:01:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:01:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:01:31 GMT
WORKDIR /go
# Tue, 01 May 2018 21:01:32 GMT
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
	-	`sha256:8ede3b2b78a02277592eb22abd1bb1de70482a5ebfe3c2b367392e242028ebd9`  
		Last Modified: Tue, 01 May 2018 21:04:02 GMT  
		Size: 89.7 MB (89698234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fe45c3c38f2ba07674c0c7f41e4291f3d5060ab1a456d3d2d742c127027ab8`  
		Last Modified: Tue, 01 May 2018 21:03:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3210a663a1fbf0ddd02b990304ac22897db5e32701d46ff91c4df511e931feaf`  
		Last Modified: Tue, 01 May 2018 21:03:28 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:3b68cbc12e248ff266a066dec4e665fc617c94d5672e800af430cef200202d92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268355131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20abed79210569e7ae0deae23d5d214adb885e99247a30bdf07fb409a27f375d`
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
# Sat, 28 Apr 2018 19:35:05 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 19:35:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:35:16 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:17 GMT
WORKDIR /go
# Sat, 28 Apr 2018 19:35:17 GMT
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
	-	`sha256:6eaaf1c93c3a1da04a822957a4f7c96403750844d7efaefa32718610a594e953`  
		Last Modified: Sat, 28 Apr 2018 19:36:45 GMT  
		Size: 93.3 MB (93348602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44401407d599ebf82089a5f4542618c9b9458ba2dc29f60711e0055210bcd2`  
		Last Modified: Sat, 28 Apr 2018 19:36:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b15402b0caf90c04be7d37b4d3c0f32dbc8fe952b5f884304b67f56a1ec0ddb`  
		Last Modified: Sat, 28 Apr 2018 19:36:27 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; ppc64le

```console
$ docker pull golang@sha256:73886eb1013e7d3baa6d35ca3628bbeb1963274799c9de1c990f94b66fdfe80a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251800681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f949c74d2778052050005d2a32eafdcf9ae859136a797b78e064216e64d003de`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:49:25 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 16:49:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:49:50 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:49:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:49:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:49:57 GMT
WORKDIR /go
# Sat, 28 Apr 2018 16:49:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3702a3ce2cc2139d567e5e9fd36f75e85e849bc41668bd6cedae9983a2c16e14`  
		Last Modified: Sat, 28 Apr 2018 16:58:14 GMT  
		Size: 89.2 MB (89199476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c72aaab403a6701329e33f6799623f870b965d01b19737c2f4936b6927ad9e0`  
		Last Modified: Sat, 28 Apr 2018 16:56:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1f53f982b80ded14d3cc8329bf8ce740ffd45ec467ca4f369decb1901880af`  
		Last Modified: Sat, 28 Apr 2018 16:56:40 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; s390x

```console
$ docker pull golang@sha256:07c3641da39cbef440a15282b5f1cf4cb55052ed5fe77b14862592c0da50b68c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244995320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a9c747932cbd80be78a7095cbca8fe11a306799782efbb1af06c585040d4e0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:54 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 18:00:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 18:00:03 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 18:00:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 18:00:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 18:00:04 GMT
WORKDIR /go
# Sat, 28 Apr 2018 18:00:04 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf49ebcec95d2716963d91b9a205082248a2854001ffe72ec1de677f1003f6`  
		Last Modified: Sat, 28 Apr 2018 18:01:48 GMT  
		Size: 88.9 MB (88860416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2e308200992ec1cdad7864cddc541d9e59c49a44887417f5089585f4fd7542`  
		Last Modified: Sat, 28 Apr 2018 18:01:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3348d443f97d7fc701bdfd54ec834c3979665315613f4003a07205d559ae89`  
		Last Modified: Sat, 28 Apr 2018 18:01:27 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:86cf284924674922d0781111100bda5aa056f517da6bc834e481912cc8e7e77a
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181140551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2f8fbedc39b53c246a379c7b4644fac0c95df584c7d476c397327b8e276576`
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
# Thu, 26 Apr 2018 17:08:01 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 26 Apr 2018 17:12:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 17:12:38 GMT
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
	-	`sha256:466155abda1be28336d3e0dd8a95bf5fc919b6a37b29577d75376f1c4598fa7d`  
		Last Modified: Thu, 26 Apr 2018 17:19:52 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c594ac81792506e549fba754b097727ceddd07437917a3ada0c1f3012f83aaac`  
		Last Modified: Thu, 26 Apr 2018 17:21:03 GMT  
		Size: 111.6 MB (111571461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfebaa31237b8da00ed4dbd832cf9a9924675128dfc7278c22eb56560061d453`  
		Last Modified: Thu, 26 Apr 2018 17:19:51 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.6`

**does not exist** (yet?)

## `golang:1.9.6-alpine`

**does not exist** (yet?)

## `golang:1.9.6-alpine3.6`

**does not exist** (yet?)

## `golang:1.9.6-alpine3.7`

**does not exist** (yet?)

## `golang:1.9.6-nanoserver`

**does not exist** (yet?)

## `golang:1.9.6-nanoserver-sac2016`

**does not exist** (yet?)

## `golang:1.9.6-stretch`

**does not exist** (yet?)

## `golang:1.9.6-windowsservercore`

**does not exist** (yet?)

## `golang:1.9.6-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.9.6-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:df2cceab08bed0a6c10fca714cdacafe79fdafb1b58961bac913eb2d0bd8af68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:444149875b3b880af5b8c418a06930f6446ea29bb18907deecee2a9eb9fb63e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82631263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a7f7ec2272306e57657519a5277325645caaefe73303424a6eef16759f6e4a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:41:32 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 11 Apr 2018 17:39:32 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Wed, 11 Apr 2018 17:40:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:40:28 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:40:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:40:29 GMT
WORKDIR /go
# Wed, 11 Apr 2018 17:40:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e3a151260390757123b4bfe7b111ec64bb0a90cdff5f1d311351af87c80c3f`  
		Last Modified: Tue, 09 Jan 2018 23:06:07 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36919bd07e41e92d4153303ba4cd8e91bb7576f107d6d059b275a5484f530a7d`  
		Last Modified: Wed, 11 Apr 2018 17:45:25 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aac57864ee6e3edc04c961f5db737144b772d55b8471efb8cd1d833fc1377e`  
		Last Modified: Wed, 11 Apr 2018 17:45:50 GMT  
		Size: 80.3 MB (80286249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60c9e058f048158afdbdf0aa2c9911ced71e3818ecc345bf8c0bcd398d542a9`  
		Last Modified: Wed, 11 Apr 2018 17:45:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f15163aa193f5a84380073f9c0128a8ca22aa0b55e8accf71abc06f3cde492b`  
		Last Modified: Wed, 11 Apr 2018 17:45:24 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:bf209f5da96696809bd7790ad41e14158cffdcffdbdb4974a3747d399dfcbbcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80410145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c36a212b6e76d3d62ab576b953ff1f707824fb955923f2644053d617c8e3e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:11:42 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 17:11:43 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:19:37 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:33:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:33:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:33:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:33:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:33:54 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:33:55 GMT
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
	-	`sha256:9891ff73b3f10067032881bf89c7e694dfe2ad3a86edcf8a008585fdc0892f47`  
		Last Modified: Mon, 02 Apr 2018 17:31:53 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c651942570b47415ea46f4131157ad9799512eb52cf1b2bede8e483ec4a3d675`  
		Last Modified: Thu, 12 Apr 2018 08:39:47 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63238b73f5ee5d957af4eab8964b19dddb8a2a74c985720d5e8ed598ba210058`  
		Last Modified: Thu, 12 Apr 2018 08:41:29 GMT  
		Size: 78.1 MB (78089480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1cef83db26452d9036a2d66807b5426580c316b750ac88b6d9d12870a519e4`  
		Last Modified: Thu, 12 Apr 2018 08:39:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab90d3588290a0533090dd39d5718f41aaa7d9fbc3caf66fb84baa2d259afadd`  
		Last Modified: Thu, 12 Apr 2018 08:39:47 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:486e4a0d73adba30361e83485001ee570aff872acd0fd4a3e7fabc29ea061568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78746315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209527165a1d5557924c5e75a1e052e70dffe890eb76d673402824e8fcfd6596`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:47:19 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 09:00:25 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 09:02:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 09:02:24 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 09:02:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 09:02:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 09:02:27 GMT
WORKDIR /go
# Thu, 12 Apr 2018 09:02:29 GMT
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
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dc727f4db08eb1689aa48e26336d09adc9ba3986cea66de59ba13b0af8e1c7`  
		Last Modified: Thu, 12 Apr 2018 09:09:46 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429ec24a75f26f2250e846aa4a098314e3e64ebf61d5f46a871787dbc4f3690f`  
		Last Modified: Thu, 12 Apr 2018 09:10:16 GMT  
		Size: 76.5 MB (76477613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aae4eb5ab491b7cb61b0f5bfeeca2e504339f71ab0a4a26099216b5f9e4195`  
		Last Modified: Thu, 12 Apr 2018 09:09:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b55ae325ae752acf7a21c0636ff456f3cff5963dd5e3b231a21236641c1952`  
		Last Modified: Thu, 12 Apr 2018 09:09:45 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; 386

```console
$ docker pull golang@sha256:eb25b1734391e9702c06bbd11da1cb489029d3f231e9fcc99d93ea958d0fb468
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81357532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7331d652ab2b5438653a9d4c2664beea64a0cc31b12da5c86c4c9a9d287bebe8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:08:08 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:08:08 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 13 Apr 2018 20:08:09 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 13 Apr 2018 20:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:10:01 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:10:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:10:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:10:02 GMT
WORKDIR /go
# Fri, 13 Apr 2018 20:10:02 GMT
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
	-	`sha256:c1f56f159ee29cb79a6f3d7e5fa17d1d2a689bf24d6077131c885b9f659759a8`  
		Last Modified: Fri, 13 Apr 2018 20:13:37 GMT  
		Size: 352.1 KB (352109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b38d60083900c009e6f91fc138a4c3a587b3a3b3e2dcb2cafa51f02449711e`  
		Last Modified: Fri, 13 Apr 2018 20:13:35 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1679fc043d3661202704bb05281f3c91fd31026db3548535b899f7c3240eab35`  
		Last Modified: Fri, 13 Apr 2018 20:14:06 GMT  
		Size: 79.0 MB (78957377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0808d1b3b214fa14215b571d79b98c631c6c34a1176412dabf0d63d56f87cc5d`  
		Last Modified: Fri, 13 Apr 2018 20:13:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ccb13bb970eca3a745824ed2fb09dbbc1d3d4999537c7ab710f8b5c1af3780`  
		Last Modified: Fri, 13 Apr 2018 20:13:35 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:c19e7a5f9b32460f08f69d6b13ab9995fccec88abb8f1721c74959c32dab5e94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78317473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06163cdbac6bbb3aa6d14ae612909d392deed9d6c2553e6d35e7bc58f6b84e47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:44:08 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:27:17 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:29:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:29:16 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:29:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:29:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:29:24 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:29:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8618f7cf9066acb6d2548a77f0c06f206405a8385f0abed493f918ba2609e30b`  
		Last Modified: Thu, 12 Apr 2018 08:32:53 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a135cac649bda517907412baa929b1d44b20971c39f0c3e91b8d2cd8ba1ba24`  
		Last Modified: Thu, 12 Apr 2018 08:33:15 GMT  
		Size: 76.0 MB (75952145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2325a2989f8d7bc5a6a4d6a7cc9d23b40b3ae83f7f4e5951e628779c1bbcf02d`  
		Last Modified: Thu, 12 Apr 2018 08:32:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211fa9963ff6b78b5505c74d5b22b4ab46b29dda28d27d30ae91f0654e860d8e`  
		Last Modified: Thu, 12 Apr 2018 08:32:53 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; s390x

```console
$ docker pull golang@sha256:3da512952905c00366139817070bb8ea4d9814e489c607a94c5db4c533ad5522
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82323354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979d7df27f46f5654b1aade8a9ed517c7e31ee6cf4a07e729dc9de5cd60cd23d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:47:35 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 11:48:38 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 11:49:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:49:39 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:49:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:49:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:49:40 GMT
WORKDIR /go
# Thu, 12 Apr 2018 11:49:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356de29abcf258fe5136c4aa54860df91b70b89771e0f780a36ee1ad5e61658`  
		Last Modified: Thu, 12 Apr 2018 11:51:42 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5805a6110c9df71760effb0c707128b97193a80b7090d77382de9c414afb7e`  
		Last Modified: Thu, 12 Apr 2018 11:51:59 GMT  
		Size: 79.9 MB (79902931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637bbb8cc490703b2ddb778246dd43e63803500b265c70b6df739d7a3b4aeee5`  
		Last Modified: Thu, 12 Apr 2018 11:51:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654dde9de9acf614758ba17e0796a742e6902086103c5f2eeada0c45662b02ae`  
		Last Modified: Thu, 12 Apr 2018 11:51:42 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:df2cceab08bed0a6c10fca714cdacafe79fdafb1b58961bac913eb2d0bd8af68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:444149875b3b880af5b8c418a06930f6446ea29bb18907deecee2a9eb9fb63e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82631263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a7f7ec2272306e57657519a5277325645caaefe73303424a6eef16759f6e4a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:41:32 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 11 Apr 2018 17:39:32 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Wed, 11 Apr 2018 17:40:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:40:28 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:40:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:40:29 GMT
WORKDIR /go
# Wed, 11 Apr 2018 17:40:30 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e3a151260390757123b4bfe7b111ec64bb0a90cdff5f1d311351af87c80c3f`  
		Last Modified: Tue, 09 Jan 2018 23:06:07 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36919bd07e41e92d4153303ba4cd8e91bb7576f107d6d059b275a5484f530a7d`  
		Last Modified: Wed, 11 Apr 2018 17:45:25 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aac57864ee6e3edc04c961f5db737144b772d55b8471efb8cd1d833fc1377e`  
		Last Modified: Wed, 11 Apr 2018 17:45:50 GMT  
		Size: 80.3 MB (80286249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60c9e058f048158afdbdf0aa2c9911ced71e3818ecc345bf8c0bcd398d542a9`  
		Last Modified: Wed, 11 Apr 2018 17:45:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f15163aa193f5a84380073f9c0128a8ca22aa0b55e8accf71abc06f3cde492b`  
		Last Modified: Wed, 11 Apr 2018 17:45:24 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:bf209f5da96696809bd7790ad41e14158cffdcffdbdb4974a3747d399dfcbbcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80410145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c36a212b6e76d3d62ab576b953ff1f707824fb955923f2644053d617c8e3e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:11:42 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 17:11:43 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:19:37 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:33:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:33:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:33:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:33:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:33:54 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:33:55 GMT
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
	-	`sha256:9891ff73b3f10067032881bf89c7e694dfe2ad3a86edcf8a008585fdc0892f47`  
		Last Modified: Mon, 02 Apr 2018 17:31:53 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c651942570b47415ea46f4131157ad9799512eb52cf1b2bede8e483ec4a3d675`  
		Last Modified: Thu, 12 Apr 2018 08:39:47 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63238b73f5ee5d957af4eab8964b19dddb8a2a74c985720d5e8ed598ba210058`  
		Last Modified: Thu, 12 Apr 2018 08:41:29 GMT  
		Size: 78.1 MB (78089480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1cef83db26452d9036a2d66807b5426580c316b750ac88b6d9d12870a519e4`  
		Last Modified: Thu, 12 Apr 2018 08:39:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab90d3588290a0533090dd39d5718f41aaa7d9fbc3caf66fb84baa2d259afadd`  
		Last Modified: Thu, 12 Apr 2018 08:39:47 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:486e4a0d73adba30361e83485001ee570aff872acd0fd4a3e7fabc29ea061568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78746315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209527165a1d5557924c5e75a1e052e70dffe890eb76d673402824e8fcfd6596`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:47:19 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 09:00:25 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 09:02:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 09:02:24 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 09:02:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 09:02:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 09:02:27 GMT
WORKDIR /go
# Thu, 12 Apr 2018 09:02:29 GMT
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
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2dc727f4db08eb1689aa48e26336d09adc9ba3986cea66de59ba13b0af8e1c7`  
		Last Modified: Thu, 12 Apr 2018 09:09:46 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429ec24a75f26f2250e846aa4a098314e3e64ebf61d5f46a871787dbc4f3690f`  
		Last Modified: Thu, 12 Apr 2018 09:10:16 GMT  
		Size: 76.5 MB (76477613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aae4eb5ab491b7cb61b0f5bfeeca2e504339f71ab0a4a26099216b5f9e4195`  
		Last Modified: Thu, 12 Apr 2018 09:09:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b55ae325ae752acf7a21c0636ff456f3cff5963dd5e3b231a21236641c1952`  
		Last Modified: Thu, 12 Apr 2018 09:09:45 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:eb25b1734391e9702c06bbd11da1cb489029d3f231e9fcc99d93ea958d0fb468
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81357532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7331d652ab2b5438653a9d4c2664beea64a0cc31b12da5c86c4c9a9d287bebe8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:08:08 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:08:08 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 13 Apr 2018 20:08:09 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 13 Apr 2018 20:10:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:10:01 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:10:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:10:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:10:02 GMT
WORKDIR /go
# Fri, 13 Apr 2018 20:10:02 GMT
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
	-	`sha256:c1f56f159ee29cb79a6f3d7e5fa17d1d2a689bf24d6077131c885b9f659759a8`  
		Last Modified: Fri, 13 Apr 2018 20:13:37 GMT  
		Size: 352.1 KB (352109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b38d60083900c009e6f91fc138a4c3a587b3a3b3e2dcb2cafa51f02449711e`  
		Last Modified: Fri, 13 Apr 2018 20:13:35 GMT  
		Size: 794.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1679fc043d3661202704bb05281f3c91fd31026db3548535b899f7c3240eab35`  
		Last Modified: Fri, 13 Apr 2018 20:14:06 GMT  
		Size: 79.0 MB (78957377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0808d1b3b214fa14215b571d79b98c631c6c34a1176412dabf0d63d56f87cc5d`  
		Last Modified: Fri, 13 Apr 2018 20:13:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ccb13bb970eca3a745824ed2fb09dbbc1d3d4999537c7ab710f8b5c1af3780`  
		Last Modified: Fri, 13 Apr 2018 20:13:35 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:c19e7a5f9b32460f08f69d6b13ab9995fccec88abb8f1721c74959c32dab5e94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78317473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06163cdbac6bbb3aa6d14ae612909d392deed9d6c2553e6d35e7bc58f6b84e47`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:44:08 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:27:17 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:29:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:29:16 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:29:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:29:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:29:24 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:29:24 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8618f7cf9066acb6d2548a77f0c06f206405a8385f0abed493f918ba2609e30b`  
		Last Modified: Thu, 12 Apr 2018 08:32:53 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a135cac649bda517907412baa929b1d44b20971c39f0c3e91b8d2cd8ba1ba24`  
		Last Modified: Thu, 12 Apr 2018 08:33:15 GMT  
		Size: 76.0 MB (75952145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2325a2989f8d7bc5a6a4d6a7cc9d23b40b3ae83f7f4e5951e628779c1bbcf02d`  
		Last Modified: Thu, 12 Apr 2018 08:32:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211fa9963ff6b78b5505c74d5b22b4ab46b29dda28d27d30ae91f0654e860d8e`  
		Last Modified: Thu, 12 Apr 2018 08:32:53 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:3da512952905c00366139817070bb8ea4d9814e489c607a94c5db4c533ad5522
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82323354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979d7df27f46f5654b1aade8a9ed517c7e31ee6cf4a07e729dc9de5cd60cd23d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:47:35 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 11:48:38 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 11:49:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:49:39 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:49:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:49:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:49:40 GMT
WORKDIR /go
# Thu, 12 Apr 2018 11:49:40 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356de29abcf258fe5136c4aa54860df91b70b89771e0f780a36ee1ad5e61658`  
		Last Modified: Thu, 12 Apr 2018 11:51:42 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5805a6110c9df71760effb0c707128b97193a80b7090d77382de9c414afb7e`  
		Last Modified: Thu, 12 Apr 2018 11:51:59 GMT  
		Size: 79.9 MB (79902931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637bbb8cc490703b2ddb778246dd43e63803500b265c70b6df739d7a3b4aeee5`  
		Last Modified: Thu, 12 Apr 2018 11:51:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654dde9de9acf614758ba17e0796a742e6902086103c5f2eeada0c45662b02ae`  
		Last Modified: Thu, 12 Apr 2018 11:51:42 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.7`

```console
$ docker pull golang@sha256:4f27622bd3ecf319b0ee906de1ab30c503a0a6ae46a12beae07e3188882d6a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:f7244b5165d499916f2db7bec89508fcb3ef0efe7b983a0acbd860ca86ece058
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82656774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00135cbae2dc54ae6bfddaf051dde9a3254f79acda4cd9528b6d4943ceceae3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:28:28 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 11 Apr 2018 17:21:35 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Wed, 11 Apr 2018 17:22:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:22:31 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:22:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:22:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:22:33 GMT
WORKDIR /go
# Wed, 11 Apr 2018 17:22:33 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d418a8a4c27858d09f5a9116ed567c854364dac4fd5cfc83470854bc6462da8`  
		Last Modified: Wed, 11 Apr 2018 17:44:09 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7185acd561e372061c9b3ce3627cb7491d77d8ccb268f0752e95863870c2ad4`  
		Last Modified: Wed, 11 Apr 2018 17:44:34 GMT  
		Size: 80.3 MB (80280956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dff80b5aa9fa57c071fb0d6b48972ade52c9f3fa9bc02d2d13e70a329e5693f`  
		Last Modified: Wed, 11 Apr 2018 17:44:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df941ddbd77374a593b0c1e48f00d4949378d5ea3e56c4a45f998dfcfc564ab8`  
		Last Modified: Wed, 11 Apr 2018 17:44:10 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:3c1665650fa29f971838428722be82f36e2292bfed7dcdafbcb9752a0ef69c19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79788807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe615eff1fcb47c1676a693e66f5b301eb2b6e8c7ca94c3e0e2bd98bd377155b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:58:47 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:06:07 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:19:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:19:25 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:19:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:19:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:19:30 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:19:32 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94704411e2f4ad5ca3d0cfa9666ad780c22c979d36966ded932be83871d7ff8f`  
		Last Modified: Thu, 12 Apr 2018 08:37:34 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c764249486c14fc3329f100fee111d9ab7c06b2528c07c26535cf9dcfdbcb43`  
		Last Modified: Thu, 12 Apr 2018 08:39:30 GMT  
		Size: 77.4 MB (77439092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173dad4afdbdd97865d7059a80a00f83b4550e95a5e1911ed8d3848bf464a955`  
		Last Modified: Thu, 12 Apr 2018 08:37:35 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d020857b8273491f1c5b55681e5e08cccdf59da5e9b0598bccd1ce07943ed5`  
		Last Modified: Thu, 12 Apr 2018 08:37:34 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:41db7aa5f03290822fc9bbe250c7546d0d0639fde8cb8eebc20e1ccab19da40f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78171926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33051d435fc6417b4b359f61a19f7fd50855e154db7df6c53bbca0e777d199f9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:45:01 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:56:48 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:58:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:58:35 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:58:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:58:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:58:57 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:59:18 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4bb99b30bd454310ae774e12433f411b3b4cf466bfdb1c0d09c33a296f9488`  
		Last Modified: Thu, 12 Apr 2018 09:08:23 GMT  
		Size: 793.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa639746b9c335b6b86db75bf63774b795d64d051b520eaf854203b8de4010bf`  
		Last Modified: Thu, 12 Apr 2018 09:08:56 GMT  
		Size: 75.9 MB (75872412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe3fa9e8ca1e77465b421ac53bf77299d22ab93f50ff765c5dc727ffa45f07`  
		Last Modified: Thu, 12 Apr 2018 09:08:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b02b94ba745b0a8cf769f4418d505f5efb398a2d0aa822a32ba6e13698a6a9`  
		Last Modified: Thu, 12 Apr 2018 09:08:23 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:fd17be798807ee7289e9fad1feadef6f8aa0cb25ba22c15ffaedbf5646e02363
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80793648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649944fbe0f0103217b0f39076af4962c6800f5f7c956b72c63e5d1091307645`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:06:41 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 13 Apr 2018 20:06:41 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Fri, 13 Apr 2018 20:07:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:07:56 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:07:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:07:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:07:57 GMT
WORKDIR /go
# Fri, 13 Apr 2018 20:07:57 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae235d35393000ff01e392c3b1546c281e09880461877cac783cf517e79f23a`  
		Last Modified: Fri, 13 Apr 2018 20:12:56 GMT  
		Size: 789.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039bebdca6c2911913709b461276ea484e0e3b1e8ae72a709ed544bb171ed94d`  
		Last Modified: Fri, 13 Apr 2018 20:13:27 GMT  
		Size: 78.4 MB (78356230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6dabf39241a0daee47009e2a2f1e87adbc702c7566dbab053dddf4418c841dd`  
		Last Modified: Fri, 13 Apr 2018 20:12:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df1347b2e0e91f82f0478e9d10ad6c334df9b66d972381b6d5aea0eb39e4be`  
		Last Modified: Fri, 13 Apr 2018 20:12:55 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:9ebc4d0136fa0d93e3b48bf464c5485d5848a4125abcf64be93a80f9d28aafcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77714347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddeb3b7a0dadbd54eab113fae87655ef82657badf065856617c4153d960ad2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:37 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 08:25:19 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 08:26:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:26:49 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:26:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:26:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:26:51 GMT
WORKDIR /go
# Thu, 12 Apr 2018 08:26:52 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa4cc7d23ca95ca041c5113e837cecc385b3e6d4ac62ea19567ba1f2d5f3a12`  
		Last Modified: Thu, 12 Apr 2018 08:32:08 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94592f85469353967dd65b09a1ccd4b2bde512fbe52fd34d82842815b3463c27`  
		Last Modified: Thu, 12 Apr 2018 08:32:30 GMT  
		Size: 75.3 MB (75319772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57912d6b089ed0a6270cc084a1a6989f5dff6b356c3a32c6b2b87e0e64d548f4`  
		Last Modified: Thu, 12 Apr 2018 08:32:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a67e06cb329eecaa05e97a9fff7808e420660e060d98ca32c4511543e9399e4`  
		Last Modified: Thu, 12 Apr 2018 08:32:08 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:1a3a2af83d258f30aa932c8741f8482e8417479290d7511edcb4e9b32feb7870
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81963997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842558b1fdb298f8949d59641ea049e1e876f38b6a3d697bde001be7e2fda683`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:45:41 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 12 Apr 2018 11:47:49 GMT
COPY file:35020011dbed5df0452f3f37a6ea999d5a5fc56c8d1d958cb5295ea422c21321 in /go-alpine-patches/ 
# Thu, 12 Apr 2018 11:48:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:48:30 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:48:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:48:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:48:31 GMT
WORKDIR /go
# Thu, 12 Apr 2018 11:48:31 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a20dba6cb7eaa7748640a26b27fb78006cc03f8bd6db26495700d4ad7e8bb`  
		Last Modified: Thu, 12 Apr 2018 11:51:11 GMT  
		Size: 790.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c954ca81193cab0ba8ac1da32c499a54338182ca24b46af5b577eefbc96b7def`  
		Last Modified: Thu, 12 Apr 2018 11:51:28 GMT  
		Size: 79.5 MB (79467168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d5e0b6590d09f2f0779a5b5ac0fca51f3f1452d501e5d20b7369a6285cb96e`  
		Last Modified: Thu, 12 Apr 2018 11:51:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e88674635ef008d6e63dcc84f70e64549982743f064bb1ef2661ae7c71bff`  
		Last Modified: Thu, 12 Apr 2018 11:51:11 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:aee31443b0e087990ee1cfe66263ef261664d0e25977bc59e32be932437948c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:86c004af66068a595c4e1401c57b3c0203725d625c9ecf58602c1f1ae4800a53
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.7 MB (520735239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5555e4f63a124cf0712f19de9b6da8676f1c40f19bf94e4264a037dc9b7453`
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
# Wed, 25 Apr 2018 22:27:04 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 26 Apr 2018 17:17:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 17:17:31 GMT
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
	-	`sha256:60b60c112af6c8ce4d9f06ef62ceab735220005cbc3aa89a1484aa4722aea157`  
		Last Modified: Thu, 26 Apr 2018 17:21:16 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413af96b822d1aa351cc759d8f2cdcb12e25c51abb6f9bc569e2cb4d04afc82`  
		Last Modified: Thu, 26 Apr 2018 17:22:26 GMT  
		Size: 107.8 MB (107809467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e409d64d33c93ce8a6bd17b9cb8ed03f7370d7bb3994feed7acdabe69c87d0be`  
		Last Modified: Thu, 26 Apr 2018 17:21:18 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver-sac2016`

```console
$ docker pull golang@sha256:aee31443b0e087990ee1cfe66263ef261664d0e25977bc59e32be932437948c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1.9-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:86c004af66068a595c4e1401c57b3c0203725d625c9ecf58602c1f1ae4800a53
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.7 MB (520735239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5555e4f63a124cf0712f19de9b6da8676f1c40f19bf94e4264a037dc9b7453`
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
# Wed, 25 Apr 2018 22:27:04 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 26 Apr 2018 17:17:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 17:17:31 GMT
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
	-	`sha256:60b60c112af6c8ce4d9f06ef62ceab735220005cbc3aa89a1484aa4722aea157`  
		Last Modified: Thu, 26 Apr 2018 17:21:16 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413af96b822d1aa351cc759d8f2cdcb12e25c51abb6f9bc569e2cb4d04afc82`  
		Last Modified: Thu, 26 Apr 2018 17:22:26 GMT  
		Size: 107.8 MB (107809467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e409d64d33c93ce8a6bd17b9cb8ed03f7370d7bb3994feed7acdabe69c87d0be`  
		Last Modified: Thu, 26 Apr 2018 17:21:18 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:e30310588adf197f3af576da13fb5b8768566d9adaa377a6455bff870977b943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-stretch` - linux; amd64

```console
$ docker pull golang@sha256:4c412ed3b7ceb95b053ccde6baa63d033dfb667ead15e96caa261d511a81b3b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273708156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848b4fb1b6c7943b9b18138401c5b3139bbc79087da2e427146cf73129721fed`
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
# Wed, 02 May 2018 21:11:07 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 02 May 2018 21:11:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:11:21 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:11:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:11:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:11:23 GMT
WORKDIR /go
# Wed, 02 May 2018 21:11:24 GMT
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
	-	`sha256:26416dc48904f6ea10df6ed6dc183e9e6711827536b1fc604b95c143efcec589`  
		Last Modified: Wed, 02 May 2018 21:37:53 GMT  
		Size: 105.7 MB (105714845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b0dec0e83c6368bdac7db42a170a8095ae388f2c62a362b2a8aa51d1e18c55`  
		Last Modified: Wed, 02 May 2018 21:37:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609f54e21f6e077586554604eab139ca7e7b295651857293beba03d7b0dbfef9`  
		Last Modified: Wed, 02 May 2018 21:37:29 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:6909e6042edb0c4f1872c055bd603b5aff4d33360369dee5d67668e946a773d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238765825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6071d4f8382f015ca0f6bc8fd571c964673dcb1d5dea4da2d349c5a539b79d9`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:34 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 16:31:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:52 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:54 GMT
WORKDIR /go
# Sat, 28 Apr 2018 16:31:54 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e85322bf4d029d660bd94f4ff317034fbc6d5cd062d95350793d8622fa648a`  
		Last Modified: Sat, 28 Apr 2018 16:34:08 GMT  
		Size: 91.1 MB (91093050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0884399ff5031bd046a4f798db3121bcd20a47a25c692d3b42ec258e9528ac`  
		Last Modified: Sat, 28 Apr 2018 16:33:42 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e25e7610ac7a7a0702df873fc5f46cc4e910c73e2d29e728463f336abf57c`  
		Last Modified: Sat, 28 Apr 2018 16:33:42 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:045d33195d3fb23d9bdb02da409410588e9f6cef1f5d09127684329d9a84a1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243549065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5aa1806864a2127d2ce38a1f156afecc24c9558060931d0688f980bd664d59`
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
# Tue, 01 May 2018 21:01:00 GMT
ENV GOLANG_VERSION=1.9.5
# Tue, 01 May 2018 21:01:26 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:01:27 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:01:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:01:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:01:31 GMT
WORKDIR /go
# Tue, 01 May 2018 21:01:32 GMT
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
	-	`sha256:8ede3b2b78a02277592eb22abd1bb1de70482a5ebfe3c2b367392e242028ebd9`  
		Last Modified: Tue, 01 May 2018 21:04:02 GMT  
		Size: 89.7 MB (89698234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fe45c3c38f2ba07674c0c7f41e4291f3d5060ab1a456d3d2d742c127027ab8`  
		Last Modified: Tue, 01 May 2018 21:03:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3210a663a1fbf0ddd02b990304ac22897db5e32701d46ff91c4df511e931feaf`  
		Last Modified: Tue, 01 May 2018 21:03:28 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:3b68cbc12e248ff266a066dec4e665fc617c94d5672e800af430cef200202d92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268355131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20abed79210569e7ae0deae23d5d214adb885e99247a30bdf07fb409a27f375d`
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
# Sat, 28 Apr 2018 19:35:05 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 19:35:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:35:16 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:17 GMT
WORKDIR /go
# Sat, 28 Apr 2018 19:35:17 GMT
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
	-	`sha256:6eaaf1c93c3a1da04a822957a4f7c96403750844d7efaefa32718610a594e953`  
		Last Modified: Sat, 28 Apr 2018 19:36:45 GMT  
		Size: 93.3 MB (93348602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44401407d599ebf82089a5f4542618c9b9458ba2dc29f60711e0055210bcd2`  
		Last Modified: Sat, 28 Apr 2018 19:36:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b15402b0caf90c04be7d37b4d3c0f32dbc8fe952b5f884304b67f56a1ec0ddb`  
		Last Modified: Sat, 28 Apr 2018 19:36:27 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:73886eb1013e7d3baa6d35ca3628bbeb1963274799c9de1c990f94b66fdfe80a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251800681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f949c74d2778052050005d2a32eafdcf9ae859136a797b78e064216e64d003de`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:49:25 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 16:49:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:49:50 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:49:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:49:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:49:57 GMT
WORKDIR /go
# Sat, 28 Apr 2018 16:49:58 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3702a3ce2cc2139d567e5e9fd36f75e85e849bc41668bd6cedae9983a2c16e14`  
		Last Modified: Sat, 28 Apr 2018 16:58:14 GMT  
		Size: 89.2 MB (89199476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c72aaab403a6701329e33f6799623f870b965d01b19737c2f4936b6927ad9e0`  
		Last Modified: Sat, 28 Apr 2018 16:56:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1f53f982b80ded14d3cc8329bf8ce740ffd45ec467ca4f369decb1901880af`  
		Last Modified: Sat, 28 Apr 2018 16:56:40 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; s390x

```console
$ docker pull golang@sha256:07c3641da39cbef440a15282b5f1cf4cb55052ed5fe77b14862592c0da50b68c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244995320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a9c747932cbd80be78a7095cbca8fe11a306799782efbb1af06c585040d4e0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:54 GMT
ENV GOLANG_VERSION=1.9.5
# Sat, 28 Apr 2018 18:00:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 18:00:03 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 18:00:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 18:00:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 18:00:04 GMT
WORKDIR /go
# Sat, 28 Apr 2018 18:00:04 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf49ebcec95d2716963d91b9a205082248a2854001ffe72ec1de677f1003f6`  
		Last Modified: Sat, 28 Apr 2018 18:01:48 GMT  
		Size: 88.9 MB (88860416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2e308200992ec1cdad7864cddc541d9e59c49a44887417f5089585f4fd7542`  
		Last Modified: Sat, 28 Apr 2018 18:01:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3348d443f97d7fc701bdfd54ec834c3979665315613f4003a07205d559ae89`  
		Last Modified: Sat, 28 Apr 2018 18:01:27 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:9b4e1724e67fe22ef12aa85344a6c1291caca76260a6b7af7ec0e9eebb9551d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:86cf284924674922d0781111100bda5aa056f517da6bc834e481912cc8e7e77a
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181140551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2f8fbedc39b53c246a379c7b4644fac0c95df584c7d476c397327b8e276576`
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
# Thu, 26 Apr 2018 17:08:01 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 26 Apr 2018 17:12:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 17:12:38 GMT
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
	-	`sha256:466155abda1be28336d3e0dd8a95bf5fc919b6a37b29577d75376f1c4598fa7d`  
		Last Modified: Thu, 26 Apr 2018 17:19:52 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c594ac81792506e549fba754b097727ceddd07437917a3ada0c1f3012f83aaac`  
		Last Modified: Thu, 26 Apr 2018 17:21:03 GMT  
		Size: 111.6 MB (111571461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfebaa31237b8da00ed4dbd832cf9a9924675128dfc7278c22eb56560061d453`  
		Last Modified: Thu, 26 Apr 2018 17:19:51 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore-1709`

```console
$ docker pull golang@sha256:9b4e1724e67fe22ef12aa85344a6c1291caca76260a6b7af7ec0e9eebb9551d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1.9-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:86cf284924674922d0781111100bda5aa056f517da6bc834e481912cc8e7e77a
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181140551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2f8fbedc39b53c246a379c7b4644fac0c95df584c7d476c397327b8e276576`
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
# Thu, 26 Apr 2018 17:08:01 GMT
ENV GOLANG_VERSION=1.9.5
# Thu, 26 Apr 2018 17:12:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 17:12:38 GMT
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
	-	`sha256:466155abda1be28336d3e0dd8a95bf5fc919b6a37b29577d75376f1c4598fa7d`  
		Last Modified: Thu, 26 Apr 2018 17:19:52 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c594ac81792506e549fba754b097727ceddd07437917a3ada0c1f3012f83aaac`  
		Last Modified: Thu, 26 Apr 2018 17:21:03 GMT  
		Size: 111.6 MB (111571461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfebaa31237b8da00ed4dbd832cf9a9924675128dfc7278c22eb56560061d453`  
		Last Modified: Thu, 26 Apr 2018 17:19:51 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:61d0315049826d14a27dc59c724be9305530f993b12828765f7f73b98be53ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1.9-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:ca81ae85b9d28a69010ca2a8d309b7cfec60b44cbab0fb735d78aa6fa0042b42
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5531992619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2faa933bf49e02d465e7ecaa55a4f2c84b0bcc565ac087a7d50d778e40d28a5a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 03:47:01 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:00:53 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:00:56 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db8cdf5fa0b2d8f5e19d96fd41359f4427f71da6b5177f6b69615c0ef1d7a85`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c821b39e288ba3e4e6db1a0ff34b294b221b6aa09a2b8bdcfea9bd215b7a5`  
		Last Modified: Wed, 14 Feb 2018 04:50:58 GMT  
		Size: 116.2 MB (116178605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be8d97356a1a809f20bf4bd3a22ed153af7bff498e8ed74e95006f01c645ae5`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:356aea725be911d52e0f2f0344a17ac3d97c54c74d50b8561f58eae6cc0871bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:8feac1bd797378827a82529e8d31290799df5a637235f10220355d6268f6eecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115632343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d894fca6d4b4f9d0c31abbec419c4515fbea5b8e93fef81b2f38ed9b3b173e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 11 Apr 2018 17:21:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:21:13 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:21:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:21:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6678747892c3d3b99cafaaf96a55f7b0649bb5e0eda79547fb20c593820dd61`  
		Last Modified: Wed, 11 Apr 2018 17:41:25 GMT  
		Size: 113.3 MB (113258672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5f22d8b231edd526e2606d6636678e40369ceceaafe500696dc44d4c4166a`  
		Last Modified: Wed, 11 Apr 2018 17:41:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:d98cc903f00f47488b65984ec9e0fc1c8c8ce2bc123a7e3b661d2c64152d80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c10e8072f53f43afbe2cbf5869d625fd4f9d9ee69c87c03d8983354d1fc1d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:05:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:05:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:05:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:05:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:05:53 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c7b2c41aca361131fb052b7a47c2c589adcbd7882d1bc6696a1b9e2b5fb81`  
		Last Modified: Thu, 12 Apr 2018 08:36:52 GMT  
		Size: 111.2 MB (111198863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9815fe4c94177dbc38d028bb244b3448c527af0cdfb450e0cb9b9b86be78fab`  
		Last Modified: Thu, 12 Apr 2018 08:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f35b216be879a5433a47836e34bb9fb8997e4755b0c27198842bab3753c3f8dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111307289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0192a7d70dbc8e7d97f445a34acf16802aec2ae182dbc0866393c3383636f26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:55:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:56:02 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:56:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:56:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:56:06 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc965c341891efad1bb75bd9a6e462088c9df2ac16d66301046f2aea458bc06`  
		Last Modified: Thu, 12 Apr 2018 09:03:53 GMT  
		Size: 109.0 MB (109009924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4324136182b2078be649cb80804806b67f91430f5d5286e7eaedbb77471cf8a3`  
		Last Modified: Thu, 12 Apr 2018 09:03:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:b1ef8107d31d43b9c739ff016f5c8f27d4d71ff998034e4a0813696baa910b9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1c4c7bed63ba4602558b3e2547546771cafda702fb7b11577193dd461c888`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:03:40 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 13 Apr 2018 20:05:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:05:58 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:05:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:05:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:05:59 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04392d6dbfce7bbe29cde0310020d07380a583bb5ac17ff4cacbaa825f2404`  
		Last Modified: Fri, 13 Apr 2018 20:11:55 GMT  
		Size: 112.6 MB (112602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9cdfefd8e82c32ca29178e8e7f28f01aa9e44b310ee0bd80823119942751bf`  
		Last Modified: Fri, 13 Apr 2018 20:11:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:1703213fd4f20f30e38c9e8e308a0e7f8ca58d18089c095bea6d5d170e15a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60e21b3d523f853257ff10f46f8206eebb325e787babd863d5d7d201df5c380`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:24:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:24:43 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:24:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:24:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:24:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92473223693582fcfc091541416f84dd313bf325ec064a04eb9c5e8a36da3573`  
		Last Modified: Thu, 12 Apr 2018 08:30:36 GMT  
		Size: 109.0 MB (109006847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cb7a90d6bf985a84230253ff39c5db7bbf531423007c20b7e2b6257284b80`  
		Last Modified: Thu, 12 Apr 2018 08:30:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:11d80187dc260cc3b2daf9b217948ed2fa07f218275e918c41f2202f64e462a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115936135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea341f8a0a12ef657cf292925a44f1875b53ae3fdc393b80d7e549595c11977`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 11:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:47:38 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:47:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:47:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:47:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df2fc5ccb3f4914eedcbc06cdeffedccab6e94393679e6c93d5f532735a806`  
		Last Modified: Thu, 12 Apr 2018 11:50:31 GMT  
		Size: 113.4 MB (113441453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d73467edcbf2f261e22069c5ccf66e3f38a93dc2cec2fcfccb00cd32112d84e`  
		Last Modified: Thu, 12 Apr 2018 11:50:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:356aea725be911d52e0f2f0344a17ac3d97c54c74d50b8561f58eae6cc0871bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:8feac1bd797378827a82529e8d31290799df5a637235f10220355d6268f6eecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115632343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d894fca6d4b4f9d0c31abbec419c4515fbea5b8e93fef81b2f38ed9b3b173e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 11 Apr 2018 17:21:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:21:13 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:21:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:21:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6678747892c3d3b99cafaaf96a55f7b0649bb5e0eda79547fb20c593820dd61`  
		Last Modified: Wed, 11 Apr 2018 17:41:25 GMT  
		Size: 113.3 MB (113258672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5f22d8b231edd526e2606d6636678e40369ceceaafe500696dc44d4c4166a`  
		Last Modified: Wed, 11 Apr 2018 17:41:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:d98cc903f00f47488b65984ec9e0fc1c8c8ce2bc123a7e3b661d2c64152d80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c10e8072f53f43afbe2cbf5869d625fd4f9d9ee69c87c03d8983354d1fc1d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:05:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:05:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:05:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:05:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:05:53 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c7b2c41aca361131fb052b7a47c2c589adcbd7882d1bc6696a1b9e2b5fb81`  
		Last Modified: Thu, 12 Apr 2018 08:36:52 GMT  
		Size: 111.2 MB (111198863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9815fe4c94177dbc38d028bb244b3448c527af0cdfb450e0cb9b9b86be78fab`  
		Last Modified: Thu, 12 Apr 2018 08:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f35b216be879a5433a47836e34bb9fb8997e4755b0c27198842bab3753c3f8dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111307289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0192a7d70dbc8e7d97f445a34acf16802aec2ae182dbc0866393c3383636f26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:55:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:56:02 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:56:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:56:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:56:06 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc965c341891efad1bb75bd9a6e462088c9df2ac16d66301046f2aea458bc06`  
		Last Modified: Thu, 12 Apr 2018 09:03:53 GMT  
		Size: 109.0 MB (109009924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4324136182b2078be649cb80804806b67f91430f5d5286e7eaedbb77471cf8a3`  
		Last Modified: Thu, 12 Apr 2018 09:03:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:b1ef8107d31d43b9c739ff016f5c8f27d4d71ff998034e4a0813696baa910b9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1c4c7bed63ba4602558b3e2547546771cafda702fb7b11577193dd461c888`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:03:40 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 13 Apr 2018 20:05:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:05:58 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:05:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:05:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:05:59 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04392d6dbfce7bbe29cde0310020d07380a583bb5ac17ff4cacbaa825f2404`  
		Last Modified: Fri, 13 Apr 2018 20:11:55 GMT  
		Size: 112.6 MB (112602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9cdfefd8e82c32ca29178e8e7f28f01aa9e44b310ee0bd80823119942751bf`  
		Last Modified: Fri, 13 Apr 2018 20:11:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:1703213fd4f20f30e38c9e8e308a0e7f8ca58d18089c095bea6d5d170e15a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60e21b3d523f853257ff10f46f8206eebb325e787babd863d5d7d201df5c380`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:24:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:24:43 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:24:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:24:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:24:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92473223693582fcfc091541416f84dd313bf325ec064a04eb9c5e8a36da3573`  
		Last Modified: Thu, 12 Apr 2018 08:30:36 GMT  
		Size: 109.0 MB (109006847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cb7a90d6bf985a84230253ff39c5db7bbf531423007c20b7e2b6257284b80`  
		Last Modified: Thu, 12 Apr 2018 08:30:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:11d80187dc260cc3b2daf9b217948ed2fa07f218275e918c41f2202f64e462a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115936135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea341f8a0a12ef657cf292925a44f1875b53ae3fdc393b80d7e549595c11977`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 11:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:47:38 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:47:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:47:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:47:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df2fc5ccb3f4914eedcbc06cdeffedccab6e94393679e6c93d5f532735a806`  
		Last Modified: Thu, 12 Apr 2018 11:50:31 GMT  
		Size: 113.4 MB (113441453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d73467edcbf2f261e22069c5ccf66e3f38a93dc2cec2fcfccb00cd32112d84e`  
		Last Modified: Thu, 12 Apr 2018 11:50:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
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
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
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
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1-nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
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
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
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
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:e7331dea607f66adb0d597f43d7cb9cdc36ac73cff56536bde3311b46c5186e9
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
$ docker pull golang@sha256:f0fdc456f6c882319d853d3252d94a1ea80007be095e2547dcca473c5ad39954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287900803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af690c440281a524947b15bb44fa4394eca3032c3c96f9a4efb03350dd7a1af`
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
# Wed, 02 May 2018 21:08:40 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 02 May 2018 21:08:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:08:57 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:08:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:08:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:08:58 GMT
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
	-	`sha256:f235c5ef78917f9af09421590e5e0e824a69a8a3cf02309cc696604ebf14644d`  
		Last Modified: Wed, 02 May 2018 21:31:35 GMT  
		Size: 119.9 MB (119908857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd98e20e590978aa01863ac53b0a5fa82ad14b5f301dd6e82f232e2d80f6f52`  
		Last Modified: Wed, 02 May 2018 21:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:eff26cd589c34a159853619f5853fcdc875962311e93a26933efb5d17087a914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250668113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f627eb7b4e409e2976ad8d8d4aafcd7219d257897fef54d0c245d03a3b730b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:03 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:31:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:23 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea8b1bbd4e1478ef859989a600784faabbbfbc30979a061cc5dbaad92376644`  
		Last Modified: Sat, 28 Apr 2018 16:33:02 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6c2fe02ce960c6e1e17082d2062edd1b8bad4abaf9ae663199c9f39a9d0793`  
		Last Modified: Sat, 28 Apr 2018 16:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:01842011b6960ee4ab3393de05278edf78ba3b16bf001f6b1e1253b8ba7efd4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256333779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c415c624bceba4c90e67e9022da3b23f782c1d3be4b912840f4ca7e22b7f5558`
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
# Tue, 01 May 2018 21:00:11 GMT
ENV GOLANG_VERSION=1.10.1
# Tue, 01 May 2018 21:00:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:00:32 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:00:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:00:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:00:35 GMT
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
	-	`sha256:812609ab353b766b277df13cb5dd0b5a1fd54e5a54ca6225615bb3ed02bb09f5`  
		Last Modified: Tue, 01 May 2018 21:02:54 GMT  
		Size: 102.5 MB (102484315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564e4116740ad79a98a6751270d14b9bca1f02e773b8054ee74c3faf870a500`  
		Last Modified: Tue, 01 May 2018 21:02:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:55db959e96ba482afab6a57ec4cccef51a63bb2d0e1a0931f97900c50588ec0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283294635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49b4dfac6aba698bf832178599b38e9cc66bb5754499fd87ec47ee86e1339d`
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
# Sat, 28 Apr 2018 19:34:46 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 19:34:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:34:59 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:34:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:00 GMT
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
	-	`sha256:63284462132e4702c4c4731b65d81788381bf7a78b8b9498ee661c35c5ba54ef`  
		Last Modified: Sat, 28 Apr 2018 19:36:03 GMT  
		Size: 108.3 MB (108289472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238c5e1631bdedf2484d37e43a815dd16078022459760b42a850dc23db9d231`  
		Last Modified: Sat, 28 Apr 2018 19:35:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d3081efe4f5d8977d5c41e3db7431b6506591b26e58cc6917404fe6a9165284d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263880360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dfa0d4cd4a362eba3ccf4838392da0e92eb4ab8a443f35e7d63e0a47f540e4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:52 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:46:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:46:21 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:46:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:46:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1301ac0c8b038c154411da781db9ab5a93c81519111c1d55af0350cc7d1a7e4a`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 101.3 MB (101280522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb56bc4c6935e816d2090c7e35d32838ceb62765f8c7550f5ed9baef30cb04`  
		Last Modified: Sat, 28 Apr 2018 16:51:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:f591f51a2bcbceab2c533eedd672bb0616fec55bdd3825ccfb5b400a144c297f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256812972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd819385f9194859f21463fab66cd5562e8c0ec8e206929ed66b0385a2352013`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 17:59:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 17:59:37 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 17:59:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 17:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dda9c6fec4414401ff62489714c167d06388726e4f5538ee01466b90167816`  
		Last Modified: Sat, 28 Apr 2018 18:00:57 GMT  
		Size: 100.7 MB (100679434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bcbc075fcb1a6ff8e45891c46d790874dc66fa2ca973659dbed00adde6c45c`  
		Last Modified: Sat, 28 Apr 2018 18:00:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:51462342db563174cc5dd0bd34e22eba2065ce0b9ea4e11b57d6dae26df2d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1709`

```console
$ docker pull golang@sha256:51462342db563174cc5dd0bd34e22eba2065ce0b9ea4e11b57d6dae26df2d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:1-windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:fbaa2deef1c92ea228745852bf562c0475937fb448976fe0b1c2bdd398fc12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:356aea725be911d52e0f2f0344a17ac3d97c54c74d50b8561f58eae6cc0871bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:8feac1bd797378827a82529e8d31290799df5a637235f10220355d6268f6eecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115632343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d894fca6d4b4f9d0c31abbec419c4515fbea5b8e93fef81b2f38ed9b3b173e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 11 Apr 2018 17:21:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:21:13 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:21:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:21:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6678747892c3d3b99cafaaf96a55f7b0649bb5e0eda79547fb20c593820dd61`  
		Last Modified: Wed, 11 Apr 2018 17:41:25 GMT  
		Size: 113.3 MB (113258672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5f22d8b231edd526e2606d6636678e40369ceceaafe500696dc44d4c4166a`  
		Last Modified: Wed, 11 Apr 2018 17:41:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:d98cc903f00f47488b65984ec9e0fc1c8c8ce2bc123a7e3b661d2c64152d80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c10e8072f53f43afbe2cbf5869d625fd4f9d9ee69c87c03d8983354d1fc1d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:05:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:05:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:05:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:05:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:05:53 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c7b2c41aca361131fb052b7a47c2c589adcbd7882d1bc6696a1b9e2b5fb81`  
		Last Modified: Thu, 12 Apr 2018 08:36:52 GMT  
		Size: 111.2 MB (111198863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9815fe4c94177dbc38d028bb244b3448c527af0cdfb450e0cb9b9b86be78fab`  
		Last Modified: Thu, 12 Apr 2018 08:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f35b216be879a5433a47836e34bb9fb8997e4755b0c27198842bab3753c3f8dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111307289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0192a7d70dbc8e7d97f445a34acf16802aec2ae182dbc0866393c3383636f26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:55:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:56:02 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:56:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:56:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:56:06 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc965c341891efad1bb75bd9a6e462088c9df2ac16d66301046f2aea458bc06`  
		Last Modified: Thu, 12 Apr 2018 09:03:53 GMT  
		Size: 109.0 MB (109009924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4324136182b2078be649cb80804806b67f91430f5d5286e7eaedbb77471cf8a3`  
		Last Modified: Thu, 12 Apr 2018 09:03:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:b1ef8107d31d43b9c739ff016f5c8f27d4d71ff998034e4a0813696baa910b9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1c4c7bed63ba4602558b3e2547546771cafda702fb7b11577193dd461c888`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:03:40 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 13 Apr 2018 20:05:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:05:58 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:05:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:05:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:05:59 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04392d6dbfce7bbe29cde0310020d07380a583bb5ac17ff4cacbaa825f2404`  
		Last Modified: Fri, 13 Apr 2018 20:11:55 GMT  
		Size: 112.6 MB (112602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9cdfefd8e82c32ca29178e8e7f28f01aa9e44b310ee0bd80823119942751bf`  
		Last Modified: Fri, 13 Apr 2018 20:11:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:1703213fd4f20f30e38c9e8e308a0e7f8ca58d18089c095bea6d5d170e15a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60e21b3d523f853257ff10f46f8206eebb325e787babd863d5d7d201df5c380`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:24:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:24:43 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:24:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:24:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:24:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92473223693582fcfc091541416f84dd313bf325ec064a04eb9c5e8a36da3573`  
		Last Modified: Thu, 12 Apr 2018 08:30:36 GMT  
		Size: 109.0 MB (109006847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cb7a90d6bf985a84230253ff39c5db7bbf531423007c20b7e2b6257284b80`  
		Last Modified: Thu, 12 Apr 2018 08:30:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:11d80187dc260cc3b2daf9b217948ed2fa07f218275e918c41f2202f64e462a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115936135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea341f8a0a12ef657cf292925a44f1875b53ae3fdc393b80d7e549595c11977`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 11:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:47:38 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:47:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:47:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:47:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df2fc5ccb3f4914eedcbc06cdeffedccab6e94393679e6c93d5f532735a806`  
		Last Modified: Thu, 12 Apr 2018 11:50:31 GMT  
		Size: 113.4 MB (113441453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d73467edcbf2f261e22069c5ccf66e3f38a93dc2cec2fcfccb00cd32112d84e`  
		Last Modified: Thu, 12 Apr 2018 11:50:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.7`

```console
$ docker pull golang@sha256:356aea725be911d52e0f2f0344a17ac3d97c54c74d50b8561f58eae6cc0871bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:8feac1bd797378827a82529e8d31290799df5a637235f10220355d6268f6eecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115632343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d894fca6d4b4f9d0c31abbec419c4515fbea5b8e93fef81b2f38ed9b3b173e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 11 Apr 2018 17:21:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 11 Apr 2018 17:21:13 GMT
ENV GOPATH=/go
# Wed, 11 Apr 2018 17:21:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Apr 2018 17:21:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 11 Apr 2018 17:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6678747892c3d3b99cafaaf96a55f7b0649bb5e0eda79547fb20c593820dd61`  
		Last Modified: Wed, 11 Apr 2018 17:41:25 GMT  
		Size: 113.3 MB (113258672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5f22d8b231edd526e2606d6636678e40369ceceaafe500696dc44d4c4166a`  
		Last Modified: Wed, 11 Apr 2018 17:41:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:d98cc903f00f47488b65984ec9e0fc1c8c8ce2bc123a7e3b661d2c64152d80df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c10e8072f53f43afbe2cbf5869d625fd4f9d9ee69c87c03d8983354d1fc1d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:05:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:05:48 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:05:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:05:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:05:53 GMT
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
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07c7b2c41aca361131fb052b7a47c2c589adcbd7882d1bc6696a1b9e2b5fb81`  
		Last Modified: Thu, 12 Apr 2018 08:36:52 GMT  
		Size: 111.2 MB (111198863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9815fe4c94177dbc38d028bb244b3448c527af0cdfb450e0cb9b9b86be78fab`  
		Last Modified: Thu, 12 Apr 2018 08:34:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f35b216be879a5433a47836e34bb9fb8997e4755b0c27198842bab3753c3f8dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111307289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0192a7d70dbc8e7d97f445a34acf16802aec2ae182dbc0866393c3383636f26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:55:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:56:02 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:56:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:56:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:56:06 GMT
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
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc965c341891efad1bb75bd9a6e462088c9df2ac16d66301046f2aea458bc06`  
		Last Modified: Thu, 12 Apr 2018 09:03:53 GMT  
		Size: 109.0 MB (109009924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4324136182b2078be649cb80804806b67f91430f5d5286e7eaedbb77471cf8a3`  
		Last Modified: Thu, 12 Apr 2018 09:03:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:b1ef8107d31d43b9c739ff016f5c8f27d4d71ff998034e4a0813696baa910b9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115037850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda1c4c7bed63ba4602558b3e2547546771cafda702fb7b11577193dd461c888`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 13 Apr 2018 20:03:40 GMT
RUN apk add --no-cache ca-certificates
# Fri, 13 Apr 2018 20:03:40 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 13 Apr 2018 20:05:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 13 Apr 2018 20:05:58 GMT
ENV GOPATH=/go
# Fri, 13 Apr 2018 20:05:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 20:05:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 13 Apr 2018 20:05:59 GMT
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
	-	`sha256:2a6dc43af0e56ccba3ff54a0af2007334b4bafd49554557332e5aa1a55e087b7`  
		Last Modified: Fri, 13 Apr 2018 20:11:13 GMT  
		Size: 308.8 KB (308752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04392d6dbfce7bbe29cde0310020d07380a583bb5ac17ff4cacbaa825f2404`  
		Last Modified: Fri, 13 Apr 2018 20:11:55 GMT  
		Size: 112.6 MB (112602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9cdfefd8e82c32ca29178e8e7f28f01aa9e44b310ee0bd80823119942751bf`  
		Last Modified: Fri, 13 Apr 2018 20:11:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:1703213fd4f20f30e38c9e8e308a0e7f8ca58d18089c095bea6d5d170e15a3ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60e21b3d523f853257ff10f46f8206eebb325e787babd863d5d7d201df5c380`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 08:24:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 08:24:43 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 08:24:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 08:24:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 08:24:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92473223693582fcfc091541416f84dd313bf325ec064a04eb9c5e8a36da3573`  
		Last Modified: Thu, 12 Apr 2018 08:30:36 GMT  
		Size: 109.0 MB (109006847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cb7a90d6bf985a84230253ff39c5db7bbf531423007c20b7e2b6257284b80`  
		Last Modified: Thu, 12 Apr 2018 08:30:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:11d80187dc260cc3b2daf9b217948ed2fa07f218275e918c41f2202f64e462a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115936135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea341f8a0a12ef657cf292925a44f1875b53ae3fdc393b80d7e549595c11977`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 12 Apr 2018 11:47:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 12 Apr 2018 11:47:38 GMT
ENV GOPATH=/go
# Thu, 12 Apr 2018 11:47:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Apr 2018 11:47:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 12 Apr 2018 11:47:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df2fc5ccb3f4914eedcbc06cdeffedccab6e94393679e6c93d5f532735a806`  
		Last Modified: Thu, 12 Apr 2018 11:50:31 GMT  
		Size: 113.4 MB (113441453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d73467edcbf2f261e22069c5ccf66e3f38a93dc2cec2fcfccb00cd32112d84e`  
		Last Modified: Thu, 12 Apr 2018 11:50:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:4826b5c314a498142c7291ad835ab6be1bf02f7813d6932d01f1f0f1383cdda1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.16299.371; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:f0fdc456f6c882319d853d3252d94a1ea80007be095e2547dcca473c5ad39954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287900803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af690c440281a524947b15bb44fa4394eca3032c3c96f9a4efb03350dd7a1af`
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
# Wed, 02 May 2018 21:08:40 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 02 May 2018 21:08:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:08:57 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:08:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:08:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:08:58 GMT
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
	-	`sha256:f235c5ef78917f9af09421590e5e0e824a69a8a3cf02309cc696604ebf14644d`  
		Last Modified: Wed, 02 May 2018 21:31:35 GMT  
		Size: 119.9 MB (119908857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd98e20e590978aa01863ac53b0a5fa82ad14b5f301dd6e82f232e2d80f6f52`  
		Last Modified: Wed, 02 May 2018 21:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:eff26cd589c34a159853619f5853fcdc875962311e93a26933efb5d17087a914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250668113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f627eb7b4e409e2976ad8d8d4aafcd7219d257897fef54d0c245d03a3b730b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:03 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:31:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:23 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea8b1bbd4e1478ef859989a600784faabbbfbc30979a061cc5dbaad92376644`  
		Last Modified: Sat, 28 Apr 2018 16:33:02 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6c2fe02ce960c6e1e17082d2062edd1b8bad4abaf9ae663199c9f39a9d0793`  
		Last Modified: Sat, 28 Apr 2018 16:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:01842011b6960ee4ab3393de05278edf78ba3b16bf001f6b1e1253b8ba7efd4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256333779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c415c624bceba4c90e67e9022da3b23f782c1d3be4b912840f4ca7e22b7f5558`
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
# Tue, 01 May 2018 21:00:11 GMT
ENV GOLANG_VERSION=1.10.1
# Tue, 01 May 2018 21:00:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:00:32 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:00:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:00:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:00:35 GMT
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
	-	`sha256:812609ab353b766b277df13cb5dd0b5a1fd54e5a54ca6225615bb3ed02bb09f5`  
		Last Modified: Tue, 01 May 2018 21:02:54 GMT  
		Size: 102.5 MB (102484315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564e4116740ad79a98a6751270d14b9bca1f02e773b8054ee74c3faf870a500`  
		Last Modified: Tue, 01 May 2018 21:02:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:55db959e96ba482afab6a57ec4cccef51a63bb2d0e1a0931f97900c50588ec0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283294635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49b4dfac6aba698bf832178599b38e9cc66bb5754499fd87ec47ee86e1339d`
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
# Sat, 28 Apr 2018 19:34:46 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 19:34:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:34:59 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:34:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:00 GMT
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
	-	`sha256:63284462132e4702c4c4731b65d81788381bf7a78b8b9498ee661c35c5ba54ef`  
		Last Modified: Sat, 28 Apr 2018 19:36:03 GMT  
		Size: 108.3 MB (108289472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238c5e1631bdedf2484d37e43a815dd16078022459760b42a850dc23db9d231`  
		Last Modified: Sat, 28 Apr 2018 19:35:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:d3081efe4f5d8977d5c41e3db7431b6506591b26e58cc6917404fe6a9165284d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263880360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dfa0d4cd4a362eba3ccf4838392da0e92eb4ab8a443f35e7d63e0a47f540e4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:52 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:46:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:46:21 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:46:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:46:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1301ac0c8b038c154411da781db9ab5a93c81519111c1d55af0350cc7d1a7e4a`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 101.3 MB (101280522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb56bc4c6935e816d2090c7e35d32838ceb62765f8c7550f5ed9baef30cb04`  
		Last Modified: Sat, 28 Apr 2018 16:51:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:f591f51a2bcbceab2c533eedd672bb0616fec55bdd3825ccfb5b400a144c297f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256812972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd819385f9194859f21463fab66cd5562e8c0ec8e206929ed66b0385a2352013`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 17:59:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 17:59:37 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 17:59:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 17:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dda9c6fec4414401ff62489714c167d06388726e4f5538ee01466b90167816`  
		Last Modified: Sat, 28 Apr 2018 18:00:57 GMT  
		Size: 100.7 MB (100679434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bcbc075fcb1a6ff8e45891c46d790874dc66fa2ca973659dbed00adde6c45c`  
		Last Modified: Sat, 28 Apr 2018 18:00:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
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
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
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
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver-sac2016`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
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
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
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
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:e7331dea607f66adb0d597f43d7cb9cdc36ac73cff56536bde3311b46c5186e9
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
$ docker pull golang@sha256:f0fdc456f6c882319d853d3252d94a1ea80007be095e2547dcca473c5ad39954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287900803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af690c440281a524947b15bb44fa4394eca3032c3c96f9a4efb03350dd7a1af`
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
# Wed, 02 May 2018 21:08:40 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 02 May 2018 21:08:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 02 May 2018 21:08:57 GMT
ENV GOPATH=/go
# Wed, 02 May 2018 21:08:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 21:08:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 02 May 2018 21:08:58 GMT
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
	-	`sha256:f235c5ef78917f9af09421590e5e0e824a69a8a3cf02309cc696604ebf14644d`  
		Last Modified: Wed, 02 May 2018 21:31:35 GMT  
		Size: 119.9 MB (119908857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd98e20e590978aa01863ac53b0a5fa82ad14b5f301dd6e82f232e2d80f6f52`  
		Last Modified: Wed, 02 May 2018 21:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:eff26cd589c34a159853619f5853fcdc875962311e93a26933efb5d17087a914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250668113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f627eb7b4e409e2976ad8d8d4aafcd7219d257897fef54d0c245d03a3b730b8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:31:03 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:31:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:31:23 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:31:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:31:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:31:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace349cf9077dbbf652348655edb2de78703789726b16652d55bb89a818e5192`  
		Last Modified: Sat, 28 Apr 2018 16:32:43 GMT  
		Size: 45.9 MB (45893919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea8b1bbd4e1478ef859989a600784faabbbfbc30979a061cc5dbaad92376644`  
		Last Modified: Sat, 28 Apr 2018 16:33:02 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6c2fe02ce960c6e1e17082d2062edd1b8bad4abaf9ae663199c9f39a9d0793`  
		Last Modified: Sat, 28 Apr 2018 16:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:01842011b6960ee4ab3393de05278edf78ba3b16bf001f6b1e1253b8ba7efd4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256333779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c415c624bceba4c90e67e9022da3b23f782c1d3be4b912840f4ca7e22b7f5558`
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
# Tue, 01 May 2018 21:00:11 GMT
ENV GOLANG_VERSION=1.10.1
# Tue, 01 May 2018 21:00:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 01 May 2018 21:00:32 GMT
ENV GOPATH=/go
# Tue, 01 May 2018 21:00:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:00:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 01 May 2018 21:00:35 GMT
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
	-	`sha256:812609ab353b766b277df13cb5dd0b5a1fd54e5a54ca6225615bb3ed02bb09f5`  
		Last Modified: Tue, 01 May 2018 21:02:54 GMT  
		Size: 102.5 MB (102484315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564e4116740ad79a98a6751270d14b9bca1f02e773b8054ee74c3faf870a500`  
		Last Modified: Tue, 01 May 2018 21:02:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:55db959e96ba482afab6a57ec4cccef51a63bb2d0e1a0931f97900c50588ec0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283294635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef49b4dfac6aba698bf832178599b38e9cc66bb5754499fd87ec47ee86e1339d`
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
# Sat, 28 Apr 2018 19:34:46 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 19:34:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 19:34:59 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 19:34:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:35:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 19:35:00 GMT
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
	-	`sha256:63284462132e4702c4c4731b65d81788381bf7a78b8b9498ee661c35c5ba54ef`  
		Last Modified: Sat, 28 Apr 2018 19:36:03 GMT  
		Size: 108.3 MB (108289472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238c5e1631bdedf2484d37e43a815dd16078022459760b42a850dc23db9d231`  
		Last Modified: Sat, 28 Apr 2018 19:35:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d3081efe4f5d8977d5c41e3db7431b6506591b26e58cc6917404fe6a9165284d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263880360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05dfa0d4cd4a362eba3ccf4838392da0e92eb4ab8a443f35e7d63e0a47f540e4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:45:52 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 16:46:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 16:46:21 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 16:46:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 16:46:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 16:46:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6309bf1dcb4e46dd803b937b7e59bd81227c12a176d75176cce3a3a88984e7c`  
		Last Modified: Sat, 28 Apr 2018 16:52:12 GMT  
		Size: 52.7 MB (52734834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1301ac0c8b038c154411da781db9ab5a93c81519111c1d55af0350cc7d1a7e4a`  
		Last Modified: Sat, 28 Apr 2018 16:53:05 GMT  
		Size: 101.3 MB (101280522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cb56bc4c6935e816d2090c7e35d32838ceb62765f8c7550f5ed9baef30cb04`  
		Last Modified: Sat, 28 Apr 2018 16:51:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:f591f51a2bcbceab2c533eedd672bb0616fec55bdd3825ccfb5b400a144c297f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256812972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd819385f9194859f21463fab66cd5562e8c0ec8e206929ed66b0385a2352013`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:59:26 GMT
ENV GOLANG_VERSION=1.10.1
# Sat, 28 Apr 2018 17:59:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 28 Apr 2018 17:59:37 GMT
ENV GOPATH=/go
# Sat, 28 Apr 2018 17:59:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:59:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 28 Apr 2018 17:59:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6f405ec9a4d73b12ce9b0b834b5eb00f3de137f8e89ca87138fd012500d427`  
		Last Modified: Sat, 28 Apr 2018 18:00:44 GMT  
		Size: 45.8 MB (45849699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56dda9c6fec4414401ff62489714c167d06388726e4f5538ee01466b90167816`  
		Last Modified: Sat, 28 Apr 2018 18:00:57 GMT  
		Size: 100.7 MB (100679434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bcbc075fcb1a6ff8e45891c46d790874dc66fa2ca973659dbed00adde6c45c`  
		Last Modified: Sat, 28 Apr 2018 18:00:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:51462342db563174cc5dd0bd34e22eba2065ce0b9ea4e11b57d6dae26df2d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1709`

```console
$ docker pull golang@sha256:51462342db563174cc5dd0bd34e22eba2065ce0b9ea4e11b57d6dae26df2d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.371; amd64

### `golang:windowsservercore-1709` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:e7a974f6c0d8103521996cd56f6b1318b36365052d3a516c0938c1fda4440ad0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195382232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075a5e2005367b0d9a0acd0e78fca5e51aa5d4e4823efe50967ba5357f4d9fff`
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
# Thu, 26 Apr 2018 16:50:24 GMT
ENV GOLANG_VERSION=1.10.1
# Thu, 26 Apr 2018 16:55:22 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:55:24 GMT
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
	-	`sha256:5016a94fe67ad293bdbe53357f3f8b9cc06e34225444d4170ebd81d89c4e7136`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a79d67e57349907695b680ffab34e56afbd67762b8ad1c94c0af2b8fa4a0c1`  
		Last Modified: Thu, 26 Apr 2018 17:19:33 GMT  
		Size: 125.8 MB (125813148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae0f00d7df34679901b881adaf20ea3668a557d5d3be1f390251b75597a1669`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:fbaa2deef1c92ea228745852bf562c0475937fb448976fe0b1c2bdd398fc12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

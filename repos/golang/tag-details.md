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
$ docker pull golang@sha256:ccf08acd74c1d41cdb9a7aed655bbac1d2b8b178b4a1c77b0f9e39e1f36ef91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11`

```console
$ docker pull golang@sha256:1360a0834ff9d699db30c2e3fea15ac4722f806db9246f907471e5d94410d260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.11` - linux; amd64

```console
$ docker pull golang@sha256:4e43734881791e140fc9c42596d718ea24b8c64354d920dffc473ddf211ef4df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289269822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a024a6ecf518d0ec5d54b46ea5ca34e51db5dffb5ec077c1280d0ea1ec6ecc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:44 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 07:42:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:42:01 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:42:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:42:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:42:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a1120c54814c2b89333b8d0db16516c61d208ca8d39480476a64e554eba139`  
		Last Modified: Wed, 08 May 2019 07:43:46 GMT  
		Size: 121.1 MB (121073409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f2e55da0680b55160ecea60195917d6c1f90be89403022f5d81da4c8f41ef8`  
		Last Modified: Wed, 08 May 2019 07:43:18 GMT  
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
$ docker pull golang@sha256:387fbeb7b6237e68d089e3efd4e5c60cedc4cd922490fd6102bb841b88a090cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279296124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc0620beff44deea744cdea4d78d30a25d29ba9293f9b0eb309f189e1c5cb1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:53 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 03:07:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:07:08 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:07:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:07:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19486c85136f04faaa0fc1524c37547a107cf7e52d2ee73fe0f74f4501a8ca86`  
		Last Modified: Thu, 09 May 2019 03:08:25 GMT  
		Size: 104.1 MB (104092801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784604e98877c5b6d930e3e70fc31ea83ae4fd6720bfcb81c0f9342661c62d53`  
		Last Modified: Thu, 09 May 2019 03:07:59 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; ppc64le

```console
$ docker pull golang@sha256:7a00bcf0c69a316bf02c7c83bbd9c7be43fdc113f1fabdb23a977aadcee72200
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261801029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5144b3dabf1a585d11970c033e6e35a7ba8163d629630cd6cc4a2d659fd559ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:13:29 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 19:14:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:14:56 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:15:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:15:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:15:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ea9f546c4fa438c92e7ed5b4d5ec57d185f7cab11832680ff11397ed307d16`  
		Last Modified: Wed, 08 May 2019 19:21:22 GMT  
		Size: 99.0 MB (99002321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b593b7e2dea9df953843b94ab617b84c73cf184be5a0fd28ce604f6179973786`  
		Last Modified: Wed, 08 May 2019 19:20:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; s390x

```console
$ docker pull golang@sha256:7b5a22b82bb49394349ce4a7f546cac1b601ddd2342b1d49669efd72564e7945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256113326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d21d1011bc728807b89809b5637fe7702838bf47ce3d4bf09080eb819abb4c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:39:14 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 01:40:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:40:21 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:40:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:40:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa2a73074bd1b059478b365445e453ec58aa48a191f3aa549d44eca1becd583`  
		Last Modified: Thu, 09 May 2019 01:44:35 GMT  
		Size: 99.8 MB (99793434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a8ad560ba4f6edf7b9b3dc8c3e6f15999812b0ab9d6621b82571c8a08a83bf`  
		Last Modified: Thu, 09 May 2019 01:43:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:bd2669615160223a849463db8f8b2a29eeaaa8c0c084181e4c0403d4a94762df
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5815614798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3656d5c51e653927cbfa1ca08973453f517a2965eeb3d0a3ab687dc3bd76d5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:27:06 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:32:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:33:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d227163d9ebf2271041ee4cafdafc52dedef10d614d9d3b10e70f9a40827c9a5`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca00edc6229bd7d6626d51ba1695c78a8aa8211257e54d30e6ed7752accadd`  
		Last Modified: Tue, 07 May 2019 23:50:37 GMT  
		Size: 138.4 MB (138439221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668e81c708d334aa2576cbb61d23286c95f1a179243eebea390d782ca3c2cfa9`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:b04f69b366f08cee05c1b9b11d870d275ee6ea0a2b8eb6e07a82345c560a6926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2414881182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615ddd15cdc50c2150d19949ce15cbc6e85b13f095118f22f5b974a18bbcd699`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:33:20 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:38:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:38:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc683a0f1ca2a0adeed46fb0808a494398a22f5fa05b4b828e83235b9fd6ff76`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c799c6faa3c469199eb5c11103b3629a12cd603c5290e0fd1040e4c4311e`  
		Last Modified: Tue, 07 May 2019 23:52:04 GMT  
		Size: 129.1 MB (129091365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd2f9c7744a0b50aab614d1515da25410f057b387ef1b46f489373dce6b1bcf`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:84919365e6b25116e897fc097c976c72ba3cd68309645fb28bcb2294586502c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2132042150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674008fe1b738c11a528c8a95b7fee923947c917d3603decc51b16434870034a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:38:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:43:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:43:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9da8beb2c1c6145cb340a24bedb11b8b31e717a7f17884d29845da4cdf958`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbfc368fc4c008bda0ee1b04f1f9a20c984ae44554bc63a0f7d96348fe38fb0`  
		Last Modified: Tue, 07 May 2019 23:53:40 GMT  
		Size: 129.1 MB (129113941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80403c6483e9ca2f41c9270465172b5c027ad437891e55225dd251e335306366`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10`

```console
$ docker pull golang@sha256:1360a0834ff9d699db30c2e3fea15ac4722f806db9246f907471e5d94410d260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.11.10` - linux; amd64

```console
$ docker pull golang@sha256:4e43734881791e140fc9c42596d718ea24b8c64354d920dffc473ddf211ef4df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289269822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a024a6ecf518d0ec5d54b46ea5ca34e51db5dffb5ec077c1280d0ea1ec6ecc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:44 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 07:42:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:42:01 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:42:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:42:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:42:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a1120c54814c2b89333b8d0db16516c61d208ca8d39480476a64e554eba139`  
		Last Modified: Wed, 08 May 2019 07:43:46 GMT  
		Size: 121.1 MB (121073409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f2e55da0680b55160ecea60195917d6c1f90be89403022f5d81da4c8f41ef8`  
		Last Modified: Wed, 08 May 2019 07:43:18 GMT  
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
$ docker pull golang@sha256:387fbeb7b6237e68d089e3efd4e5c60cedc4cd922490fd6102bb841b88a090cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279296124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc0620beff44deea744cdea4d78d30a25d29ba9293f9b0eb309f189e1c5cb1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:53 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 03:07:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:07:08 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:07:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:07:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19486c85136f04faaa0fc1524c37547a107cf7e52d2ee73fe0f74f4501a8ca86`  
		Last Modified: Thu, 09 May 2019 03:08:25 GMT  
		Size: 104.1 MB (104092801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784604e98877c5b6d930e3e70fc31ea83ae4fd6720bfcb81c0f9342661c62d53`  
		Last Modified: Thu, 09 May 2019 03:07:59 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; ppc64le

```console
$ docker pull golang@sha256:7a00bcf0c69a316bf02c7c83bbd9c7be43fdc113f1fabdb23a977aadcee72200
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261801029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5144b3dabf1a585d11970c033e6e35a7ba8163d629630cd6cc4a2d659fd559ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:13:29 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 19:14:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:14:56 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:15:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:15:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:15:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ea9f546c4fa438c92e7ed5b4d5ec57d185f7cab11832680ff11397ed307d16`  
		Last Modified: Wed, 08 May 2019 19:21:22 GMT  
		Size: 99.0 MB (99002321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b593b7e2dea9df953843b94ab617b84c73cf184be5a0fd28ce604f6179973786`  
		Last Modified: Wed, 08 May 2019 19:20:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; s390x

```console
$ docker pull golang@sha256:7b5a22b82bb49394349ce4a7f546cac1b601ddd2342b1d49669efd72564e7945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256113326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d21d1011bc728807b89809b5637fe7702838bf47ce3d4bf09080eb819abb4c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:39:14 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 01:40:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:40:21 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:40:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:40:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa2a73074bd1b059478b365445e453ec58aa48a191f3aa549d44eca1becd583`  
		Last Modified: Thu, 09 May 2019 01:44:35 GMT  
		Size: 99.8 MB (99793434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a8ad560ba4f6edf7b9b3dc8c3e6f15999812b0ab9d6621b82571c8a08a83bf`  
		Last Modified: Thu, 09 May 2019 01:43:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:bd2669615160223a849463db8f8b2a29eeaaa8c0c084181e4c0403d4a94762df
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5815614798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3656d5c51e653927cbfa1ca08973453f517a2965eeb3d0a3ab687dc3bd76d5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:27:06 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:32:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:33:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d227163d9ebf2271041ee4cafdafc52dedef10d614d9d3b10e70f9a40827c9a5`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca00edc6229bd7d6626d51ba1695c78a8aa8211257e54d30e6ed7752accadd`  
		Last Modified: Tue, 07 May 2019 23:50:37 GMT  
		Size: 138.4 MB (138439221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668e81c708d334aa2576cbb61d23286c95f1a179243eebea390d782ca3c2cfa9`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:b04f69b366f08cee05c1b9b11d870d275ee6ea0a2b8eb6e07a82345c560a6926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2414881182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615ddd15cdc50c2150d19949ce15cbc6e85b13f095118f22f5b974a18bbcd699`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:33:20 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:38:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:38:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc683a0f1ca2a0adeed46fb0808a494398a22f5fa05b4b828e83235b9fd6ff76`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c799c6faa3c469199eb5c11103b3629a12cd603c5290e0fd1040e4c4311e`  
		Last Modified: Tue, 07 May 2019 23:52:04 GMT  
		Size: 129.1 MB (129091365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd2f9c7744a0b50aab614d1515da25410f057b387ef1b46f489373dce6b1bcf`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:84919365e6b25116e897fc097c976c72ba3cd68309645fb28bcb2294586502c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2132042150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674008fe1b738c11a528c8a95b7fee923947c917d3603decc51b16434870034a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:38:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:43:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:43:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9da8beb2c1c6145cb340a24bedb11b8b31e717a7f17884d29845da4cdf958`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbfc368fc4c008bda0ee1b04f1f9a20c984ae44554bc63a0f7d96348fe38fb0`  
		Last Modified: Tue, 07 May 2019 23:53:40 GMT  
		Size: 129.1 MB (129113941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80403c6483e9ca2f41c9270465172b5c027ad437891e55225dd251e335306366`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-alpine`

```console
$ docker pull golang@sha256:ef839362daebf5e5b03113d48a7f02f42f5090ccf4eb5f2e915db3fc1307bdbd
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
$ docker pull golang@sha256:f5f05fadfd66f2876f6200675879dfffb0f228a66730f18a3f75f30b22c47386
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628cf786a2a3b7c1f66e52ccd831977c39684ccdeca0bddc299569772eac7b6a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:49:50 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 08:54:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:54:28 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:54:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:54:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:54:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e19bc065a5cb822a67da16888a5e597d18fe41c6e1a1a5fe4c7dc052f4739e`  
		Last Modified: Sat, 11 May 2019 08:58:13 GMT  
		Size: 104.2 MB (104196792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216b22167d123f1bb6bd129a76697312571d089e5a46e2f8be3dda51a6d36384`  
		Last Modified: Sat, 11 May 2019 08:57:44 GMT  
		Size: 154.0 B  
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
$ docker pull golang@sha256:f682372ac7ea8e37406561f6d3577f6bb8ba2e2faf409ba98b21d208523a276d
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
$ docker pull golang@sha256:b2a10ca19c8bc891a609a271676873d5ecc7c66ac22ffa523d06a95db03209bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106785777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb4f2cf6aef98804f9a04cddd734c81004d50e42470736f729c904475845c8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:50:37 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:50:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:15:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:17:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:17:13 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:17:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:17:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:17:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25942dbe9451bd39392e4061508aab1ceaaa2fb3759c823492a3ff7bab466538`  
		Last Modified: Fri, 08 Mar 2019 04:55:57 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feb6cf1c627a6f94fb54d97e0b7adebb0d05c898fbd1048fab5e79b232c768f`  
		Last Modified: Fri, 08 Mar 2019 04:55:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9599bde41066a3815e336fb7973cd448d8e57915f969c2981fa8fb78a1b1627a`  
		Last Modified: Tue, 07 May 2019 23:25:03 GMT  
		Size: 104.3 MB (104279546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cac3170b58aa19dfb29033464ecb828e1796f34e36ee66395f4903c95860357`  
		Last Modified: Tue, 07 May 2019 23:24:20 GMT  
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
$ docker pull golang@sha256:ef839362daebf5e5b03113d48a7f02f42f5090ccf4eb5f2e915db3fc1307bdbd
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
$ docker pull golang@sha256:f5f05fadfd66f2876f6200675879dfffb0f228a66730f18a3f75f30b22c47386
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628cf786a2a3b7c1f66e52ccd831977c39684ccdeca0bddc299569772eac7b6a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:49:50 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 08:54:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:54:28 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:54:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:54:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:54:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e19bc065a5cb822a67da16888a5e597d18fe41c6e1a1a5fe4c7dc052f4739e`  
		Last Modified: Sat, 11 May 2019 08:58:13 GMT  
		Size: 104.2 MB (104196792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216b22167d123f1bb6bd129a76697312571d089e5a46e2f8be3dda51a6d36384`  
		Last Modified: Sat, 11 May 2019 08:57:44 GMT  
		Size: 154.0 B  
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
$ docker pull golang@sha256:f7567b33b2319a4e21031f7261ccb1846a0a3870101d2d9e0cdd27cebab29a65
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
$ docker pull golang@sha256:4e43734881791e140fc9c42596d718ea24b8c64354d920dffc473ddf211ef4df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289269822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a024a6ecf518d0ec5d54b46ea5ca34e51db5dffb5ec077c1280d0ea1ec6ecc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:44 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 07:42:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:42:01 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:42:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:42:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:42:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a1120c54814c2b89333b8d0db16516c61d208ca8d39480476a64e554eba139`  
		Last Modified: Wed, 08 May 2019 07:43:46 GMT  
		Size: 121.1 MB (121073409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f2e55da0680b55160ecea60195917d6c1f90be89403022f5d81da4c8f41ef8`  
		Last Modified: Wed, 08 May 2019 07:43:18 GMT  
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
$ docker pull golang@sha256:387fbeb7b6237e68d089e3efd4e5c60cedc4cd922490fd6102bb841b88a090cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279296124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc0620beff44deea744cdea4d78d30a25d29ba9293f9b0eb309f189e1c5cb1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:53 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 03:07:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:07:08 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:07:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:07:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19486c85136f04faaa0fc1524c37547a107cf7e52d2ee73fe0f74f4501a8ca86`  
		Last Modified: Thu, 09 May 2019 03:08:25 GMT  
		Size: 104.1 MB (104092801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784604e98877c5b6d930e3e70fc31ea83ae4fd6720bfcb81c0f9342661c62d53`  
		Last Modified: Thu, 09 May 2019 03:07:59 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:7a00bcf0c69a316bf02c7c83bbd9c7be43fdc113f1fabdb23a977aadcee72200
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261801029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5144b3dabf1a585d11970c033e6e35a7ba8163d629630cd6cc4a2d659fd559ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:13:29 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 19:14:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:14:56 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:15:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:15:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:15:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ea9f546c4fa438c92e7ed5b4d5ec57d185f7cab11832680ff11397ed307d16`  
		Last Modified: Wed, 08 May 2019 19:21:22 GMT  
		Size: 99.0 MB (99002321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b593b7e2dea9df953843b94ab617b84c73cf184be5a0fd28ce604f6179973786`  
		Last Modified: Wed, 08 May 2019 19:20:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; s390x

```console
$ docker pull golang@sha256:7b5a22b82bb49394349ce4a7f546cac1b601ddd2342b1d49669efd72564e7945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256113326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d21d1011bc728807b89809b5637fe7702838bf47ce3d4bf09080eb819abb4c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:39:14 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 01:40:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:40:21 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:40:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:40:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa2a73074bd1b059478b365445e453ec58aa48a191f3aa549d44eca1becd583`  
		Last Modified: Thu, 09 May 2019 01:44:35 GMT  
		Size: 99.8 MB (99793434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a8ad560ba4f6edf7b9b3dc8c3e6f15999812b0ab9d6621b82571c8a08a83bf`  
		Last Modified: Thu, 09 May 2019 01:43:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore`

```console
$ docker pull golang@sha256:0f4d16ebaca829ce9dc4472310576ed913ba85cd9804b887cbbc95cc4d03b475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.11.10-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:bd2669615160223a849463db8f8b2a29eeaaa8c0c084181e4c0403d4a94762df
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5815614798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3656d5c51e653927cbfa1ca08973453f517a2965eeb3d0a3ab687dc3bd76d5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:27:06 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:32:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:33:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d227163d9ebf2271041ee4cafdafc52dedef10d614d9d3b10e70f9a40827c9a5`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca00edc6229bd7d6626d51ba1695c78a8aa8211257e54d30e6ed7752accadd`  
		Last Modified: Tue, 07 May 2019 23:50:37 GMT  
		Size: 138.4 MB (138439221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668e81c708d334aa2576cbb61d23286c95f1a179243eebea390d782ca3c2cfa9`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:b04f69b366f08cee05c1b9b11d870d275ee6ea0a2b8eb6e07a82345c560a6926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2414881182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615ddd15cdc50c2150d19949ce15cbc6e85b13f095118f22f5b974a18bbcd699`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:33:20 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:38:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:38:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc683a0f1ca2a0adeed46fb0808a494398a22f5fa05b4b828e83235b9fd6ff76`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c799c6faa3c469199eb5c11103b3629a12cd603c5290e0fd1040e4c4311e`  
		Last Modified: Tue, 07 May 2019 23:52:04 GMT  
		Size: 129.1 MB (129091365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd2f9c7744a0b50aab614d1515da25410f057b387ef1b46f489373dce6b1bcf`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:84919365e6b25116e897fc097c976c72ba3cd68309645fb28bcb2294586502c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2132042150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674008fe1b738c11a528c8a95b7fee923947c917d3603decc51b16434870034a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:38:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:43:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:43:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9da8beb2c1c6145cb340a24bedb11b8b31e717a7f17884d29845da4cdf958`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbfc368fc4c008bda0ee1b04f1f9a20c984ae44554bc63a0f7d96348fe38fb0`  
		Last Modified: Tue, 07 May 2019 23:53:40 GMT  
		Size: 129.1 MB (129113941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80403c6483e9ca2f41c9270465172b5c027ad437891e55225dd251e335306366`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore-1803`

```console
$ docker pull golang@sha256:92d9c7ddb550e1e2721c97dcffda8caa932afe8cc9e33b8cf686d622dd93bbd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:1.11.10-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:b04f69b366f08cee05c1b9b11d870d275ee6ea0a2b8eb6e07a82345c560a6926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2414881182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615ddd15cdc50c2150d19949ce15cbc6e85b13f095118f22f5b974a18bbcd699`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:33:20 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:38:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:38:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc683a0f1ca2a0adeed46fb0808a494398a22f5fa05b4b828e83235b9fd6ff76`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c799c6faa3c469199eb5c11103b3629a12cd603c5290e0fd1040e4c4311e`  
		Last Modified: Tue, 07 May 2019 23:52:04 GMT  
		Size: 129.1 MB (129091365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd2f9c7744a0b50aab614d1515da25410f057b387ef1b46f489373dce6b1bcf`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore-1809`

```console
$ docker pull golang@sha256:54912c906d1577bf5ef1f92a70d4687fdf2374d10e432d28395392dba5efdd43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `golang:1.11.10-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:84919365e6b25116e897fc097c976c72ba3cd68309645fb28bcb2294586502c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2132042150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674008fe1b738c11a528c8a95b7fee923947c917d3603decc51b16434870034a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:38:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:43:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:43:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9da8beb2c1c6145cb340a24bedb11b8b31e717a7f17884d29845da4cdf958`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbfc368fc4c008bda0ee1b04f1f9a20c984ae44554bc63a0f7d96348fe38fb0`  
		Last Modified: Tue, 07 May 2019 23:53:40 GMT  
		Size: 129.1 MB (129113941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80403c6483e9ca2f41c9270465172b5c027ad437891e55225dd251e335306366`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:95af67be02af9b703717b8e3cff2fcdc946cb95b3e95df0d69dc9e602a8e3171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `golang:1.11.10-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:bd2669615160223a849463db8f8b2a29eeaaa8c0c084181e4c0403d4a94762df
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5815614798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3656d5c51e653927cbfa1ca08973453f517a2965eeb3d0a3ab687dc3bd76d5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:27:06 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:32:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:33:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d227163d9ebf2271041ee4cafdafc52dedef10d614d9d3b10e70f9a40827c9a5`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca00edc6229bd7d6626d51ba1695c78a8aa8211257e54d30e6ed7752accadd`  
		Last Modified: Tue, 07 May 2019 23:50:37 GMT  
		Size: 138.4 MB (138439221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668e81c708d334aa2576cbb61d23286c95f1a179243eebea390d782ca3c2cfa9`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-alpine`

```console
$ docker pull golang@sha256:ef839362daebf5e5b03113d48a7f02f42f5090ccf4eb5f2e915db3fc1307bdbd
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
$ docker pull golang@sha256:f5f05fadfd66f2876f6200675879dfffb0f228a66730f18a3f75f30b22c47386
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628cf786a2a3b7c1f66e52ccd831977c39684ccdeca0bddc299569772eac7b6a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:49:50 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 08:54:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:54:28 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:54:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:54:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:54:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e19bc065a5cb822a67da16888a5e597d18fe41c6e1a1a5fe4c7dc052f4739e`  
		Last Modified: Sat, 11 May 2019 08:58:13 GMT  
		Size: 104.2 MB (104196792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216b22167d123f1bb6bd129a76697312571d089e5a46e2f8be3dda51a6d36384`  
		Last Modified: Sat, 11 May 2019 08:57:44 GMT  
		Size: 154.0 B  
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
$ docker pull golang@sha256:f682372ac7ea8e37406561f6d3577f6bb8ba2e2faf409ba98b21d208523a276d
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
$ docker pull golang@sha256:b2a10ca19c8bc891a609a271676873d5ecc7c66ac22ffa523d06a95db03209bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106785777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73eb4f2cf6aef98804f9a04cddd734c81004d50e42470736f729c904475845c8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:50:37 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:50:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:15:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:17:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:17:13 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:17:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:17:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:17:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25942dbe9451bd39392e4061508aab1ceaaa2fb3759c823492a3ff7bab466538`  
		Last Modified: Fri, 08 Mar 2019 04:55:57 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feb6cf1c627a6f94fb54d97e0b7adebb0d05c898fbd1048fab5e79b232c768f`  
		Last Modified: Fri, 08 Mar 2019 04:55:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9599bde41066a3815e336fb7973cd448d8e57915f969c2981fa8fb78a1b1627a`  
		Last Modified: Tue, 07 May 2019 23:25:03 GMT  
		Size: 104.3 MB (104279546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cac3170b58aa19dfb29033464ecb828e1796f34e36ee66395f4903c95860357`  
		Last Modified: Tue, 07 May 2019 23:24:20 GMT  
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
$ docker pull golang@sha256:ef839362daebf5e5b03113d48a7f02f42f5090ccf4eb5f2e915db3fc1307bdbd
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
$ docker pull golang@sha256:f5f05fadfd66f2876f6200675879dfffb0f228a66730f18a3f75f30b22c47386
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107282647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628cf786a2a3b7c1f66e52ccd831977c39684ccdeca0bddc299569772eac7b6a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:49:50 GMT
ENV GOLANG_VERSION=1.11.10
# Sat, 11 May 2019 08:54:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:54:28 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:54:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:54:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:54:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e19bc065a5cb822a67da16888a5e597d18fe41c6e1a1a5fe4c7dc052f4739e`  
		Last Modified: Sat, 11 May 2019 08:58:13 GMT  
		Size: 104.2 MB (104196792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216b22167d123f1bb6bd129a76697312571d089e5a46e2f8be3dda51a6d36384`  
		Last Modified: Sat, 11 May 2019 08:57:44 GMT  
		Size: 154.0 B  
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
$ docker pull golang@sha256:f7567b33b2319a4e21031f7261ccb1846a0a3870101d2d9e0cdd27cebab29a65
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
$ docker pull golang@sha256:4e43734881791e140fc9c42596d718ea24b8c64354d920dffc473ddf211ef4df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289269822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a024a6ecf518d0ec5d54b46ea5ca34e51db5dffb5ec077c1280d0ea1ec6ecc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:44 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 07:42:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:42:01 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:42:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:42:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:42:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a1120c54814c2b89333b8d0db16516c61d208ca8d39480476a64e554eba139`  
		Last Modified: Wed, 08 May 2019 07:43:46 GMT  
		Size: 121.1 MB (121073409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f2e55da0680b55160ecea60195917d6c1f90be89403022f5d81da4c8f41ef8`  
		Last Modified: Wed, 08 May 2019 07:43:18 GMT  
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
$ docker pull golang@sha256:387fbeb7b6237e68d089e3efd4e5c60cedc4cd922490fd6102bb841b88a090cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279296124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18fc0620beff44deea744cdea4d78d30a25d29ba9293f9b0eb309f189e1c5cb1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:53 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 03:07:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:07:08 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:07:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:07:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:07:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19486c85136f04faaa0fc1524c37547a107cf7e52d2ee73fe0f74f4501a8ca86`  
		Last Modified: Thu, 09 May 2019 03:08:25 GMT  
		Size: 104.1 MB (104092801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784604e98877c5b6d930e3e70fc31ea83ae4fd6720bfcb81c0f9342661c62d53`  
		Last Modified: Thu, 09 May 2019 03:07:59 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:7a00bcf0c69a316bf02c7c83bbd9c7be43fdc113f1fabdb23a977aadcee72200
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261801029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5144b3dabf1a585d11970c033e6e35a7ba8163d629630cd6cc4a2d659fd559ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:13:29 GMT
ENV GOLANG_VERSION=1.11.10
# Wed, 08 May 2019 19:14:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:14:56 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:15:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:15:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:15:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ea9f546c4fa438c92e7ed5b4d5ec57d185f7cab11832680ff11397ed307d16`  
		Last Modified: Wed, 08 May 2019 19:21:22 GMT  
		Size: 99.0 MB (99002321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b593b7e2dea9df953843b94ab617b84c73cf184be5a0fd28ce604f6179973786`  
		Last Modified: Wed, 08 May 2019 19:20:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; s390x

```console
$ docker pull golang@sha256:7b5a22b82bb49394349ce4a7f546cac1b601ddd2342b1d49669efd72564e7945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256113326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d21d1011bc728807b89809b5637fe7702838bf47ce3d4bf09080eb819abb4c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:39:14 GMT
ENV GOLANG_VERSION=1.11.10
# Thu, 09 May 2019 01:40:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:40:21 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:40:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:40:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa2a73074bd1b059478b365445e453ec58aa48a191f3aa549d44eca1becd583`  
		Last Modified: Thu, 09 May 2019 01:44:35 GMT  
		Size: 99.8 MB (99793434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a8ad560ba4f6edf7b9b3dc8c3e6f15999812b0ab9d6621b82571c8a08a83bf`  
		Last Modified: Thu, 09 May 2019 01:43:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore`

```console
$ docker pull golang@sha256:0f4d16ebaca829ce9dc4472310576ed913ba85cd9804b887cbbc95cc4d03b475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.11-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:bd2669615160223a849463db8f8b2a29eeaaa8c0c084181e4c0403d4a94762df
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5815614798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3656d5c51e653927cbfa1ca08973453f517a2965eeb3d0a3ab687dc3bd76d5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:27:06 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:32:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:33:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d227163d9ebf2271041ee4cafdafc52dedef10d614d9d3b10e70f9a40827c9a5`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca00edc6229bd7d6626d51ba1695c78a8aa8211257e54d30e6ed7752accadd`  
		Last Modified: Tue, 07 May 2019 23:50:37 GMT  
		Size: 138.4 MB (138439221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668e81c708d334aa2576cbb61d23286c95f1a179243eebea390d782ca3c2cfa9`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:b04f69b366f08cee05c1b9b11d870d275ee6ea0a2b8eb6e07a82345c560a6926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2414881182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615ddd15cdc50c2150d19949ce15cbc6e85b13f095118f22f5b974a18bbcd699`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:33:20 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:38:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:38:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc683a0f1ca2a0adeed46fb0808a494398a22f5fa05b4b828e83235b9fd6ff76`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c799c6faa3c469199eb5c11103b3629a12cd603c5290e0fd1040e4c4311e`  
		Last Modified: Tue, 07 May 2019 23:52:04 GMT  
		Size: 129.1 MB (129091365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd2f9c7744a0b50aab614d1515da25410f057b387ef1b46f489373dce6b1bcf`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:84919365e6b25116e897fc097c976c72ba3cd68309645fb28bcb2294586502c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2132042150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674008fe1b738c11a528c8a95b7fee923947c917d3603decc51b16434870034a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:38:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:43:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:43:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9da8beb2c1c6145cb340a24bedb11b8b31e717a7f17884d29845da4cdf958`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbfc368fc4c008bda0ee1b04f1f9a20c984ae44554bc63a0f7d96348fe38fb0`  
		Last Modified: Tue, 07 May 2019 23:53:40 GMT  
		Size: 129.1 MB (129113941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80403c6483e9ca2f41c9270465172b5c027ad437891e55225dd251e335306366`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore-1803`

```console
$ docker pull golang@sha256:92d9c7ddb550e1e2721c97dcffda8caa932afe8cc9e33b8cf686d622dd93bbd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:1.11-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:b04f69b366f08cee05c1b9b11d870d275ee6ea0a2b8eb6e07a82345c560a6926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2414881182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615ddd15cdc50c2150d19949ce15cbc6e85b13f095118f22f5b974a18bbcd699`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:33:20 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:38:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:38:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc683a0f1ca2a0adeed46fb0808a494398a22f5fa05b4b828e83235b9fd6ff76`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c799c6faa3c469199eb5c11103b3629a12cd603c5290e0fd1040e4c4311e`  
		Last Modified: Tue, 07 May 2019 23:52:04 GMT  
		Size: 129.1 MB (129091365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd2f9c7744a0b50aab614d1515da25410f057b387ef1b46f489373dce6b1bcf`  
		Last Modified: Tue, 07 May 2019 23:50:50 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore-1809`

```console
$ docker pull golang@sha256:54912c906d1577bf5ef1f92a70d4687fdf2374d10e432d28395392dba5efdd43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `golang:1.11-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:84919365e6b25116e897fc097c976c72ba3cd68309645fb28bcb2294586502c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2132042150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674008fe1b738c11a528c8a95b7fee923947c917d3603decc51b16434870034a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:38:19 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:43:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:43:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9da8beb2c1c6145cb340a24bedb11b8b31e717a7f17884d29845da4cdf958`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbfc368fc4c008bda0ee1b04f1f9a20c984ae44554bc63a0f7d96348fe38fb0`  
		Last Modified: Tue, 07 May 2019 23:53:40 GMT  
		Size: 129.1 MB (129113941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80403c6483e9ca2f41c9270465172b5c027ad437891e55225dd251e335306366`  
		Last Modified: Tue, 07 May 2019 23:52:20 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:95af67be02af9b703717b8e3cff2fcdc946cb95b3e95df0d69dc9e602a8e3171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `golang:1.11-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:bd2669615160223a849463db8f8b2a29eeaaa8c0c084181e4c0403d4a94762df
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5815614798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3656d5c51e653927cbfa1ca08973453f517a2965eeb3d0a3ab687dc3bd76d5d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:27:06 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:32:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'e0354b5cef18dbf5867fff022ed4264c441df504f3cb86c90d8b987eca336f78'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:33:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d227163d9ebf2271041ee4cafdafc52dedef10d614d9d3b10e70f9a40827c9a5`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca00edc6229bd7d6626d51ba1695c78a8aa8211257e54d30e6ed7752accadd`  
		Last Modified: Tue, 07 May 2019 23:50:37 GMT  
		Size: 138.4 MB (138439221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668e81c708d334aa2576cbb61d23286c95f1a179243eebea390d782ca3c2cfa9`  
		Last Modified: Tue, 07 May 2019 23:49:10 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12`

```console
$ docker pull golang@sha256:ccf08acd74c1d41cdb9a7aed655bbac1d2b8b178b4a1c77b0f9e39e1f36ef91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.12` - linux; amd64

```console
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5`

```console
$ docker pull golang@sha256:ccf08acd74c1d41cdb9a7aed655bbac1d2b8b178b4a1c77b0f9e39e1f36ef91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.12.5` - linux; amd64

```console
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-alpine`

```console
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:d17a1d8f0c20d108d1177d560f4afb9de10104c46df756d885cfa4282bbaac65
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
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore`

```console
$ docker pull golang@sha256:fec08bf7f3c028f96ee42f39c8b65bd069d78c8001e04b529647b715fbed5f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.12.5-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore-1803`

```console
$ docker pull golang@sha256:40b2edc3ca64ef20d2a63d98b1fdbfd1831360d55d6abc928c7421dfd0a0e5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:1.12.5-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore-1809`

```console
$ docker pull golang@sha256:a7a3ab3c7fc2f5f48e27ad2990a83e261120b7722aea95fab5a4eff19fa29fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `golang:1.12.5-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:051b905c9035302ec5417ad737002e434498fa3e8418e6313a2da83381203007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `golang:1.12.5-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-alpine`

```console
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:d17a1d8f0c20d108d1177d560f4afb9de10104c46df756d885cfa4282bbaac65
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
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore`

```console
$ docker pull golang@sha256:fec08bf7f3c028f96ee42f39c8b65bd069d78c8001e04b529647b715fbed5f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1.12-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore-1803`

```console
$ docker pull golang@sha256:40b2edc3ca64ef20d2a63d98b1fdbfd1831360d55d6abc928c7421dfd0a0e5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:1.12-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore-1809`

```console
$ docker pull golang@sha256:a7a3ab3c7fc2f5f48e27ad2990a83e261120b7722aea95fab5a4eff19fa29fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `golang:1.12-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:051b905c9035302ec5417ad737002e434498fa3e8418e6313a2da83381203007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `golang:1.12-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:d17a1d8f0c20d108d1177d560f4afb9de10104c46df756d885cfa4282bbaac65
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
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:fec08bf7f3c028f96ee42f39c8b65bd069d78c8001e04b529647b715fbed5f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1803`

```console
$ docker pull golang@sha256:40b2edc3ca64ef20d2a63d98b1fdbfd1831360d55d6abc928c7421dfd0a0e5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:1-windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1809`

```console
$ docker pull golang@sha256:a7a3ab3c7fc2f5f48e27ad2990a83e261120b7722aea95fab5a4eff19fa29fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `golang:1-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:051b905c9035302ec5417ad737002e434498fa3e8418e6313a2da83381203007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:06ba1dae97f2bf560831497f8d459c68ab75cc67bf6fc95d9bd468ac259c9924
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
$ docker pull golang@sha256:c5fb83e99e2fd0aabea7ef68e7df92556a56af0a9fdb19fc984515becb475090
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121787543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61bf9746fd7dd14c0bffef6c774d2a5566fb7a49d4774c24a21899e868dc085e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:27 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 08:46:32 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:46:36 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 08:49:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 08:49:23 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 08:49:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 08:49:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 08:49:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c3982225ede2ae861403dabe12ee2db0206fb0e00bad91fc6d401703648a18`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 304.5 KB (304527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94c59280f042fa61a73fead9daaa3d7b4ed8666c265912bbc16c3a9f8f0a94e`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc809c198e640b95c2c834aeb5efdce5f3b8ccfc957372a83d09f17929e471df`  
		Last Modified: Sat, 11 May 2019 08:57:14 GMT  
		Size: 118.7 MB (118701686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874054258eb2a2c6cb88d9cf8b6574bbb5bc29111652378182691e1c79922d98`  
		Last Modified: Sat, 11 May 2019 08:55:38 GMT  
		Size: 156.0 B  
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
$ docker pull golang@sha256:ccf08acd74c1d41cdb9a7aed655bbac1d2b8b178b4a1c77b0f9e39e1f36ef91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:d17a1d8f0c20d108d1177d560f4afb9de10104c46df756d885cfa4282bbaac65
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
$ docker pull golang@sha256:dfec1cb2f37c4dbfb369dac1fe1aa26aad1c516260ca8ed76363b30fed1e9125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296137011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ced090ee82ee77beabd76ad1ba3b167acd8609b0b10c4ef46cee3ddf6e6fa5f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 07:41:12 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 07:41:30 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 07:41:31 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 07:41:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 07:41:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 07:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa24759e848fee3ef333af3dd3ae951eb042e8cd20b5fc0e28a2f3c52cc7e25f`  
		Last Modified: Wed, 08 May 2019 07:42:53 GMT  
		Size: 57.7 MB (57665619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e9eaeed1922f626e8a34f9a21b6029f36d4112cbb04dbdbd9065e107a59cb`  
		Last Modified: Wed, 08 May 2019 07:43:09 GMT  
		Size: 127.9 MB (127940600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66293f4dacbd8884954f2c9332298ace627830801c3b484ba89ca424c619f374`  
		Last Modified: Wed, 08 May 2019 07:42:39 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:714454da8f4a8f07cecbec4a7ca142781c069322a3feb22d7f7ddcfbdd29c247
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284668692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32d442bfd776e1e6cf63486aeeec673802fda6494b2dc448d211b2fce6e85c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:06:31 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 03:06:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 03:06:45 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 03:06:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:06:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 03:06:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257528c4f6e6d484e2feb2d263d218c2818dc09b9774e2e08a915ac7a2c6103`  
		Last Modified: Thu, 09 May 2019 03:07:47 GMT  
		Size: 62.2 MB (62188941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11dcdb67acc2bb3dfc127971886b96886351ebffad4eb1c318bc4e7dcc82fe41`  
		Last Modified: Thu, 09 May 2019 03:07:52 GMT  
		Size: 109.5 MB (109465366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e3ee13fe8a36fac26dff402403adff63c2b954b3e031893baba157445aa7c5`  
		Last Modified: Thu, 09 May 2019 03:07:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:bfdcafaa02ff84ff0cb5f7dbb0d353492108516ce9e364ee338292966f759dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266753370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3a9c5fedc487c7e9dcaae40af29ec173e4ea6d37dd4c7f256ca2efb1902a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:10:27 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 08 May 2019 19:12:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 08 May 2019 19:12:47 GMT
ENV GOPATH=/go
# Wed, 08 May 2019 19:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:13:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 08 May 2019 19:13:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1ed7fac44abf7d1c2f90e19687ec3da02b5cdafe66da318bd5a45f375759`  
		Last Modified: Wed, 08 May 2019 19:18:31 GMT  
		Size: 52.8 MB (52836114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081da8db1356ec0d6770b58c9b718a124ae3e83e7937ba21e3cfd55e3b104b04`  
		Last Modified: Wed, 08 May 2019 19:19:54 GMT  
		Size: 104.0 MB (103954662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1417e31a3163cbe0ed65b9ca3645689b8fd66d1fef2900b345ea27ca093c1`  
		Last Modified: Wed, 08 May 2019 19:17:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:852fa8dbf19991e6f930f6719253700d03e0835fc6b9981bebc4322a3796215c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267328024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47f884b941cac7cf83852f6b74c4c97db91bb50d3c8869aa4c80b4c9d8df428`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:50:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:35:54 GMT
ENV GOLANG_VERSION=1.12.5
# Thu, 09 May 2019 01:38:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 09 May 2019 01:38:12 GMT
ENV GOPATH=/go
# Thu, 09 May 2019 01:38:14 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 01:38:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 09 May 2019 01:38:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e650c4b45ea187d6b0fe7fe4970d9e11c683da76c8eaf7616753930f2c3ec`  
		Last Modified: Wed, 08 May 2019 14:01:09 GMT  
		Size: 50.5 MB (50489726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1821e00782c11ab42c4b95e58c6ebbb2a1957a09a6ef89411225848819ce357a`  
		Last Modified: Thu, 09 May 2019 01:42:43 GMT  
		Size: 45.9 MB (45945547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59889e9dafcc87a301f88fd81aaa734f1e0e563ea1b248b1152381ffe2fc551c`  
		Last Modified: Thu, 09 May 2019 01:43:17 GMT  
		Size: 111.0 MB (111008132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bebbd28c92131d67907d6ccf8c9bb6dc9896f10c10b5a0161cd1073b150c05`  
		Last Modified: Thu, 09 May 2019 01:42:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:fec08bf7f3c028f96ee42f39c8b65bd069d78c8001e04b529647b715fbed5f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:40b2edc3ca64ef20d2a63d98b1fdbfd1831360d55d6abc928c7421dfd0a0e5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:23f8e1546377320d81161eeea28a18f8e6f54cd8cca5b5bbdeb746cbeb7122ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422748967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97527fe20cd190d36675e98fb0dc8618352d80c9bccf4e65755285d2afba6cfb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:16:37 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:21:40 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:21:42 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae197baa8debe517e68da772be0688b679ad86b3895e30e8948c2c6299c31c3`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f378251b5d4be7fd618986100601f4ca5f79ed4d0fca2df8dfa9e3f651f5ba`  
		Last Modified: Tue, 07 May 2019 23:47:07 GMT  
		Size: 137.0 MB (136959145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968d571522b4af94d1bfca99a7183e177590c2b1374b28cbe4cf4dcfd52165df`  
		Last Modified: Tue, 07 May 2019 23:45:51 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1809`

```console
$ docker pull golang@sha256:a7a3ab3c7fc2f5f48e27ad2990a83e261120b7722aea95fab5a4eff19fa29fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `golang:windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull golang@sha256:b6a8d56aadd1f852676ef7c9909449f9f71e38c08a4017a121a0f63e37a6514a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2139896631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0a0fb30538126b2498c8d583fc129fc10bcb4465b8569c23b1f77e873dc88`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:47:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:47:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:47:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:47:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:48:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:48:49 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:49:16 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:21:52 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:26:55 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:26:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b16cfe06b388f67924674461becc17f04319b99f59b58904dc751762ed31b2`  
		Last Modified: Fri, 12 Apr 2019 06:23:29 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c2f104532f70b83cd6873006853af3e9952dcfd696f93b6a79a4b0a231aef`  
		Last Modified: Fri, 12 Apr 2019 06:23:27 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f420cc74a6479294922e730582617d5885ff35e3bb6c7c693df13760b7bf82c4`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b36f92e172038a5bd742a63dcaef062ef6dd71c6f3cd5d987fc7e1988de4f0`  
		Last Modified: Fri, 12 Apr 2019 06:23:26 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b0e4a9e91949d02a3d9e1d0f3b9df134f779172ceb5da6f6004b04fa9c16f`  
		Last Modified: Fri, 12 Apr 2019 06:23:38 GMT  
		Size: 28.7 MB (28742364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1f3686b91a04f2394d897ef0803b5aa5af7f2e57966cdfadb59e67ccca3bc`  
		Last Modified: Fri, 12 Apr 2019 06:23:23 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1111311011ca1eef2ec9086186153ca2f28224e531777de6ae0dd150490962b1`  
		Last Modified: Fri, 12 Apr 2019 06:23:24 GMT  
		Size: 312.8 KB (312781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2def752fe174fdc066fbff7ca05c08705aa5687cfdf135b98b3b7fcd385c405`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30561cb3b53ce8b141c2c5cc5e0fae403d17532d49bcc667426d831ce36426f8`  
		Last Modified: Tue, 07 May 2019 23:48:47 GMT  
		Size: 137.0 MB (136968431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d668726e67c2c1e352e39cc91f8fde2541d3fa5bd817bbb3e0f364c65f03610`  
		Last Modified: Tue, 07 May 2019 23:47:32 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:051b905c9035302ec5417ad737002e434498fa3e8418e6313a2da83381203007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull golang@sha256:e3138f60f5b7eebc0e4b02491ad79e3b702d74b9a12211782391a6726192a0cb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5823493685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b930f2e6d7155d3936add1f0a6e06e6a9add13ceb9c762d1161f9c68233201b3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:23:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:23:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:23:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:23:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:24:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:25:00 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:26:03 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 07 May 2019 23:10:14 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:16:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 07 May 2019 23:16:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54b933292292b894a02e41bf0012f272e1c4bbb3d7ed02102ce4741db64623d`  
		Last Modified: Fri, 12 Apr 2019 06:17:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb34654e9458e6c01034ee6611caaf09e7efc17264e9508db33a642646849d67`  
		Last Modified: Fri, 12 Apr 2019 06:17:51 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab207b2e71b876677b6267c0bbad33a52f42331646699149f33a66008861c1e8`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7714e8a877e51122a8be236bfe0458101b82f9798fbb399b200247399c8e911`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130032447c7fb5dcb9dfc301baa9cc057c76f19410815d39c2cf02dc31b34778`  
		Last Modified: Fri, 12 Apr 2019 06:18:00 GMT  
		Size: 29.6 MB (29629979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37ad653461540e7768186ebdc0940f170d1c5d4435e8ee266c9c398f1884f46`  
		Last Modified: Fri, 12 Apr 2019 06:17:45 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cf3ac9cb537d6b23dd721e0352c2d54cd1d48b4b3050b32e3a5ccc2eef20f7`  
		Last Modified: Fri, 12 Apr 2019 06:17:48 GMT  
		Size: 5.2 MB (5166097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f79dcae0642e07de9480312effe2ba1966d8a1118897e72adc8dfd8c686f371`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2984b10971d40a423e0dd94e925748c0abc89c5d3c6288c0d9d502d6d8383a66`  
		Last Modified: Tue, 07 May 2019 23:45:12 GMT  
		Size: 146.3 MB (146318108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa906826df613c64f95c5a8bb8e108ea4366e051466303289704d1c5999858d2`  
		Last Modified: Tue, 07 May 2019 23:43:50 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull golang@sha256:02e7f4ab97015348b706df3f864c18a8fb6d11011960b7389e30066484e23bed
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:33c2b38095cf6146e72de9a3fb283077b7ef8995b4e5d0bac764964f056af663
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
$ docker pull golang@sha256:c79ec0ced17302090df5f89f8a72c1ccfdd078379316e8edc813d1b3a4aadff0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248881710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e05b21378f05b5a07e32b7730fd685be7af7cd54a58bb9d3be6ecb810f39e0c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:09:59 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:17 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52fcfa6b08b2c014b78a80a91fa2ee7a1af7a5cabb2bcfcd3712c1e8767b63c`  
		Last Modified: Tue, 07 May 2019 23:15:07 GMT  
		Size: 101.0 MB (101043182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38937ffe75794431a2463b8502cab17aa09c63c50edcd23745b1d95382befcad`  
		Last Modified: Tue, 07 May 2019 23:14:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4c888b8c424b80cb62dc3c03230b33ad105fc5aeb6d0d17fdbf7692c4bb20b41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252921004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137869dd68d1e341b2145cd75ff27717b0db6a8870aeb803e2723e093320c68c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:54 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:11:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:21 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:11:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:11:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3df72410afaffcda0e86aa4ef9cc42561ff03c2e996179fd8260acbcf120c`  
		Last Modified: Tue, 07 May 2019 23:20:36 GMT  
		Size: 98.9 MB (98916480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3a4566fb24d240cd5ee4ef189d3b21814b4d0c6309af38b08dd254e4eb29`  
		Last Modified: Tue, 07 May 2019 23:19:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; 386

```console
$ docker pull golang@sha256:e03bcddc40a0723671b773a6359f2a493c3b24eb13e91377129d89e8beb4e946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279267765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e662b278d95e3e1e84ad94eb1feaaff3ddf39fc2d926ab5f0a68a9fd0e9713c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:01 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56cfbc5eba7a3a37449242ee67335aff6cfcac8ceb0f2634d60bdc5bf29b8d`  
		Last Modified: Tue, 07 May 2019 23:16:47 GMT  
		Size: 104.1 MB (104092787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc2ab441672632e40675515e8e9511d12dc02877ade149330cefc19ddda08e3`  
		Last Modified: Tue, 07 May 2019 23:16:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; ppc64le

```console
$ docker pull golang@sha256:8c11cff6a3e995c7ce4e90893ba2817651f07fd77ff2f8722ded96f80c06d0ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261779907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6459da808e6918d058bcf4dffc9782fd2696b5833a5d948abaf99dd6cfbf8df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:51 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:13:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacb84bc044583dcad8f3775838a8d831a4552007290b2c0f849a06bc513cef5`  
		Last Modified: Tue, 07 May 2019 23:22:31 GMT  
		Size: 99.0 MB (99002314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08909c19ab113a83cffe245f93e3ee987d002b3f2b5530b2b53d52ac516f0c3f`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11` - linux; s390x

```console
$ docker pull golang@sha256:293deef40d781e174442f44fbe86acafdce750a3f5b87cbc8d8d5d3bced19466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256097853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08766d7c36a53e59021bf2b444876f09bf9c4b4ef5d710d1fa96b8e312ff6629`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:14 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:44 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb392d707803038ada60a36ce03f3d02259319e43a035c102badc0088145a7`  
		Last Modified: Tue, 07 May 2019 23:24:07 GMT  
		Size: 99.8 MB (99793448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59a5c6df6ecc558ee7ea7aed380b9c066a067e83d6b0a3a215049fadeb5422c`  
		Last Modified: Tue, 07 May 2019 23:23:34 GMT  
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
$ docker pull golang@sha256:33c2b38095cf6146e72de9a3fb283077b7ef8995b4e5d0bac764964f056af663
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
$ docker pull golang@sha256:c79ec0ced17302090df5f89f8a72c1ccfdd078379316e8edc813d1b3a4aadff0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248881710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e05b21378f05b5a07e32b7730fd685be7af7cd54a58bb9d3be6ecb810f39e0c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:09:59 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:17 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52fcfa6b08b2c014b78a80a91fa2ee7a1af7a5cabb2bcfcd3712c1e8767b63c`  
		Last Modified: Tue, 07 May 2019 23:15:07 GMT  
		Size: 101.0 MB (101043182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38937ffe75794431a2463b8502cab17aa09c63c50edcd23745b1d95382befcad`  
		Last Modified: Tue, 07 May 2019 23:14:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4c888b8c424b80cb62dc3c03230b33ad105fc5aeb6d0d17fdbf7692c4bb20b41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252921004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137869dd68d1e341b2145cd75ff27717b0db6a8870aeb803e2723e093320c68c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:54 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:11:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:21 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:11:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:11:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3df72410afaffcda0e86aa4ef9cc42561ff03c2e996179fd8260acbcf120c`  
		Last Modified: Tue, 07 May 2019 23:20:36 GMT  
		Size: 98.9 MB (98916480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3a4566fb24d240cd5ee4ef189d3b21814b4d0c6309af38b08dd254e4eb29`  
		Last Modified: Tue, 07 May 2019 23:19:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; 386

```console
$ docker pull golang@sha256:e03bcddc40a0723671b773a6359f2a493c3b24eb13e91377129d89e8beb4e946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279267765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e662b278d95e3e1e84ad94eb1feaaff3ddf39fc2d926ab5f0a68a9fd0e9713c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:01 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56cfbc5eba7a3a37449242ee67335aff6cfcac8ceb0f2634d60bdc5bf29b8d`  
		Last Modified: Tue, 07 May 2019 23:16:47 GMT  
		Size: 104.1 MB (104092787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc2ab441672632e40675515e8e9511d12dc02877ade149330cefc19ddda08e3`  
		Last Modified: Tue, 07 May 2019 23:16:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; ppc64le

```console
$ docker pull golang@sha256:8c11cff6a3e995c7ce4e90893ba2817651f07fd77ff2f8722ded96f80c06d0ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261779907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6459da808e6918d058bcf4dffc9782fd2696b5833a5d948abaf99dd6cfbf8df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:51 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:13:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacb84bc044583dcad8f3775838a8d831a4552007290b2c0f849a06bc513cef5`  
		Last Modified: Tue, 07 May 2019 23:22:31 GMT  
		Size: 99.0 MB (99002314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08909c19ab113a83cffe245f93e3ee987d002b3f2b5530b2b53d52ac516f0c3f`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10` - linux; s390x

```console
$ docker pull golang@sha256:293deef40d781e174442f44fbe86acafdce750a3f5b87cbc8d8d5d3bced19466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256097853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08766d7c36a53e59021bf2b444876f09bf9c4b4ef5d710d1fa96b8e312ff6629`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:14 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:44 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb392d707803038ada60a36ce03f3d02259319e43a035c102badc0088145a7`  
		Last Modified: Tue, 07 May 2019 23:24:07 GMT  
		Size: 99.8 MB (99793448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59a5c6df6ecc558ee7ea7aed380b9c066a067e83d6b0a3a215049fadeb5422c`  
		Last Modified: Tue, 07 May 2019 23:23:34 GMT  
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
$ docker pull golang@sha256:12f923e405c0c5b09ad500280fc5c11d298c0febc42145cc95618a6fb99dc9b1
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
$ docker pull golang@sha256:f2a19ad5923b6dce14bc8e5b50b354864cfe86f8738b666d58aa37d54dce45fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113314557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c2766dbcfd92d48d0ad7de61ecd1e69ef27a611386d394f2271d6302089cd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:23:13 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 22:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:25:35 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:25:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:25:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:25:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715868d77fabe3cb61bd62a1c1bdeb8f8c5f68fae274d940bc4cc0c04e40ac64`  
		Last Modified: Tue, 07 May 2019 22:30:33 GMT  
		Size: 110.3 MB (110255394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c711a6cf75cf42dc32e2d6c53f53e6c533a5c74d97313eb23db60365bb89f`  
		Last Modified: Tue, 07 May 2019 22:30:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:16e0281ac47e3674ee77517a08f3866daf97bd2f4de7700d5cdbcde52adc9fc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4998e78bdfc995249fedd921c72a6420c778c7345dab63f51992c8267af155d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:16 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:48 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76a7dbb6c994e78bf32dec375782e1d6ac529103a039502e22eeeecde10b240`  
		Last Modified: Tue, 07 May 2019 23:17:06 GMT  
		Size: 106.4 MB (106420278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f8fc228b1d3f8d2911fe4190ac70df5f2a4c9bd5e081c3b504b869e96bc4e9`  
		Last Modified: Tue, 07 May 2019 23:16:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:98679d655701d61979cff4151584567c125b12a37bd1124e4e7dfe69b66b950e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108742691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1dceba04fdc23a39304d39fd0bff5352991f4dbcaab34b796954aeda5053393`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:27 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd7245ff13767f78e7667d650c26613aa60aa14fa62928b320f916c3a98a369`  
		Last Modified: Tue, 07 May 2019 23:15:44 GMT  
		Size: 106.1 MB (106090614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e227a3225e24a74b439156e156b7ae367eb2f38725ed5e32bcb4a044f002011`  
		Last Modified: Tue, 07 May 2019 23:15:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a371ed0d8b86fb054a4e316c522edadc2fade672d9b766974b7ddc2cb1e484e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107226821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536bcf33703a40f8ed561e47dec9845169b96da43e93db1a38cfe644c4b24f88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:11:33 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:18 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:14:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea7123c4e617aba40aa64c036c5c2e7b1a6df10ab8792b5f91bbb25935828a`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 104.2 MB (104235443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd145eed3cf4d0d2b805b91c52b5806245d57b02dd4148c5026ad4685e15579`  
		Last Modified: Tue, 07 May 2019 23:20:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; 386

```console
$ docker pull golang@sha256:a28e7b7ce14371e1b53c722eb1f694146a8e1f074d907f4c2b82254608621e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112507748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64131cfc75f6d43ed3648eb76fb6faf3b276f27515da72b60058c225733b7ec2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:21 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:39 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8d2517b379b12398e997fcf121b0c3515ddd2564b98f62077e6d713af7294c`  
		Last Modified: Tue, 07 May 2019 23:17:17 GMT  
		Size: 109.5 MB (109452866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d42d35c793ac69211cc4bf36273b479325494c768bf0101fbecad9bb214d8fb`  
		Last Modified: Tue, 07 May 2019 23:16:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f2693ea974ebb5aeb6be622890ade64e90230c838883175218a6bde9b2c23dd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107281222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6953fa5b75daf0bab515f64463894ed94a64b6bf975760b0f369549102818525`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:13:09 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:55 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2b111f4f052787214cf59b82ed06d3f75fb191803ed4a1d533a70102096cf2`  
		Last Modified: Tue, 07 May 2019 23:24:01 GMT  
		Size: 104.2 MB (104195354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7730b39241af262d2e9e57ff0e9c641c597b945c684525c97f235d0379fdd7da`  
		Last Modified: Tue, 07 May 2019 23:22:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine` - linux; s390x

```console
$ docker pull golang@sha256:3d6a95c1aac10775c6d94856f22406e2b51f864b21c19806bbeac7f6e2669635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113235376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7e14244513a6f19684760bdbb2282de080beba02a5c835b3fb0722b160247a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:12:55 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:16:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:16:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:16:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:16:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:16:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154201316e46c372a31217296fa45886576a3c3eec68a7dbba072837d3e977bb`  
		Last Modified: Tue, 07 May 2019 23:24:59 GMT  
		Size: 110.4 MB (110389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653075695d09a864e5bbe1e0314a4592239c24e60c177f269259e0df2f6df0d9`  
		Last Modified: Tue, 07 May 2019 23:24:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-alpine3.8`

```console
$ docker pull golang@sha256:5e240b2f65cbcd5a13aad2c14ddf931eb16586bd350252f033d3669ebda1dec4
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
$ docker pull golang@sha256:12f923e405c0c5b09ad500280fc5c11d298c0febc42145cc95618a6fb99dc9b1
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
$ docker pull golang@sha256:f2a19ad5923b6dce14bc8e5b50b354864cfe86f8738b666d58aa37d54dce45fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113314557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c2766dbcfd92d48d0ad7de61ecd1e69ef27a611386d394f2271d6302089cd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:23:13 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 22:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:25:35 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:25:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:25:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:25:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715868d77fabe3cb61bd62a1c1bdeb8f8c5f68fae274d940bc4cc0c04e40ac64`  
		Last Modified: Tue, 07 May 2019 22:30:33 GMT  
		Size: 110.3 MB (110255394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c711a6cf75cf42dc32e2d6c53f53e6c533a5c74d97313eb23db60365bb89f`  
		Last Modified: Tue, 07 May 2019 22:30:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:16e0281ac47e3674ee77517a08f3866daf97bd2f4de7700d5cdbcde52adc9fc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4998e78bdfc995249fedd921c72a6420c778c7345dab63f51992c8267af155d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:16 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:48 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76a7dbb6c994e78bf32dec375782e1d6ac529103a039502e22eeeecde10b240`  
		Last Modified: Tue, 07 May 2019 23:17:06 GMT  
		Size: 106.4 MB (106420278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f8fc228b1d3f8d2911fe4190ac70df5f2a4c9bd5e081c3b504b869e96bc4e9`  
		Last Modified: Tue, 07 May 2019 23:16:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:98679d655701d61979cff4151584567c125b12a37bd1124e4e7dfe69b66b950e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108742691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1dceba04fdc23a39304d39fd0bff5352991f4dbcaab34b796954aeda5053393`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:27 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd7245ff13767f78e7667d650c26613aa60aa14fa62928b320f916c3a98a369`  
		Last Modified: Tue, 07 May 2019 23:15:44 GMT  
		Size: 106.1 MB (106090614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e227a3225e24a74b439156e156b7ae367eb2f38725ed5e32bcb4a044f002011`  
		Last Modified: Tue, 07 May 2019 23:15:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a371ed0d8b86fb054a4e316c522edadc2fade672d9b766974b7ddc2cb1e484e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107226821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536bcf33703a40f8ed561e47dec9845169b96da43e93db1a38cfe644c4b24f88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:11:33 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:18 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:14:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea7123c4e617aba40aa64c036c5c2e7b1a6df10ab8792b5f91bbb25935828a`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 104.2 MB (104235443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd145eed3cf4d0d2b805b91c52b5806245d57b02dd4148c5026ad4685e15579`  
		Last Modified: Tue, 07 May 2019 23:20:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:a28e7b7ce14371e1b53c722eb1f694146a8e1f074d907f4c2b82254608621e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112507748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64131cfc75f6d43ed3648eb76fb6faf3b276f27515da72b60058c225733b7ec2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:21 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:39 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8d2517b379b12398e997fcf121b0c3515ddd2564b98f62077e6d713af7294c`  
		Last Modified: Tue, 07 May 2019 23:17:17 GMT  
		Size: 109.5 MB (109452866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d42d35c793ac69211cc4bf36273b479325494c768bf0101fbecad9bb214d8fb`  
		Last Modified: Tue, 07 May 2019 23:16:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:f2693ea974ebb5aeb6be622890ade64e90230c838883175218a6bde9b2c23dd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107281222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6953fa5b75daf0bab515f64463894ed94a64b6bf975760b0f369549102818525`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:13:09 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:55 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2b111f4f052787214cf59b82ed06d3f75fb191803ed4a1d533a70102096cf2`  
		Last Modified: Tue, 07 May 2019 23:24:01 GMT  
		Size: 104.2 MB (104195354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7730b39241af262d2e9e57ff0e9c641c597b945c684525c97f235d0379fdd7da`  
		Last Modified: Tue, 07 May 2019 23:22:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:3d6a95c1aac10775c6d94856f22406e2b51f864b21c19806bbeac7f6e2669635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113235376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7e14244513a6f19684760bdbb2282de080beba02a5c835b3fb0722b160247a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:12:55 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:16:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:16:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:16:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:16:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:16:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154201316e46c372a31217296fa45886576a3c3eec68a7dbba072837d3e977bb`  
		Last Modified: Tue, 07 May 2019 23:24:59 GMT  
		Size: 110.4 MB (110389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653075695d09a864e5bbe1e0314a4592239c24e60c177f269259e0df2f6df0d9`  
		Last Modified: Tue, 07 May 2019 23:24:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-stretch`

```console
$ docker pull golang@sha256:16e7029c70b22f7829b527522714279a9cf6100e47866202864deaf2ef15d5ca
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
$ docker pull golang@sha256:c79ec0ced17302090df5f89f8a72c1ccfdd078379316e8edc813d1b3a4aadff0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248881710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e05b21378f05b5a07e32b7730fd685be7af7cd54a58bb9d3be6ecb810f39e0c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:09:59 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:17 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52fcfa6b08b2c014b78a80a91fa2ee7a1af7a5cabb2bcfcd3712c1e8767b63c`  
		Last Modified: Tue, 07 May 2019 23:15:07 GMT  
		Size: 101.0 MB (101043182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38937ffe75794431a2463b8502cab17aa09c63c50edcd23745b1d95382befcad`  
		Last Modified: Tue, 07 May 2019 23:14:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4c888b8c424b80cb62dc3c03230b33ad105fc5aeb6d0d17fdbf7692c4bb20b41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252921004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137869dd68d1e341b2145cd75ff27717b0db6a8870aeb803e2723e093320c68c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:54 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:11:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:21 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:11:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:11:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3df72410afaffcda0e86aa4ef9cc42561ff03c2e996179fd8260acbcf120c`  
		Last Modified: Tue, 07 May 2019 23:20:36 GMT  
		Size: 98.9 MB (98916480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3a4566fb24d240cd5ee4ef189d3b21814b4d0c6309af38b08dd254e4eb29`  
		Last Modified: Tue, 07 May 2019 23:19:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; 386

```console
$ docker pull golang@sha256:e03bcddc40a0723671b773a6359f2a493c3b24eb13e91377129d89e8beb4e946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279267765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e662b278d95e3e1e84ad94eb1feaaff3ddf39fc2d926ab5f0a68a9fd0e9713c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:01 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56cfbc5eba7a3a37449242ee67335aff6cfcac8ceb0f2634d60bdc5bf29b8d`  
		Last Modified: Tue, 07 May 2019 23:16:47 GMT  
		Size: 104.1 MB (104092787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc2ab441672632e40675515e8e9511d12dc02877ade149330cefc19ddda08e3`  
		Last Modified: Tue, 07 May 2019 23:16:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8c11cff6a3e995c7ce4e90893ba2817651f07fd77ff2f8722ded96f80c06d0ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261779907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6459da808e6918d058bcf4dffc9782fd2696b5833a5d948abaf99dd6cfbf8df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:51 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:13:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacb84bc044583dcad8f3775838a8d831a4552007290b2c0f849a06bc513cef5`  
		Last Modified: Tue, 07 May 2019 23:22:31 GMT  
		Size: 99.0 MB (99002314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08909c19ab113a83cffe245f93e3ee987d002b3f2b5530b2b53d52ac516f0c3f`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11.10-stretch` - linux; s390x

```console
$ docker pull golang@sha256:293deef40d781e174442f44fbe86acafdce750a3f5b87cbc8d8d5d3bced19466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256097853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08766d7c36a53e59021bf2b444876f09bf9c4b4ef5d710d1fa96b8e312ff6629`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:14 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:44 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb392d707803038ada60a36ce03f3d02259319e43a035c102badc0088145a7`  
		Last Modified: Tue, 07 May 2019 23:24:07 GMT  
		Size: 99.8 MB (99793448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59a5c6df6ecc558ee7ea7aed380b9c066a067e83d6b0a3a215049fadeb5422c`  
		Last Modified: Tue, 07 May 2019 23:23:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11.10-windowsservercore`

```console
$ docker pull golang@sha256:f7c9501f1bd354a34e8bb28c094e9015401abc9b6933a0409b5e1ec953c5b0e7
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
$ docker pull golang@sha256:eb4dd4b5509d67c6eee4315464962755470c6bfa77d50ab1aa13bb2455d9e188
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
$ docker pull golang@sha256:724bc4b3be0fbddb76b5e847c1ed08e26ccf52430794f051cc1db0b8a3565835
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
$ docker pull golang@sha256:d1f177b25e1194d15e31276a8ab7edbc79c0ad9e8854204c3dc8178e5d9b433c
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
$ docker pull golang@sha256:12f923e405c0c5b09ad500280fc5c11d298c0febc42145cc95618a6fb99dc9b1
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
$ docker pull golang@sha256:f2a19ad5923b6dce14bc8e5b50b354864cfe86f8738b666d58aa37d54dce45fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113314557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c2766dbcfd92d48d0ad7de61ecd1e69ef27a611386d394f2271d6302089cd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:23:13 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 22:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:25:35 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:25:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:25:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:25:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715868d77fabe3cb61bd62a1c1bdeb8f8c5f68fae274d940bc4cc0c04e40ac64`  
		Last Modified: Tue, 07 May 2019 22:30:33 GMT  
		Size: 110.3 MB (110255394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c711a6cf75cf42dc32e2d6c53f53e6c533a5c74d97313eb23db60365bb89f`  
		Last Modified: Tue, 07 May 2019 22:30:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:16e0281ac47e3674ee77517a08f3866daf97bd2f4de7700d5cdbcde52adc9fc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4998e78bdfc995249fedd921c72a6420c778c7345dab63f51992c8267af155d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:16 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:48 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76a7dbb6c994e78bf32dec375782e1d6ac529103a039502e22eeeecde10b240`  
		Last Modified: Tue, 07 May 2019 23:17:06 GMT  
		Size: 106.4 MB (106420278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f8fc228b1d3f8d2911fe4190ac70df5f2a4c9bd5e081c3b504b869e96bc4e9`  
		Last Modified: Tue, 07 May 2019 23:16:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:98679d655701d61979cff4151584567c125b12a37bd1124e4e7dfe69b66b950e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108742691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1dceba04fdc23a39304d39fd0bff5352991f4dbcaab34b796954aeda5053393`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:27 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd7245ff13767f78e7667d650c26613aa60aa14fa62928b320f916c3a98a369`  
		Last Modified: Tue, 07 May 2019 23:15:44 GMT  
		Size: 106.1 MB (106090614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e227a3225e24a74b439156e156b7ae367eb2f38725ed5e32bcb4a044f002011`  
		Last Modified: Tue, 07 May 2019 23:15:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a371ed0d8b86fb054a4e316c522edadc2fade672d9b766974b7ddc2cb1e484e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107226821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536bcf33703a40f8ed561e47dec9845169b96da43e93db1a38cfe644c4b24f88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:11:33 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:18 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:14:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea7123c4e617aba40aa64c036c5c2e7b1a6df10ab8792b5f91bbb25935828a`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 104.2 MB (104235443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd145eed3cf4d0d2b805b91c52b5806245d57b02dd4148c5026ad4685e15579`  
		Last Modified: Tue, 07 May 2019 23:20:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; 386

```console
$ docker pull golang@sha256:a28e7b7ce14371e1b53c722eb1f694146a8e1f074d907f4c2b82254608621e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112507748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64131cfc75f6d43ed3648eb76fb6faf3b276f27515da72b60058c225733b7ec2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:21 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:39 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8d2517b379b12398e997fcf121b0c3515ddd2564b98f62077e6d713af7294c`  
		Last Modified: Tue, 07 May 2019 23:17:17 GMT  
		Size: 109.5 MB (109452866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d42d35c793ac69211cc4bf36273b479325494c768bf0101fbecad9bb214d8fb`  
		Last Modified: Tue, 07 May 2019 23:16:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f2693ea974ebb5aeb6be622890ade64e90230c838883175218a6bde9b2c23dd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107281222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6953fa5b75daf0bab515f64463894ed94a64b6bf975760b0f369549102818525`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:13:09 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:55 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2b111f4f052787214cf59b82ed06d3f75fb191803ed4a1d533a70102096cf2`  
		Last Modified: Tue, 07 May 2019 23:24:01 GMT  
		Size: 104.2 MB (104195354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7730b39241af262d2e9e57ff0e9c641c597b945c684525c97f235d0379fdd7da`  
		Last Modified: Tue, 07 May 2019 23:22:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine` - linux; s390x

```console
$ docker pull golang@sha256:3d6a95c1aac10775c6d94856f22406e2b51f864b21c19806bbeac7f6e2669635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113235376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7e14244513a6f19684760bdbb2282de080beba02a5c835b3fb0722b160247a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:12:55 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:16:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:16:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:16:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:16:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:16:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154201316e46c372a31217296fa45886576a3c3eec68a7dbba072837d3e977bb`  
		Last Modified: Tue, 07 May 2019 23:24:59 GMT  
		Size: 110.4 MB (110389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653075695d09a864e5bbe1e0314a4592239c24e60c177f269259e0df2f6df0d9`  
		Last Modified: Tue, 07 May 2019 23:24:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-alpine3.8`

```console
$ docker pull golang@sha256:5e240b2f65cbcd5a13aad2c14ddf931eb16586bd350252f033d3669ebda1dec4
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
$ docker pull golang@sha256:12f923e405c0c5b09ad500280fc5c11d298c0febc42145cc95618a6fb99dc9b1
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
$ docker pull golang@sha256:f2a19ad5923b6dce14bc8e5b50b354864cfe86f8738b666d58aa37d54dce45fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113314557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c2766dbcfd92d48d0ad7de61ecd1e69ef27a611386d394f2271d6302089cd0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:23:13 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 22:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:25:35 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:25:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:25:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:25:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715868d77fabe3cb61bd62a1c1bdeb8f8c5f68fae274d940bc4cc0c04e40ac64`  
		Last Modified: Tue, 07 May 2019 22:30:33 GMT  
		Size: 110.3 MB (110255394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c711a6cf75cf42dc32e2d6c53f53e6c533a5c74d97313eb23db60365bb89f`  
		Last Modified: Tue, 07 May 2019 22:30:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:16e0281ac47e3674ee77517a08f3866daf97bd2f4de7700d5cdbcde52adc9fc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109266129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4998e78bdfc995249fedd921c72a6420c778c7345dab63f51992c8267af155d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:16 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:48 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76a7dbb6c994e78bf32dec375782e1d6ac529103a039502e22eeeecde10b240`  
		Last Modified: Tue, 07 May 2019 23:17:06 GMT  
		Size: 106.4 MB (106420278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f8fc228b1d3f8d2911fe4190ac70df5f2a4c9bd5e081c3b504b869e96bc4e9`  
		Last Modified: Tue, 07 May 2019 23:16:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:98679d655701d61979cff4151584567c125b12a37bd1124e4e7dfe69b66b950e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108742691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1dceba04fdc23a39304d39fd0bff5352991f4dbcaab34b796954aeda5053393`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:27 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:29 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd7245ff13767f78e7667d650c26613aa60aa14fa62928b320f916c3a98a369`  
		Last Modified: Tue, 07 May 2019 23:15:44 GMT  
		Size: 106.1 MB (106090614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e227a3225e24a74b439156e156b7ae367eb2f38725ed5e32bcb4a044f002011`  
		Last Modified: Tue, 07 May 2019 23:15:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a371ed0d8b86fb054a4e316c522edadc2fade672d9b766974b7ddc2cb1e484e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107226821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536bcf33703a40f8ed561e47dec9845169b96da43e93db1a38cfe644c4b24f88`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:11:33 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:18 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:14:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea7123c4e617aba40aa64c036c5c2e7b1a6df10ab8792b5f91bbb25935828a`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 104.2 MB (104235443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd145eed3cf4d0d2b805b91c52b5806245d57b02dd4148c5026ad4685e15579`  
		Last Modified: Tue, 07 May 2019 23:20:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:a28e7b7ce14371e1b53c722eb1f694146a8e1f074d907f4c2b82254608621e5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112507748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64131cfc75f6d43ed3648eb76fb6faf3b276f27515da72b60058c225733b7ec2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:10:21 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:39 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8d2517b379b12398e997fcf121b0c3515ddd2564b98f62077e6d713af7294c`  
		Last Modified: Tue, 07 May 2019 23:17:17 GMT  
		Size: 109.5 MB (109452866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d42d35c793ac69211cc4bf36273b479325494c768bf0101fbecad9bb214d8fb`  
		Last Modified: Tue, 07 May 2019 23:16:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:f2693ea974ebb5aeb6be622890ade64e90230c838883175218a6bde9b2c23dd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.3 MB (107281222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6953fa5b75daf0bab515f64463894ed94a64b6bf975760b0f369549102818525`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:13:09 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:14:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:14:55 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:14:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:15:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:15:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2b111f4f052787214cf59b82ed06d3f75fb191803ed4a1d533a70102096cf2`  
		Last Modified: Tue, 07 May 2019 23:24:01 GMT  
		Size: 104.2 MB (104195354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7730b39241af262d2e9e57ff0e9c641c597b945c684525c97f235d0379fdd7da`  
		Last Modified: Tue, 07 May 2019 23:22:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:3d6a95c1aac10775c6d94856f22406e2b51f864b21c19806bbeac7f6e2669635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113235376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7e14244513a6f19684760bdbb2282de080beba02a5c835b3fb0722b160247a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:12:55 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:16:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:16:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:16:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:16:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:16:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154201316e46c372a31217296fa45886576a3c3eec68a7dbba072837d3e977bb`  
		Last Modified: Tue, 07 May 2019 23:24:59 GMT  
		Size: 110.4 MB (110389356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653075695d09a864e5bbe1e0314a4592239c24e60c177f269259e0df2f6df0d9`  
		Last Modified: Tue, 07 May 2019 23:24:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-stretch`

```console
$ docker pull golang@sha256:16e7029c70b22f7829b527522714279a9cf6100e47866202864deaf2ef15d5ca
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
$ docker pull golang@sha256:c79ec0ced17302090df5f89f8a72c1ccfdd078379316e8edc813d1b3a4aadff0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248881710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e05b21378f05b5a07e32b7730fd685be7af7cd54a58bb9d3be6ecb810f39e0c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:09:59 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:17 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52fcfa6b08b2c014b78a80a91fa2ee7a1af7a5cabb2bcfcd3712c1e8767b63c`  
		Last Modified: Tue, 07 May 2019 23:15:07 GMT  
		Size: 101.0 MB (101043182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38937ffe75794431a2463b8502cab17aa09c63c50edcd23745b1d95382befcad`  
		Last Modified: Tue, 07 May 2019 23:14:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4c888b8c424b80cb62dc3c03230b33ad105fc5aeb6d0d17fdbf7692c4bb20b41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252921004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137869dd68d1e341b2145cd75ff27717b0db6a8870aeb803e2723e093320c68c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:54 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:11:20 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:21 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:11:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:11:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a3df72410afaffcda0e86aa4ef9cc42561ff03c2e996179fd8260acbcf120c`  
		Last Modified: Tue, 07 May 2019 23:20:36 GMT  
		Size: 98.9 MB (98916480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3a4566fb24d240cd5ee4ef189d3b21814b4d0c6309af38b08dd254e4eb29`  
		Last Modified: Tue, 07 May 2019 23:19:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; 386

```console
$ docker pull golang@sha256:e03bcddc40a0723671b773a6359f2a493c3b24eb13e91377129d89e8beb4e946
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279267765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e662b278d95e3e1e84ad94eb1feaaff3ddf39fc2d926ab5f0a68a9fd0e9713c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:10:01 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:10:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:16 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a56cfbc5eba7a3a37449242ee67335aff6cfcac8ceb0f2634d60bdc5bf29b8d`  
		Last Modified: Tue, 07 May 2019 23:16:47 GMT  
		Size: 104.1 MB (104092787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc2ab441672632e40675515e8e9511d12dc02877ade149330cefc19ddda08e3`  
		Last Modified: Tue, 07 May 2019 23:16:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8c11cff6a3e995c7ce4e90893ba2817651f07fd77ff2f8722ded96f80c06d0ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261779907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6459da808e6918d058bcf4dffc9782fd2696b5833a5d948abaf99dd6cfbf8df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:27 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:51 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:13:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacb84bc044583dcad8f3775838a8d831a4552007290b2c0f849a06bc513cef5`  
		Last Modified: Tue, 07 May 2019 23:22:31 GMT  
		Size: 99.0 MB (99002314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08909c19ab113a83cffe245f93e3ee987d002b3f2b5530b2b53d52ac516f0c3f`  
		Last Modified: Tue, 07 May 2019 23:21:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.11-stretch` - linux; s390x

```console
$ docker pull golang@sha256:293deef40d781e174442f44fbe86acafdce750a3f5b87cbc8d8d5d3bced19466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256097853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08766d7c36a53e59021bf2b444876f09bf9c4b4ef5d710d1fa96b8e312ff6629`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:12:14 GMT
ENV GOLANG_VERSION=1.11.10
# Tue, 07 May 2019 23:12:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8' ;; 		i386) goRelArch='linux-386'; goRelSha256='619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a6c7129e92fe325645229846257e563dab1d970bb0e61820d63524df2b54fcf8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='35f196abd74db6f049018829ea6230fde6b8c2e24d2da9f9e75ce0e6d0292b49' ;; 		*) goRelArch='src'; goRelSha256='df27e96a9d1d362c46ecd975f1faa56b8c300f5c529074e9ea79bdd885493c1b'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:44 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb392d707803038ada60a36ce03f3d02259319e43a035c102badc0088145a7`  
		Last Modified: Tue, 07 May 2019 23:24:07 GMT  
		Size: 99.8 MB (99793448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59a5c6df6ecc558ee7ea7aed380b9c066a067e83d6b0a3a215049fadeb5422c`  
		Last Modified: Tue, 07 May 2019 23:23:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.11-windowsservercore`

```console
$ docker pull golang@sha256:f7c9501f1bd354a34e8bb28c094e9015401abc9b6933a0409b5e1ec953c5b0e7
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
$ docker pull golang@sha256:eb4dd4b5509d67c6eee4315464962755470c6bfa77d50ab1aa13bb2455d9e188
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
$ docker pull golang@sha256:724bc4b3be0fbddb76b5e847c1ed08e26ccf52430794f051cc1db0b8a3565835
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
$ docker pull golang@sha256:d1f177b25e1194d15e31276a8ab7edbc79c0ad9e8854204c3dc8178e5d9b433c
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
$ docker pull golang@sha256:02e7f4ab97015348b706df3f864c18a8fb6d11011960b7389e30066484e23bed
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:02e7f4ab97015348b706df3f864c18a8fb6d11011960b7389e30066484e23bed
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-alpine3.9`

```console
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-stretch`

```console
$ docker pull golang@sha256:a1b49a76809074623441963501d7893d0c800ffd684ca18a891a2c58af979177
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12.5-stretch` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12.5-windowsservercore`

```console
$ docker pull golang@sha256:cd4b18c1db0d8fc2c11b68199802da14b5fc2d54a84ddb0c5e13596e9cf66e3b
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
$ docker pull golang@sha256:352369296ed74c78125494ea99e6cac84670fda2b3ca000cb3925ed711427f73
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
$ docker pull golang@sha256:6a27613c03b8373502ef3f05df174c98f8f3a4d5b7da5980aeffaeba34cfd118
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
$ docker pull golang@sha256:9a7c37505b46492e213786f2f964570e0649cd3c8e2661fdf25f2fea81348e13
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
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-alpine3.9`

```console
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-stretch`

```console
$ docker pull golang@sha256:a1b49a76809074623441963501d7893d0c800ffd684ca18a891a2c58af979177
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.12-stretch` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.12-windowsservercore`

```console
$ docker pull golang@sha256:cd4b18c1db0d8fc2c11b68199802da14b5fc2d54a84ddb0c5e13596e9cf66e3b
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
$ docker pull golang@sha256:352369296ed74c78125494ea99e6cac84670fda2b3ca000cb3925ed711427f73
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
$ docker pull golang@sha256:6a27613c03b8373502ef3f05df174c98f8f3a4d5b7da5980aeffaeba34cfd118
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
$ docker pull golang@sha256:9a7c37505b46492e213786f2f964570e0649cd3c8e2661fdf25f2fea81348e13
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
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.9`

```console
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:a1b49a76809074623441963501d7893d0c800ffd684ca18a891a2c58af979177
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:cd4b18c1db0d8fc2c11b68199802da14b5fc2d54a84ddb0c5e13596e9cf66e3b
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
$ docker pull golang@sha256:352369296ed74c78125494ea99e6cac84670fda2b3ca000cb3925ed711427f73
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
$ docker pull golang@sha256:6a27613c03b8373502ef3f05df174c98f8f3a4d5b7da5980aeffaeba34cfd118
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
$ docker pull golang@sha256:9a7c37505b46492e213786f2f964570e0649cd3c8e2661fdf25f2fea81348e13
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
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.9`

```console
$ docker pull golang@sha256:fdb2912263a50a4157808e1952f52a13d9403f30cbfbf3d08c8e6f1f81554620
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
$ docker pull golang@sha256:3e0efd8a9125f2b2cd2d6210d481024230634f7cba21a1a3c9acf33c2f330ba9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e7250c800364cd81a7b92e33e2294a8de9cf4d0fe95b10d7c3e56e9d4bf9b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 22:19:53 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 22:22:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 22:22:40 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 22:22:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 22:22:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 22:22:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf7a24e9fe4ff6b2335463b5c8bb2378e7d1c6492cd2657f2cccd3dc8a6df6a`  
		Last Modified: Tue, 07 May 2019 22:29:31 GMT  
		Size: 125.3 MB (125274172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac62bb6f9bd291c899e4d1171bc57e851e3fd4df25edb842beb68e146080e8ba`  
		Last Modified: Tue, 07 May 2019 22:29:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:592663998d1122c0a14bc825f003cc6bc4cec5d070a04c614e18b055ead63bc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8689c768a6bade9e9da9c491b6610211a22903043d888644b4e850126e8fd27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:06:58 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:08 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd8f6e3f8472c58c6522b9b207fbee4f0b6a52f9d55d3fed371bfcd46d33bbf`  
		Last Modified: Tue, 07 May 2019 23:16:18 GMT  
		Size: 121.3 MB (121349916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa216f8da17f02a78328a1f996673ba48a96a08af2c16d05337a045250c6fe73`  
		Last Modified: Tue, 07 May 2019 23:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:f1d4f3f95a27742d8905143305a88f6575347dafe99a7f6105eae0d820cb005a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd331106a398ea9e2abf738bdb074073038b614bb0a3ff8d89ad3f5eaac68a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:29 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:47 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d4702d64e1140405a65b96c6dba0af6c0ba4f24264728fe246cdb1b1b9a167`  
		Last Modified: Tue, 07 May 2019 23:14:19 GMT  
		Size: 121.0 MB (121017423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63578edcc68a9c78f769942d5cc450e348ca29606dce692a280345eabe483682`  
		Last Modified: Tue, 07 May 2019 23:13:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c22e5d789a0873337d8a4140997c602246d62aecc6a925448ca26a0f6d375940
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121961382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6b5fbca33fd11a86a8c374e429ae00b506c5ea494cdd628ed99630d3e68dfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:38 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:10:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:10:41 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:10:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:10:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:10:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946b49f08d1f76fe3f317ceed9ba984a6be422e1234e57599e47b9d09cf21c7`  
		Last Modified: Tue, 07 May 2019 23:19:37 GMT  
		Size: 119.0 MB (118970004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab44053a9675520735773d686b3152d9a2181e7bb26da1835d04644f960db47`  
		Last Modified: Tue, 07 May 2019 23:18:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:3af9ceb1ac6969fdb0b60d5cbc17058d163ddfa883e7b855020fbb9d4bce98b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09c0c01a8c73a49ba5469d8524c31ae2778ca8080e275cc5329906c71d067bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:07:17 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:09:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:09:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:52 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e719f1d81c5c7aa3526a1bbd16c4bf2aee1a5dc3a65cb2932c3af54c8d85e1f`  
		Last Modified: Tue, 07 May 2019 23:16:19 GMT  
		Size: 125.0 MB (125032231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124dd033e98434464d4252a65f8d7a44c84c92a18caae9e6799268ba51183c2e`  
		Last Modified: Tue, 07 May 2019 23:15:54 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:72a7e08d0ae1b1b6ff8059645fb77710c888f48954ba49a02efae64ebe58ef39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121786277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38558f20a4f78f256aa81603ae16b3dd44d5946145dcf30ba5a88adff893d32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:09:19 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:12:01 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:12:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2648d5f8e5218ff0cf85402944833bc382d06aa3acbd453b20f8a39b2d2cb35`  
		Last Modified: Tue, 07 May 2019 23:20:58 GMT  
		Size: 118.7 MB (118700408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de409a4c1f3c69458f3b551b749c420676b38ea8291a3b0f1d9645218b04c2f`  
		Last Modified: Tue, 07 May 2019 23:19:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:4b3430abd7f945231198b3e29c5a747048f967ad62fd015024275ef249249696
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3293f2e5eb1888eb2ecbe4459f7d1b16709bfd3cfe0592976dacc0bbc2b7c41c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 07 May 2019 23:08:06 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:11:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:11:59 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:12:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf16eeb7b997d0518301e2f2f3b0e29d75be6fe327139f51966028470220154`  
		Last Modified: Tue, 07 May 2019 23:23:11 GMT  
		Size: 125.8 MB (125808753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ee74598685aa4a34cc519fc92bb0abe851a818cbd3d52d30a7b470e4751cdc`  
		Last Modified: Tue, 07 May 2019 23:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:02e7f4ab97015348b706df3f864c18a8fb6d11011960b7389e30066484e23bed
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
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
$ docker pull golang@sha256:a1b49a76809074623441963501d7893d0c800ffd684ca18a891a2c58af979177
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
$ docker pull golang@sha256:34e84e8e8027314970766952d6e4d55f0d59d76cd723e90e2c158105adc3be23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254064155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000d3b91bbe5b9ab93f8073616e3c89ba029d05774218e827136c936bbacc094`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:01 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:20 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c13f1ba839f3b4089bb3a84337f89da99953433b7847096fda5224e366485da`  
		Last Modified: Tue, 07 May 2019 23:13:28 GMT  
		Size: 106.2 MB (106225626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c76ddb5697de99100b89266e315ac76e57164a39db71dd0e8a1f356e44085`  
		Last Modified: Tue, 07 May 2019 23:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6ee3cfd1ece26bc5c5937d3a66bad0f4704ea0c8ee43201e3b1ae04dcc1982dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258261074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec41cd0e2f06ff5982acc59bc73885b0fd53a8c0e32342e3f50748e51ade3fe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:28 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7b0434b2fd18c1f11d28fdcff51e0155db7c5ebc3250e90f74bb76add6e293`  
		Last Modified: Tue, 07 May 2019 23:18:37 GMT  
		Size: 104.3 MB (104256550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef0d8d52cf0361f62bf0c233e93d4684b8beeddc8caf4f72756985cc089de`  
		Last Modified: Tue, 07 May 2019 23:17:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:e6de803e10c5ea52df301a88145fbeff15023bec412c2928f5925e5baf143775
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284640343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0630871ed538a8c984faca968951dcb2528093f537b28dcbc83467b7cf7a7a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:06:57 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:11 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abd047366665eb58bca879c69011f43d519678abfce0cb0c0480ed43c7c0d66`  
		Last Modified: Tue, 07 May 2019 23:15:49 GMT  
		Size: 109.5 MB (109465365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559ea66f48417d86f83604871ee4b948f00d7ea5dbdf9be052216889c0855c2e`  
		Last Modified: Tue, 07 May 2019 23:15:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:13f562b2b30c23797ddabfaf1b95cb620fd9662355ca197934e73579ef1e248e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266732247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34656787e41d56dd1c9181b02f8b24db8a86d96ac890208d979627796dccff6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:08:04 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:08:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:08:58 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:09:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:09:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:09:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcd5aa42f31c2e6c7e6909ed472de9ebef911d586103eb02688f7dd5d57550`  
		Last Modified: Tue, 07 May 2019 23:19:29 GMT  
		Size: 104.0 MB (103954654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd417a0c789ac3e2ee70e33ded8b492256dd8e46026e881420880e31e680e53b`  
		Last Modified: Tue, 07 May 2019 23:18:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:4e2b86f32887f4ef24b57ff7efc6ee1a8d6c6796d74ea481dd5e2db6bb5dac4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267312575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6259d0fe06de766f36cd655ddf66c48e941e866413cd53461996374217298eaa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 May 2019 23:07:09 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 07 May 2019 23:07:49 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e88b2a2098bc79ad33912d1d27bc3282a7f3231b6f4672f306465bf46ff784ca' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='168d297ec910cb446d1aea878baeb85f1387209f9eb55dde68bddcd4c006dcbb' ;; 		*) goRelArch='src'; goRelSha256='2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 07 May 2019 23:07:50 GMT
ENV GOPATH=/go
# Tue, 07 May 2019 23:07:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 May 2019 23:07:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 07 May 2019 23:07:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c4990eb456d56983cdcad46856df16b8deb57952ece25b8c1a3512879a07`  
		Last Modified: Tue, 07 May 2019 23:22:07 GMT  
		Size: 111.0 MB (111008172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ea13cf44c805203c8f8ad1fbadf674b261f80c19ba74ea277170872d066970`  
		Last Modified: Tue, 07 May 2019 23:21:32 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:cd4b18c1db0d8fc2c11b68199802da14b5fc2d54a84ddb0c5e13596e9cf66e3b
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
$ docker pull golang@sha256:352369296ed74c78125494ea99e6cac84670fda2b3ca000cb3925ed711427f73
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
$ docker pull golang@sha256:6a27613c03b8373502ef3f05df174c98f8f3a4d5b7da5980aeffaeba34cfd118
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
$ docker pull golang@sha256:9a7c37505b46492e213786f2f964570e0649cd3c8e2661fdf25f2fea81348e13
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

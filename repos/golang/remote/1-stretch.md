## `golang:1-stretch`

```console
$ docker pull golang@sha256:60f9379bbb04aec977e7af385fe3ce38c9f9656890da3d5da3f65cbffe6d70e5
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

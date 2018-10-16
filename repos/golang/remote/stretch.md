## `golang:stretch`

```console
$ docker pull golang@sha256:3a9f01242ac567b17316563dfa2fc8d79760bfa36b6557224c9e4b03a9054193
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
$ docker pull golang@sha256:df8db4a3a7dee9782e0f1bdcc9d676bc2de0dc1d2dc2952d9b9b3718445b1455
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295250272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e48f60e2681653d4cc88b69f8c5504e0b5ba345cc45948d611b89193f45364`
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
# Tue, 16 Oct 2018 08:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:42:28 GMT
ENV GOLANG_VERSION=1.11.1
# Tue, 16 Oct 2018 08:42:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 16 Oct 2018 08:42:41 GMT
ENV GOPATH=/go
# Tue, 16 Oct 2018 08:42:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 08:42:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Oct 2018 08:42:43 GMT
WORKDIR /go
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
	-	`sha256:1bc310ac474b880a5e4aeec02e6423d1304d137f1a8990074cb3ac6386a0b654`  
		Last Modified: Tue, 16 Oct 2018 08:44:21 GMT  
		Size: 57.6 MB (57591433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997731689cfbc58c8e74f2a20079338ce66965a40b21f27169b3d5a45ab61cbd`  
		Last Modified: Tue, 16 Oct 2018 08:44:36 GMT  
		Size: 127.2 MB (127207162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202760eb4a0043cd84cd9971c47052617855ff653abec8ae479e89d369afd500`  
		Last Modified: Tue, 16 Oct 2018 08:44:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:faf19ab885f9d0779bbbd615eee610c5aedfdd203ac5fceefbd5fc8afd73a2ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249489345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3045eae5df0a5f9f3eb6a25490b5092898eae0c75268e449c16d960d36290ab4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:40:21 GMT
ENV GOLANG_VERSION=1.11.1
# Tue, 16 Oct 2018 14:40:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 16 Oct 2018 14:40:45 GMT
ENV GOPATH=/go
# Tue, 16 Oct 2018 14:40:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 14:40:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 16 Oct 2018 14:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60b71afb6ecba6c4d82e1458eab5757464019a0fb95e9ee16b1a779d9c44d7`  
		Last Modified: Tue, 16 Oct 2018 14:41:47 GMT  
		Size: 45.9 MB (45927625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2415913da3b03a6d51b2338314d06fd17424aac19595e398de3695f9b33daf97`  
		Last Modified: Tue, 16 Oct 2018 14:42:05 GMT  
		Size: 101.8 MB (101765793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1fc3d028e9fcc1a134ee850e2ec76d08326f8e7f6d180c45802f6b34e70446`  
		Last Modified: Tue, 16 Oct 2018 14:41:35 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bbf7bae46a38efca4f369d4b6b9652c724787baf0da064394bc3a8046f063937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254852746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbcf28969851fd76de130c478eb7e6569ac37a20cdb2618407116bb0b2de926`
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
# Wed, 05 Sep 2018 23:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 03 Oct 2018 08:50:07 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 08:50:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 03 Oct 2018 08:50:40 GMT
ENV GOPATH=/go
# Wed, 03 Oct 2018 08:50:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Oct 2018 08:50:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 03 Oct 2018 08:50:43 GMT
WORKDIR /go
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
	-	`sha256:0546d5cb4171af2c7b87f1d2dc7cdba784d58621249381a5de577e03800824a6`  
		Last Modified: Wed, 05 Sep 2018 23:17:09 GMT  
		Size: 49.0 MB (48991358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792b6b28a997ee3bdb69b0791741ee4ba92b553090c50dbc23b6d55f2d43235`  
		Last Modified: Wed, 03 Oct 2018 09:05:45 GMT  
		Size: 101.0 MB (100955861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af6ff20bbf79ee8bc691d194531411591fe158f079459c8fd54040b862d2818`  
		Last Modified: Wed, 03 Oct 2018 09:05:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:528bedbfebedf21f232982b7a43987c76403ea86b137b1b25634df82c3038d82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285552781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce8ffb14d1c8f36fa55f5a8e98d8fde7025fb863c921accecb29aaf64d4d5f3`
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
# Fri, 07 Sep 2018 02:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 03 Oct 2018 10:43:59 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 10:44:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 03 Oct 2018 10:44:14 GMT
ENV GOPATH=/go
# Wed, 03 Oct 2018 10:44:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Oct 2018 10:44:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 03 Oct 2018 10:44:15 GMT
WORKDIR /go
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
	-	`sha256:4315e91e1b67f2cbd5ca04feb6028bb44601d1ba9197e5c913e8de88c21ed785`  
		Last Modified: Fri, 07 Sep 2018 02:04:50 GMT  
		Size: 62.1 MB (62111219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c89a706b5671e7e5b259412b25b5183dab2d365d553bf8feb2d3ce8556bfe2a`  
		Last Modified: Wed, 03 Oct 2018 10:49:20 GMT  
		Size: 110.5 MB (110501868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ceb116895ab05f83871f0e5a4fab0291871500d03e12b7c063962f0a38ea07`  
		Last Modified: Wed, 03 Oct 2018 10:48:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:3a67f2c790e0a716979823a2530fedbc0704f1ed9d9386029c762e0db8b60a86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262212530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257fced6387ade17d12b18d6199f87855ca0dafa56bfd30bfd10e161b8b4c374`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:23:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 03 Oct 2018 08:30:28 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 08:30:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 03 Oct 2018 08:30:58 GMT
ENV GOPATH=/go
# Wed, 03 Oct 2018 08:30:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Oct 2018 08:31:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 03 Oct 2018 08:31:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58232a3291ad03eefa5699605ee54dab4f23f82ee453fb46a72df9ede051e16`  
		Last Modified: Wed, 05 Sep 2018 15:31:08 GMT  
		Size: 52.8 MB (52767749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e991cb32d8e79677f5b3831f37953ba7d9d879557647d076da9917be052894`  
		Last Modified: Wed, 03 Oct 2018 08:46:17 GMT  
		Size: 99.6 MB (99555396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a9ccdc6849a32d3547a8723292e693002f3d35770b072c18f02f605e35220c`  
		Last Modified: Wed, 03 Oct 2018 08:45:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:974857bab3b787e8d5c381f038af70e5843e806f9d0c963888820d11ea9ab438
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256676232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3746232f6d45b928b420363a88dfbcb39c80dcb7140bbe1a0d2933f5ad6fabb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 03 Oct 2018 11:48:50 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 11:48:59 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 03 Oct 2018 11:48:59 GMT
ENV GOPATH=/go
# Wed, 03 Oct 2018 11:49:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Oct 2018 11:49:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 03 Oct 2018 11:49:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731e997f60fe12a280a40cdbd86b8fe3795ca59b89f45d0841452af5b02a4320`  
		Last Modified: Wed, 05 Sep 2018 12:50:09 GMT  
		Size: 10.3 MB (10267363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92ce7dc85129d33f197d8718147806c5536dc3af5f6311cb463357e64c4f789`  
		Last Modified: Wed, 05 Sep 2018 12:50:07 GMT  
		Size: 4.4 MB (4366746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70de33c55fc49ef835b4924f1078d06a683f98c48e54c95dc5ff447f4588fc5`  
		Last Modified: Wed, 05 Sep 2018 12:50:42 GMT  
		Size: 50.5 MB (50482708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a052fb910918e504f5d63289e8d77cf5e6c64c7d6eb79e9076565aab96a02`  
		Last Modified: Wed, 05 Sep 2018 18:35:58 GMT  
		Size: 45.9 MB (45883602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42224a3a753e90391999f292da5ea68228caf672a59065667453db3c20e13aab`  
		Last Modified: Wed, 03 Oct 2018 11:54:27 GMT  
		Size: 100.5 MB (100476060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304aa782253ab0d193f28add494820ea1f13c91f171eb519568d659f1eec0f22`  
		Last Modified: Wed, 03 Oct 2018 11:54:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

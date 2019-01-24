## `golang:stretch`

```console
$ docker pull golang@sha256:bf8bb2481cb46a3cde6ac1a3a66cc2630bcac56412c00e58c1fbfb2ae2e228e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:stretch` - linux; amd64

```console
$ docker pull golang@sha256:e9d5c560f15c8eaf8c99312c323b47c5e104e65a1f2b452c70652c020ad7f045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308275957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5049ec6e314144a29009f918f1c8fca9c57ab0222a676452260da1d7ff4bbda3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:37:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 22:54:38 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 23 Jan 2019 22:55:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 23 Jan 2019 22:55:02 GMT
ENV GOPATH=/go
# Wed, 23 Jan 2019 22:55:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 22:55:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 23 Jan 2019 22:55:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866ed2e2b1fed04ab28f668a484a1275394fda33f82777064af66a2ba27290ac`  
		Last Modified: Wed, 23 Jan 2019 05:40:17 GMT  
		Size: 57.6 MB (57618425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc4ad35a2f0d5b45e24d81fb8c61c717f3a042ca270215dcdaab930aada201f`  
		Last Modified: Wed, 23 Jan 2019 23:21:28 GMT  
		Size: 140.1 MB (140128822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8da8d8889d83dc6155322e871200ce2a3fe9d702dd0ede25af9faadb743223`  
		Last Modified: Wed, 23 Jan 2019 23:20:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:9d4658984fb06f4f386338cf230efd4dd77a6904c3d1e86c985f70ffaee3c92a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248825974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5af4cb870cbe075c854c9a1ab569118d841af435ea9f1aa0d8cae99f5a7fa6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:35:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 12:57:24 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 12:57:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 12:57:42 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 12:57:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 12:57:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 12:57:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbba5c313a1f6dad1e751255e1d64d5b13210013583e1a9a18c5eba3bb8921fc`  
		Last Modified: Wed, 23 Jan 2019 18:37:31 GMT  
		Size: 46.0 MB (45955215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338d04c93fc5088e793026e3ffc914071a3693b699643a6ab774c3e07eeaa0e6`  
		Last Modified: Thu, 24 Jan 2019 12:58:56 GMT  
		Size: 101.0 MB (100999320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa705360b2d5630ba87bd02150966ccbf3013490654cb208464d270a08f120c`  
		Last Modified: Thu, 24 Jan 2019 12:58:25 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:7f89401fef1e70d41998a8ad712b8976576b17d3f679374cfdb5b9143e0d97e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282755662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9444ab7ce12acfa641f9c9802fe2c0a78f08dc325d9fdfcf5b3b7723473f2167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:19:55 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 00:20:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 00:20:12 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 00:20:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 00:20:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 00:20:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d386a1d57a5a341201a018dfcfd5cba0d25e56a11d59774317c8807bb9a4c`  
		Last Modified: Thu, 24 Jan 2019 00:31:58 GMT  
		Size: 62.1 MB (62139450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc719e34b0641666a69508ba81399bd6b5f30c323ff6f2504d550b214cb08f`  
		Last Modified: Thu, 24 Jan 2019 00:32:49 GMT  
		Size: 107.6 MB (107593422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384721fa6b36f32b5b23458a5947005a990c0ec4391d69fd81977c0db753cab7`  
		Last Modified: Thu, 24 Jan 2019 00:32:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:038dce70a226c37f61d275af57d057d89b50e9e5338d20ef4d9058820f97746d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261706020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858c1bb154e24e88c42a0e98287e1f895abb9b9ab081f20c039b0e852fa0216c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:02:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 11:04:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:29:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 09:17:28 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 09:17:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 09:18:01 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 09:18:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 09:18:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 09:18:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9074895469b770a2456cb2377047c95c405f79e3b04ceca45935caf814e40`  
		Last Modified: Wed, 23 Jan 2019 11:48:50 GMT  
		Size: 10.0 MB (9986574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9d854b31c2198e3a6cc80e64e62531a2e63cf2b43ff8b40f03224abe9ee36`  
		Last Modified: Wed, 23 Jan 2019 11:48:48 GMT  
		Size: 4.3 MB (4295774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ba7f7793013080ce168066b3989515bc218c081a99c9626e919fab4089b85`  
		Last Modified: Wed, 23 Jan 2019 11:49:34 GMT  
		Size: 50.1 MB (50065120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0382c87e0645700143de72aa2a8d50be279c7605c92ae779f38c47ee5e7e904`  
		Last Modified: Wed, 23 Jan 2019 16:33:15 GMT  
		Size: 52.8 MB (52786978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b6d96d4226fb6fb679f20ebea05677b751bb70ecd4267efdd5d38df9aceda`  
		Last Modified: Thu, 24 Jan 2019 09:28:02 GMT  
		Size: 99.0 MB (98954524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b1bc709ae1dcb4f1d000b2626323673c10fffd353408e09a1859d7a95cd364`  
		Last Modified: Thu, 24 Jan 2019 09:27:20 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:4d6ae83335b9bb36e0a14af02cccc038787c077c26feedf7671ad308b3f8f9e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259614752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc348a1105205d9f0d38b524a0fc5fa8edf445d869aab8d437bc9bc3571e0a14`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 12:41:41 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 12:41:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 12:41:56 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 12:41:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 12:41:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 12:41:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054d5ec8395e81bc338e38d97e4d77ad4096d7b1539a5c22fbdfbb710ead9a93`  
		Last Modified: Wed, 23 Jan 2019 16:21:44 GMT  
		Size: 45.9 MB (45895459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e59d16827590125e1774041cf763daa85284ebb3eab8a7e0d8a88ce856f0dfd`  
		Last Modified: Thu, 24 Jan 2019 12:50:53 GMT  
		Size: 103.3 MB (103331723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b545badeb6f03a94c74205ee0f348b2bb78b12cf83e9ee292eb1d606c578e2`  
		Last Modified: Thu, 24 Jan 2019 12:50:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

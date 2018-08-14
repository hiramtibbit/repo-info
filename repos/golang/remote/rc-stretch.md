## `golang:rc-stretch`

```console
$ docker pull golang@sha256:28a84bccdfed737998acf33f3ecab5f3835e81de013fdaa58ffefbfc301dd077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:rc-stretch` - linux; amd64

```console
$ docker pull golang@sha256:f192f9a7398377f82cc6dbbd5c6e48a7129e15f3d4e97ea2cd5b4239c09c63cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345334699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798d75db89221fcc3e2b473233f1402c7216abcad5efc3ebd0515d16d7b28c04`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:30:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 16:23:52 GMT
ENV GOLANG_VERSION=1.11rc1
# Tue, 14 Aug 2018 16:24:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1a071f069982427b245aea736d3174e065a12e8481c34051c672d62a5ca59ca9' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6f2c0a53850e7dcd2f1592eb51325fa5da20ee953512bebf1b0d3fb046874dc4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8a3d96e3e7604cf5390b7e318ff35112cdb13e0e44ddf0130659cefd196ab50e' ;; 		i386) goRelArch='linux-386'; goRelSha256='afe8f516fbd0316981e70fc0dda8c67116837baaa0431ee2da47f4fee4614433' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='972e7b6bfecee780a9cd970100297b35bed4c82cacc2bd55d78428928b66683d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bd30adfb32de8c441fc0b12a9a9acbd5098a77ab77609269aed7ea4f8dd682ae' ;; 		*) goRelArch='src'; goRelSha256='fcb8778ad5d1bb7f5bfd1564ba4107894011f1d65f69be9fa1e693f6b5143828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 14 Aug 2018 16:24:11 GMT
ENV GOPATH=/go
# Tue, 14 Aug 2018 16:24:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 16:24:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 14 Aug 2018 16:24:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c35c9787a2f7a0fbd6829b8ee0df1aebe44929788186d352b3a12f2046b3948`  
		Last Modified: Tue, 17 Jul 2018 12:32:32 GMT  
		Size: 57.6 MB (57585235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a586ab5915090ad757af73c3d611d85877f28195a06d2ebaf9d85b0a05c61282`  
		Last Modified: Tue, 14 Aug 2018 16:30:23 GMT  
		Size: 177.3 MB (177298377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb94d9d3eaaf1ce3bc13cebb900e7a7c120ff30528c27aee9eb0b1226d4d76f1`  
		Last Modified: Tue, 14 Aug 2018 16:29:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:8cf82ed8f86722522e14cce983571ae3216b4a25a8583a4eaca55f6285480286
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299471175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d7e62d0ee80e2f3ee874a16f9ba0d7c3469de1d9f32940917306936fa04ccf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:58:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 16:35:19 GMT
ENV GOLANG_VERSION=1.11rc1
# Tue, 14 Aug 2018 16:35:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1a071f069982427b245aea736d3174e065a12e8481c34051c672d62a5ca59ca9' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6f2c0a53850e7dcd2f1592eb51325fa5da20ee953512bebf1b0d3fb046874dc4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8a3d96e3e7604cf5390b7e318ff35112cdb13e0e44ddf0130659cefd196ab50e' ;; 		i386) goRelArch='linux-386'; goRelSha256='afe8f516fbd0316981e70fc0dda8c67116837baaa0431ee2da47f4fee4614433' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='972e7b6bfecee780a9cd970100297b35bed4c82cacc2bd55d78428928b66683d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bd30adfb32de8c441fc0b12a9a9acbd5098a77ab77609269aed7ea4f8dd682ae' ;; 		*) goRelArch='src'; goRelSha256='fcb8778ad5d1bb7f5bfd1564ba4107894011f1d65f69be9fa1e693f6b5143828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 14 Aug 2018 16:35:47 GMT
ENV GOPATH=/go
# Tue, 14 Aug 2018 16:35:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 16:35:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 14 Aug 2018 16:35:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b6302ebab8f482cd218939332af3eb2acc1c67052757f7b28697e14e0a13d7`  
		Last Modified: Tue, 17 Jul 2018 18:00:42 GMT  
		Size: 45.9 MB (45923944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9412cd6340cb9be4d1036f04a6e3ee1f62b24a398f0e48fce4d2718c4053a5c`  
		Last Modified: Tue, 14 Aug 2018 16:36:45 GMT  
		Size: 151.8 MB (151752612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933caded572d80c7d9a3954373c97c857caa524aedb11ce94e3c28fe6f826e84`  
		Last Modified: Tue, 14 Aug 2018 16:36:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:add48ae7963114aba7f8ce4590594c84cd9bf207a7561992db3d6942ece4d44b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304284975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14b748f5741a5b8672c4036132ff0ee8cd80dbe9f3c761daf25f89fbbe4b4c7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 04:25:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 16:35:36 GMT
ENV GOLANG_VERSION=1.11rc1
# Tue, 14 Aug 2018 16:36:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1a071f069982427b245aea736d3174e065a12e8481c34051c672d62a5ca59ca9' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6f2c0a53850e7dcd2f1592eb51325fa5da20ee953512bebf1b0d3fb046874dc4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8a3d96e3e7604cf5390b7e318ff35112cdb13e0e44ddf0130659cefd196ab50e' ;; 		i386) goRelArch='linux-386'; goRelSha256='afe8f516fbd0316981e70fc0dda8c67116837baaa0431ee2da47f4fee4614433' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='972e7b6bfecee780a9cd970100297b35bed4c82cacc2bd55d78428928b66683d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bd30adfb32de8c441fc0b12a9a9acbd5098a77ab77609269aed7ea4f8dd682ae' ;; 		*) goRelArch='src'; goRelSha256='fcb8778ad5d1bb7f5bfd1564ba4107894011f1d65f69be9fa1e693f6b5143828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 14 Aug 2018 16:36:05 GMT
ENV GOPATH=/go
# Tue, 14 Aug 2018 16:36:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 16:36:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 14 Aug 2018 16:36:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a0d029b36d67dd678c31d091d0d1d44daae01a0f91a80445446578ffb01e49`  
		Last Modified: Wed, 18 Jul 2018 04:28:16 GMT  
		Size: 49.0 MB (48989789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67e7e94e51f314340ff8792851bd31a2fb16cc0056a4f4baafab829d90c91b8`  
		Last Modified: Tue, 14 Aug 2018 16:44:29 GMT  
		Size: 150.4 MB (150389401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fbb4c7cc68a4ae18e8b3fb8898b96ee2648bf6d045798a04a6459280f93938`  
		Last Modified: Tue, 14 Aug 2018 16:43:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:13dc6eb33137cabce68c6dc96b2189fd76788438bcedbec254ddd3e361120364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335924222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba111e70aa30f086163c485763e0d623dee2a2e5055da0f95377b9700e13a77`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:44:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 16:36:10 GMT
ENV GOLANG_VERSION=1.11rc1
# Tue, 14 Aug 2018 16:36:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1a071f069982427b245aea736d3174e065a12e8481c34051c672d62a5ca59ca9' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6f2c0a53850e7dcd2f1592eb51325fa5da20ee953512bebf1b0d3fb046874dc4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8a3d96e3e7604cf5390b7e318ff35112cdb13e0e44ddf0130659cefd196ab50e' ;; 		i386) goRelArch='linux-386'; goRelSha256='afe8f516fbd0316981e70fc0dda8c67116837baaa0431ee2da47f4fee4614433' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='972e7b6bfecee780a9cd970100297b35bed4c82cacc2bd55d78428928b66683d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bd30adfb32de8c441fc0b12a9a9acbd5098a77ab77609269aed7ea4f8dd682ae' ;; 		*) goRelArch='src'; goRelSha256='fcb8778ad5d1bb7f5bfd1564ba4107894011f1d65f69be9fa1e693f6b5143828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 14 Aug 2018 16:36:44 GMT
ENV GOPATH=/go
# Tue, 14 Aug 2018 16:36:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 16:36:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 14 Aug 2018 16:36:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48105a2d2fdec0c63440dcac18aa357da3b64267c32814d155100296d7710c85`  
		Last Modified: Tue, 17 Jul 2018 21:48:00 GMT  
		Size: 62.1 MB (62107873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea152ff5ab385e0a770397dd57ade1e73b7defc1df1810a5fd5f25b37e758ae`  
		Last Modified: Tue, 14 Aug 2018 16:43:56 GMT  
		Size: 160.9 MB (160877918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7520ddb6c4fc9263b14ae9f16c6f8d9763f68403c5771e2c250a7f4e29a4d2`  
		Last Modified: Tue, 14 Aug 2018 16:43:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:da275dc268a4b7cb37707dd1acd8f31c2c9e3984ee84e40e7a655680a3272c57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.7 MB (311670784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9f0e8ca8e49c2d869a9f84f40302bd6f1464865c6a9b2c7827be404cf83574`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 16:35:46 GMT
ENV GOLANG_VERSION=1.11rc1
# Tue, 14 Aug 2018 16:36:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1a071f069982427b245aea736d3174e065a12e8481c34051c672d62a5ca59ca9' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6f2c0a53850e7dcd2f1592eb51325fa5da20ee953512bebf1b0d3fb046874dc4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8a3d96e3e7604cf5390b7e318ff35112cdb13e0e44ddf0130659cefd196ab50e' ;; 		i386) goRelArch='linux-386'; goRelSha256='afe8f516fbd0316981e70fc0dda8c67116837baaa0431ee2da47f4fee4614433' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='972e7b6bfecee780a9cd970100297b35bed4c82cacc2bd55d78428928b66683d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bd30adfb32de8c441fc0b12a9a9acbd5098a77ab77609269aed7ea4f8dd682ae' ;; 		*) goRelArch='src'; goRelSha256='fcb8778ad5d1bb7f5bfd1564ba4107894011f1d65f69be9fa1e693f6b5143828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 14 Aug 2018 16:36:19 GMT
ENV GOPATH=/go
# Tue, 14 Aug 2018 16:36:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 16:36:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 14 Aug 2018 16:36:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2868b335fa3529e1c024e3f109aa32681130cb83eaadc6c37f7adf1b2d63e6`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 50.1 MB (50061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9153a3afb78fb00db7239f66b6c3dc1581a5e75aa2acb88837fa553712776954`  
		Last Modified: Tue, 17 Jul 2018 22:01:29 GMT  
		Size: 52.8 MB (52762358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f7519eafe934ca23d66f5a5b8305968a69c851148f05b0cb26ff48195745c9`  
		Last Modified: Tue, 14 Aug 2018 16:42:09 GMT  
		Size: 149.0 MB (149019314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424b1635deec0bb873ca5d1afc6c719da436287073a15952946e3f334db07eeb`  
		Last Modified: Tue, 14 Aug 2018 16:41:29 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; s390x

```console
$ docker pull golang@sha256:548753ae441461fe3db3f320345e165e6c6720f2c0f828c4f9ef1d1eaa1c7162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306730495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444073ff15d19719c47bf0961fc286adfd5f2635dbd2fb4d6365540661a2d5ed`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:21:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:21:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:25:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 16:35:20 GMT
ENV GOLANG_VERSION=1.11rc1
# Tue, 14 Aug 2018 16:35:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='1a071f069982427b245aea736d3174e065a12e8481c34051c672d62a5ca59ca9' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6f2c0a53850e7dcd2f1592eb51325fa5da20ee953512bebf1b0d3fb046874dc4' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8a3d96e3e7604cf5390b7e318ff35112cdb13e0e44ddf0130659cefd196ab50e' ;; 		i386) goRelArch='linux-386'; goRelSha256='afe8f516fbd0316981e70fc0dda8c67116837baaa0431ee2da47f4fee4614433' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='972e7b6bfecee780a9cd970100297b35bed4c82cacc2bd55d78428928b66683d' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bd30adfb32de8c441fc0b12a9a9acbd5098a77ab77609269aed7ea4f8dd682ae' ;; 		*) goRelArch='src'; goRelSha256='fcb8778ad5d1bb7f5bfd1564ba4107894011f1d65f69be9fa1e693f6b5143828'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 14 Aug 2018 16:35:37 GMT
ENV GOPATH=/go
# Tue, 14 Aug 2018 16:35:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 16:35:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 14 Aug 2018 16:35:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c6d95a7f071ed59620c691d7cb2ba7909eebd13ad42f2edea64fa6345b1194`  
		Last Modified: Tue, 17 Jul 2018 13:30:29 GMT  
		Size: 10.3 MB (10267412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fda1014bc69bc1831d085530e0e2092c9eaa1f92f6e0861aa060dc4580c9b9`  
		Last Modified: Tue, 17 Jul 2018 13:30:27 GMT  
		Size: 4.4 MB (4366785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6f36da521265c10265dc58eb783f0fcec8fdfef13b9b8520618833e2208a0`  
		Last Modified: Tue, 17 Jul 2018 13:30:51 GMT  
		Size: 50.5 MB (50482326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b447b317dd4925937d6474bc6283857e25e25c167cbbfe03c75bb33603fa51f`  
		Last Modified: Tue, 17 Jul 2018 16:27:51 GMT  
		Size: 45.9 MB (45877116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7313fa89330218ad3abb8e843695673dc1eae3bdf663520db752c61ef3ccce77`  
		Last Modified: Tue, 14 Aug 2018 16:39:47 GMT  
		Size: 150.5 MB (150538355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ca2a753bfdb62985d287fbf85e9adc6f7024b1be548ae35769c836cb1dc69e`  
		Last Modified: Tue, 14 Aug 2018 16:39:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

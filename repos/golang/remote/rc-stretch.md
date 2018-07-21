## `golang:rc-stretch`

```console
$ docker pull golang@sha256:4d83b37fd2a91ae4366d2f6ef5ab58a3377f8daee892e8809c8bad992669cc25
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
$ docker pull golang@sha256:925ca133f51f6ad30deba3c88509fb053329dad1f5945358eb8f47dedebf1eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.4 MB (345364890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7420a08ea108f7d23b899ad09a148972ef9072307131e35fb2ab75608802346`
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
# Sat, 21 Jul 2018 07:30:12 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 07:30:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ccb60f1ae6efe4fcef115db8143eb7f9ba134c63486f47b2c5176706ede35af5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3242225cc9bb151789b4ba606903862b68b0e81682a5ab75245d76ab1ddf38fb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='835fc6ebae5cb4368fc39683a911fe5a25c36b4251b2b254112f3fc8f36a9f39' ;; 		i386) goRelArch='linux-386'; goRelSha256='acc26b494699f7dca7e30ec2c08d0f2af8813437a234f17605fafe9c7c8cf69e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='31168f17e2791e664e591dc4c5e2c37ab5c3b942a2898d84075437daed3fc9f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='648b0f22ff517668bf4b642749a2a479d421f69b1e11bcd0ab1a71994e1c94db' ;; 		*) goRelArch='src'; goRelSha256='50f4bd23334f54c60ad7d07c742874c62488cf1556fa3e6e51dc03d5f5abda81'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 21 Jul 2018 07:30:34 GMT
ENV GOPATH=/go
# Sat, 21 Jul 2018 07:30:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 07:30:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 21 Jul 2018 07:30:36 GMT
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
	-	`sha256:974ef7b8b74900a05a7eb2803ed0d75ba7807fbbbe9873b431c0f42f9aadb073`  
		Last Modified: Sat, 21 Jul 2018 07:37:16 GMT  
		Size: 177.3 MB (177328568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43e9437a0772916c2a1cd56a43e3c236faef89ba64fcd00c02cee945780ea6b`  
		Last Modified: Sat, 21 Jul 2018 07:36:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c205298130046306f6da74934bf6e5b19979f4c489dc39ce8b17b2082a41818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299551836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce75a20b67b6d0167ccb696b1c3a1eeb350d362a6488056a9b1bf1976b7b67d1`
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
# Sat, 21 Jul 2018 11:59:50 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 12:00:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ccb60f1ae6efe4fcef115db8143eb7f9ba134c63486f47b2c5176706ede35af5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3242225cc9bb151789b4ba606903862b68b0e81682a5ab75245d76ab1ddf38fb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='835fc6ebae5cb4368fc39683a911fe5a25c36b4251b2b254112f3fc8f36a9f39' ;; 		i386) goRelArch='linux-386'; goRelSha256='acc26b494699f7dca7e30ec2c08d0f2af8813437a234f17605fafe9c7c8cf69e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='31168f17e2791e664e591dc4c5e2c37ab5c3b942a2898d84075437daed3fc9f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='648b0f22ff517668bf4b642749a2a479d421f69b1e11bcd0ab1a71994e1c94db' ;; 		*) goRelArch='src'; goRelSha256='50f4bd23334f54c60ad7d07c742874c62488cf1556fa3e6e51dc03d5f5abda81'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 21 Jul 2018 12:00:24 GMT
ENV GOPATH=/go
# Sat, 21 Jul 2018 12:00:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 12:00:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 21 Jul 2018 12:00:27 GMT
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
	-	`sha256:15cfcf4f67319755507c57db03083889550109c3f9fcf7d2577229882e78a55a`  
		Last Modified: Sat, 21 Jul 2018 12:01:35 GMT  
		Size: 151.8 MB (151833273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc996fd2840d08d49b1d4648898b545b8430470c93e9b0d0c687555635bccc7`  
		Last Modified: Sat, 21 Jul 2018 12:00:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:b0c70e65157702edf0696e3f0d34b8e6b69830319c0c01743a74c369eab47595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304276069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a0a69ac5c3c54eb36ae4d3b5c0c2465e3118a585fc66514472a1d13cec845a`
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
# Sat, 21 Jul 2018 08:58:57 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 08:59:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ccb60f1ae6efe4fcef115db8143eb7f9ba134c63486f47b2c5176706ede35af5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3242225cc9bb151789b4ba606903862b68b0e81682a5ab75245d76ab1ddf38fb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='835fc6ebae5cb4368fc39683a911fe5a25c36b4251b2b254112f3fc8f36a9f39' ;; 		i386) goRelArch='linux-386'; goRelSha256='acc26b494699f7dca7e30ec2c08d0f2af8813437a234f17605fafe9c7c8cf69e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='31168f17e2791e664e591dc4c5e2c37ab5c3b942a2898d84075437daed3fc9f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='648b0f22ff517668bf4b642749a2a479d421f69b1e11bcd0ab1a71994e1c94db' ;; 		*) goRelArch='src'; goRelSha256='50f4bd23334f54c60ad7d07c742874c62488cf1556fa3e6e51dc03d5f5abda81'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 21 Jul 2018 08:59:25 GMT
ENV GOPATH=/go
# Sat, 21 Jul 2018 08:59:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:59:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 21 Jul 2018 08:59:28 GMT
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
	-	`sha256:7605a3e8dea30ceeaf6e2c8ee1cbd0d61f12bf5ee1eb661cd8bd5e2470cb5f5f`  
		Last Modified: Sat, 21 Jul 2018 09:07:42 GMT  
		Size: 150.4 MB (150380495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd1809653d9056df24bbfb673ad72c11e0dfe146dbf8781bebed57f18d8e483`  
		Last Modified: Sat, 21 Jul 2018 09:06:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:9fe9e9752a081f0ee9931c7b2b2117fdb4ff773f18f8239569c2fa047fbc9134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336003890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46502d77cba79610ead3bc4f1608c745486a680110445be3537be9befad76384`
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
# Sat, 21 Jul 2018 10:50:15 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 10:50:40 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ccb60f1ae6efe4fcef115db8143eb7f9ba134c63486f47b2c5176706ede35af5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3242225cc9bb151789b4ba606903862b68b0e81682a5ab75245d76ab1ddf38fb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='835fc6ebae5cb4368fc39683a911fe5a25c36b4251b2b254112f3fc8f36a9f39' ;; 		i386) goRelArch='linux-386'; goRelSha256='acc26b494699f7dca7e30ec2c08d0f2af8813437a234f17605fafe9c7c8cf69e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='31168f17e2791e664e591dc4c5e2c37ab5c3b942a2898d84075437daed3fc9f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='648b0f22ff517668bf4b642749a2a479d421f69b1e11bcd0ab1a71994e1c94db' ;; 		*) goRelArch='src'; goRelSha256='50f4bd23334f54c60ad7d07c742874c62488cf1556fa3e6e51dc03d5f5abda81'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 21 Jul 2018 10:50:40 GMT
ENV GOPATH=/go
# Sat, 21 Jul 2018 10:50:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 10:50:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 21 Jul 2018 10:50:42 GMT
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
	-	`sha256:482eb690bd4ba4b47410567cc1163e63dce43a7b7a83415c98f9d293ff2e630c`  
		Last Modified: Sat, 21 Jul 2018 10:58:47 GMT  
		Size: 161.0 MB (160957586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2527f7ceffec32fb846f6360406277c3e4be51ca95a534b5c2b94175b51ba68`  
		Last Modified: Sat, 21 Jul 2018 10:57:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:7c17701e07a31d7871e41d17ed5b7c73278e34f36e44ad69343ab9e1034fe176
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.7 MB (311650483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff7cf9d84e859bf4c2c0ce170177a9f9fcfcdd4ed246130ab39fe767814c1f0`
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
# Sat, 21 Jul 2018 08:26:19 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 08:26:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ccb60f1ae6efe4fcef115db8143eb7f9ba134c63486f47b2c5176706ede35af5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3242225cc9bb151789b4ba606903862b68b0e81682a5ab75245d76ab1ddf38fb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='835fc6ebae5cb4368fc39683a911fe5a25c36b4251b2b254112f3fc8f36a9f39' ;; 		i386) goRelArch='linux-386'; goRelSha256='acc26b494699f7dca7e30ec2c08d0f2af8813437a234f17605fafe9c7c8cf69e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='31168f17e2791e664e591dc4c5e2c37ab5c3b942a2898d84075437daed3fc9f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='648b0f22ff517668bf4b642749a2a479d421f69b1e11bcd0ab1a71994e1c94db' ;; 		*) goRelArch='src'; goRelSha256='50f4bd23334f54c60ad7d07c742874c62488cf1556fa3e6e51dc03d5f5abda81'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 21 Jul 2018 08:26:43 GMT
ENV GOPATH=/go
# Sat, 21 Jul 2018 08:26:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:26:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 21 Jul 2018 08:26:47 GMT
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
	-	`sha256:b1549120a97a802dda32d751f85eb87d83936025c038a5a96b995acd97272e19`  
		Last Modified: Sat, 21 Jul 2018 08:31:53 GMT  
		Size: 149.0 MB (148999014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27e3b5a47ae82a164e93391d41e2717fd267f4c314dbda63d06023129dbc15d`  
		Last Modified: Sat, 21 Jul 2018 08:31:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; s390x

```console
$ docker pull golang@sha256:9f0474a58a66caa56c33c26909e3dd4c221ab8a902a80bd3c2f26728dadc4d1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306742752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bc6ec988a321d106e5e2e36bb08e6b80fcdbfe60a855d9376354aecdd9f0d6`
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
# Sat, 21 Jul 2018 11:49:39 GMT
ENV GOLANG_VERSION=1.11beta2
# Sat, 21 Jul 2018 11:50:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ccb60f1ae6efe4fcef115db8143eb7f9ba134c63486f47b2c5176706ede35af5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3242225cc9bb151789b4ba606903862b68b0e81682a5ab75245d76ab1ddf38fb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='835fc6ebae5cb4368fc39683a911fe5a25c36b4251b2b254112f3fc8f36a9f39' ;; 		i386) goRelArch='linux-386'; goRelSha256='acc26b494699f7dca7e30ec2c08d0f2af8813437a234f17605fafe9c7c8cf69e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='31168f17e2791e664e591dc4c5e2c37ab5c3b942a2898d84075437daed3fc9f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='648b0f22ff517668bf4b642749a2a479d421f69b1e11bcd0ab1a71994e1c94db' ;; 		*) goRelArch='src'; goRelSha256='50f4bd23334f54c60ad7d07c742874c62488cf1556fa3e6e51dc03d5f5abda81'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 21 Jul 2018 11:50:01 GMT
ENV GOPATH=/go
# Sat, 21 Jul 2018 11:50:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 11:50:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 21 Jul 2018 11:50:02 GMT
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
	-	`sha256:61634b00541b87d1ee2b9a528358184fe5a46fa3149133cc131bcea0edf19ec8`  
		Last Modified: Sat, 21 Jul 2018 11:54:07 GMT  
		Size: 150.6 MB (150550612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f201db5a11510e003f53ed45a26e8664a52c5f4db41abc9d2cfcc6ee9b38c6d0`  
		Last Modified: Sat, 21 Jul 2018 11:53:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

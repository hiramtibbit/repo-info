## `golang:1-stretch`

```console
$ docker pull golang@sha256:de39c4366f43dbb1f6a2530a3e872ed1ef1c2cfe03ef0e1aea423ab668bbd96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:f769ad255dfe8618a7e0e7390dc6c8659708213f047a6d2af6d51e7f3d8d35ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295202534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9ac7032e33f27575623ee7e610ddbeeda6739c4b6288d9938c3c96473b2b08`
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
# Mon, 27 Aug 2018 20:28:48 GMT
ENV GOLANG_VERSION=1.11
# Mon, 27 Aug 2018 20:29:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b3fcf280ff86558e0559e185b601c9eade0fd24c900b4c63cd14d1d38613e499' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='8ffeb3577d8ca5477064f1cb8739835973c866487f2bf81df1227eaa96826acd' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='e4853168f41d0bea65e4d38f992a2d44b58552605f623640c5ead89d515c56c9' ;; 		i386) goRelArch='linux-386'; goRelSha256='1a91932b65b4af2f84ef2dce10d790e6a0d3d22c9ea1bdf3d8c4d9279dfa680e' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e874d617f0e322f8c2dda8c23ea3a2ea21d5dfe7177abb1f8b6a0ac7cd653272' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c113495fbb175d6beb1b881750de1dd034c7ae8657c30b3de8808032c9af0a15' ;; 		*) goRelArch='src'; goRelSha256='afc1e12f5fe49a471e3aae7d906c73e9d5b1fdd36d52d72652dde8f6250152fb'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 27 Aug 2018 20:29:01 GMT
ENV GOPATH=/go
# Mon, 27 Aug 2018 20:29:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Aug 2018 20:29:03 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 27 Aug 2018 20:29:04 GMT
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
	-	`sha256:9989a901a73867f06c945ad0ffdb6fad9ae405dfad4d66abd27c9a9d84878179`  
		Last Modified: Mon, 27 Aug 2018 20:39:06 GMT  
		Size: 127.2 MB (127166212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9dc2a1cc9468b1adf19957dee30eac264903dab9ce0723c92548ecc07b742c`  
		Last Modified: Mon, 27 Aug 2018 20:38:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

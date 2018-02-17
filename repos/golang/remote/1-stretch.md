## `golang:1-stretch`

```console
$ docker pull golang@sha256:b22ce97542ce216359f45fc5fe64740d08ac631a6a90944aef71b37d7b8bd862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:482a2b599bed68bf9f4d5d7cb90df807bbdda6178cd08d6e9d098112fa8fa662
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (288022112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1309ff8e0dd7042ca34cae71c2d81ef994966a6c8a8a60c248dd2df9f6f631`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:59:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 21:02:00 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:02:12 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc7abc9c77e8f45528be19a1ece16f5e717bebd0533ac5f9e88568836418881`  
		Last Modified: Thu, 15 Feb 2018 16:02:10 GMT  
		Size: 57.5 MB (57497618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4ddae991a23fd14a7731faa06e71684785d62f6787def3b88f06c72615a4ea`  
		Last Modified: Sat, 17 Feb 2018 21:34:51 GMT  
		Size: 119.9 MB (119925801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3987c89b391f7e6555c457e82a762c2fd0497b9afe1405adade17abaca5bdb`  
		Last Modified: Sat, 17 Feb 2018 21:34:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:190889b45d953d9908861d6f5e2da72f528b1c8706078268525491e42ab840ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256472972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2342aafd77a63efcdb661e288bc3b3e7b4a2749899b8b1d386de3131f0643f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 05:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 20:54:17 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:35 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:54:37 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:54:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:54:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:54:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4dab2b03cd9d53d1f581b793cd7497833b372d690ba645197374028cc06528`  
		Last Modified: Fri, 16 Feb 2018 05:41:38 GMT  
		Size: 48.9 MB (48935360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff24236bf6d181857994663bbac00655e8f9ab992d33b74e39237d88a86fef72`  
		Last Modified: Sat, 17 Feb 2018 20:58:44 GMT  
		Size: 102.5 MB (102478118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252345b03b32150cd94cf656553226f5ac30e7008f4c393a7e3bfdb08a22da5d`  
		Last Modified: Sat, 17 Feb 2018 20:58:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

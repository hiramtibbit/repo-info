## `golang:rc`

```console
$ docker pull golang@sha256:20cb17e12401f3b5c640da55ac231911e0e34a8be058fe1adc964f896df679f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64
	-	windows version 10.0.17134.228; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:36712b65e4a64f25c8a1a00e0a07ab39922a5b0c1bb9d3b22c0f842c428a89f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295202754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae4c195e4174850728891b56e41fa7f7af4d70c0d4a41b08f23e03a3f6ec5f2`
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
# Fri, 24 Aug 2018 01:27:07 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 01:27:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='7d3fc1dec64b056cbd22ffd80bb9733725c1296aabfd58cc92bab8a5c6560e03' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='502272db03f6c6883fec5c9e17730b469966d87f9c07e6a306637ddf0fe83526' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='5b160c1ea4c863f82d5d9ebad51edc08f5a5ecf368d315c8aff2c99420fb075c' ;; 		i386) goRelArch='linux-386'; goRelSha256='a1982f3af77875c1e8f7c5056ce815236a62902472aceb95fc66e47555d88010' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='d58470aa1e79282b35f7b61cb8d1ac3f0cbecd6d837076795a30003c947feef2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='85f56c3847eb1ba6b1faf14869671b6d7c31d5ef0082dc1c32a2c53a5e831c76' ;; 		*) goRelArch='src'; goRelSha256='5947695c5289ddb6ddc22d01d498b94ddb86bb6775593d772156c4e72a482516'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 24 Aug 2018 01:27:38 GMT
ENV GOPATH=/go
# Fri, 24 Aug 2018 01:27:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 01:27:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 24 Aug 2018 01:27:40 GMT
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
	-	`sha256:9c621b6d3260e0ff79f8e39187f7b5a4886700aa7c78a7a850e3fb9e44886503`  
		Last Modified: Fri, 24 Aug 2018 01:34:59 GMT  
		Size: 127.2 MB (127166432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd8b0ca052149a36ca66e5e4f075f4ca82e7a2753e2f78d446dd53750d9832`  
		Last Modified: Fri, 24 Aug 2018 01:34:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm variant v7

```console
$ docker pull golang@sha256:c6e0752bada38109ec7eaf471187b1cad2c4f4941840a93738da727e23361b3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249441839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c87106f33b14ae6bda2850bc9a7424309110153f21a38b0acad52e195755b45`
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
# Fri, 24 Aug 2018 11:57:34 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 11:57:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='7d3fc1dec64b056cbd22ffd80bb9733725c1296aabfd58cc92bab8a5c6560e03' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='502272db03f6c6883fec5c9e17730b469966d87f9c07e6a306637ddf0fe83526' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='5b160c1ea4c863f82d5d9ebad51edc08f5a5ecf368d315c8aff2c99420fb075c' ;; 		i386) goRelArch='linux-386'; goRelSha256='a1982f3af77875c1e8f7c5056ce815236a62902472aceb95fc66e47555d88010' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='d58470aa1e79282b35f7b61cb8d1ac3f0cbecd6d837076795a30003c947feef2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='85f56c3847eb1ba6b1faf14869671b6d7c31d5ef0082dc1c32a2c53a5e831c76' ;; 		*) goRelArch='src'; goRelSha256='5947695c5289ddb6ddc22d01d498b94ddb86bb6775593d772156c4e72a482516'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 24 Aug 2018 11:58:00 GMT
ENV GOPATH=/go
# Fri, 24 Aug 2018 11:58:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 11:58:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 24 Aug 2018 11:58:06 GMT
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
	-	`sha256:e1d8f646a3df4e18408aad2c6d8a30c035d2d25fc47aea56366127f1781815b9`  
		Last Modified: Fri, 24 Aug 2018 11:58:59 GMT  
		Size: 101.7 MB (101723277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2523e09d2c551087dda53702f44e550a55bb74aea281e495aea61e212f85e9d`  
		Last Modified: Fri, 24 Aug 2018 11:58:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:70f128a68499d73eab3c7db103befbe4544c6b464b869a02891f80dd39ec2f6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254813214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f803aa65b5c75d714660d59b66250d519b45a7e17adbd0d9a0ba3dd29d16d721`
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
# Fri, 24 Aug 2018 01:27:13 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 01:27:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='7d3fc1dec64b056cbd22ffd80bb9733725c1296aabfd58cc92bab8a5c6560e03' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='502272db03f6c6883fec5c9e17730b469966d87f9c07e6a306637ddf0fe83526' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='5b160c1ea4c863f82d5d9ebad51edc08f5a5ecf368d315c8aff2c99420fb075c' ;; 		i386) goRelArch='linux-386'; goRelSha256='a1982f3af77875c1e8f7c5056ce815236a62902472aceb95fc66e47555d88010' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='d58470aa1e79282b35f7b61cb8d1ac3f0cbecd6d837076795a30003c947feef2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='85f56c3847eb1ba6b1faf14869671b6d7c31d5ef0082dc1c32a2c53a5e831c76' ;; 		*) goRelArch='src'; goRelSha256='5947695c5289ddb6ddc22d01d498b94ddb86bb6775593d772156c4e72a482516'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 24 Aug 2018 01:27:47 GMT
ENV GOPATH=/go
# Fri, 24 Aug 2018 01:27:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 01:27:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 24 Aug 2018 01:27:51 GMT
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
	-	`sha256:b44b3dc68b83a19adc04a341a16caff58b63d1096f8dd5d78bbb28b202a0ab10`  
		Last Modified: Fri, 24 Aug 2018 01:37:28 GMT  
		Size: 100.9 MB (100917641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef41cd36bfa54472610f3030a389e1263723ae4c965a251ec763dd2eedbcde27`  
		Last Modified: Fri, 24 Aug 2018 01:36:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; 386

```console
$ docker pull golang@sha256:a8e5b42f914caad4792a52aefed63861b22654b1bc76f11fb588c401b3e8aae3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285505211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931be72b6d9c6ea474387cc28908d82441b4a27fa7b6d6e75242bbd4e92fce5b`
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
# Fri, 24 Aug 2018 10:38:52 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 10:39:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='7d3fc1dec64b056cbd22ffd80bb9733725c1296aabfd58cc92bab8a5c6560e03' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='502272db03f6c6883fec5c9e17730b469966d87f9c07e6a306637ddf0fe83526' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='5b160c1ea4c863f82d5d9ebad51edc08f5a5ecf368d315c8aff2c99420fb075c' ;; 		i386) goRelArch='linux-386'; goRelSha256='a1982f3af77875c1e8f7c5056ce815236a62902472aceb95fc66e47555d88010' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='d58470aa1e79282b35f7b61cb8d1ac3f0cbecd6d837076795a30003c947feef2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='85f56c3847eb1ba6b1faf14869671b6d7c31d5ef0082dc1c32a2c53a5e831c76' ;; 		*) goRelArch='src'; goRelSha256='5947695c5289ddb6ddc22d01d498b94ddb86bb6775593d772156c4e72a482516'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 24 Aug 2018 10:39:16 GMT
ENV GOPATH=/go
# Fri, 24 Aug 2018 10:39:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 10:39:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 24 Aug 2018 10:39:17 GMT
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
	-	`sha256:dac7616c2e6c87ae49cb6387f2510db52c37ef8f4acd6542d3fe3ad1d3962a12`  
		Last Modified: Fri, 24 Aug 2018 10:46:18 GMT  
		Size: 110.5 MB (110458907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93506fa56a2197d9a77521250acdd1b3c12da432326a7efe328d9dce320b0d56`  
		Last Modified: Fri, 24 Aug 2018 10:45:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; ppc64le

```console
$ docker pull golang@sha256:1d60d2e32b1b1a726b38f5a34788d974f251b13556fc45c0adacd3c24b4a3b1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.1 MB (262122923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5dbd24572f8675547e9e6b520d7f528117b03678a31f7b688c802d2199c919d`
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
# Fri, 24 Aug 2018 08:50:55 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 08:51:15 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='7d3fc1dec64b056cbd22ffd80bb9733725c1296aabfd58cc92bab8a5c6560e03' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='502272db03f6c6883fec5c9e17730b469966d87f9c07e6a306637ddf0fe83526' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='5b160c1ea4c863f82d5d9ebad51edc08f5a5ecf368d315c8aff2c99420fb075c' ;; 		i386) goRelArch='linux-386'; goRelSha256='a1982f3af77875c1e8f7c5056ce815236a62902472aceb95fc66e47555d88010' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='d58470aa1e79282b35f7b61cb8d1ac3f0cbecd6d837076795a30003c947feef2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='85f56c3847eb1ba6b1faf14869671b6d7c31d5ef0082dc1c32a2c53a5e831c76' ;; 		*) goRelArch='src'; goRelSha256='5947695c5289ddb6ddc22d01d498b94ddb86bb6775593d772156c4e72a482516'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 24 Aug 2018 08:51:17 GMT
ENV GOPATH=/go
# Fri, 24 Aug 2018 08:51:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 08:51:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 24 Aug 2018 08:51:24 GMT
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
	-	`sha256:c11f5076d8df4b4486a3a645f1aa7ebd928cc735e02d011ae13cc995fe5f7cdd`  
		Last Modified: Fri, 24 Aug 2018 08:56:14 GMT  
		Size: 99.5 MB (99471454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df77fc43a054f7dee3a068a0a5e8aac8593ff9d1c7fec849c76e9c2599105fb`  
		Last Modified: Fri, 24 Aug 2018 08:55:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; s390x

```console
$ docker pull golang@sha256:8cde76aa081642db006870a8ab26474b5172bd2303aa0ad7c18f5ad4388bb735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256643372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69431a88d072e26f516b4badddbe0862a7dd98c90e103b0c6c22ccccd7274ed`
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
# Fri, 24 Aug 2018 11:41:28 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 11:41:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='7d3fc1dec64b056cbd22ffd80bb9733725c1296aabfd58cc92bab8a5c6560e03' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='502272db03f6c6883fec5c9e17730b469966d87f9c07e6a306637ddf0fe83526' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='5b160c1ea4c863f82d5d9ebad51edc08f5a5ecf368d315c8aff2c99420fb075c' ;; 		i386) goRelArch='linux-386'; goRelSha256='a1982f3af77875c1e8f7c5056ce815236a62902472aceb95fc66e47555d88010' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='d58470aa1e79282b35f7b61cb8d1ac3f0cbecd6d837076795a30003c947feef2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='85f56c3847eb1ba6b1faf14869671b6d7c31d5ef0082dc1c32a2c53a5e831c76' ;; 		*) goRelArch='src'; goRelSha256='5947695c5289ddb6ddc22d01d498b94ddb86bb6775593d772156c4e72a482516'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 24 Aug 2018 11:41:38 GMT
ENV GOPATH=/go
# Fri, 24 Aug 2018 11:41:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 11:41:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 24 Aug 2018 11:41:39 GMT
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
	-	`sha256:8fce0461f66ccf0afa291b23b8f2d8320b84a34a5c18bb10253db1e2da3dafec`  
		Last Modified: Fri, 24 Aug 2018 11:47:32 GMT  
		Size: 100.5 MB (100451233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49765e5a96dd94cc507dffc3bd782b50d7622257c886d299f48c597ac08185e5`  
		Last Modified: Fri, 24 Aug 2018 11:47:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.14393.2430; amd64

```console
$ docker pull golang@sha256:af9294201e2313eaeb7da5d2f8fbd5e8a6667939e9ddbee0bc5cd5fc1ed1b2bf
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5686434759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897e7413bf5f4ab31794794cd8dea75da4494f3809d2b9da7f838788ad496d0e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:30:21 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:30:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:30:23 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:30:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:32:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:32:13 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:33:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 24 Aug 2018 09:15:34 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 09:22:36 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'edd1ad3f94ef31eacfe267f30df00ac832cc9547e88de03e1368ae23630070eb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 24 Aug 2018 09:22:37 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b679707990911db06e417ee415391ab49bbc2ffcf1de2567c03bfe49f886aa`  
		Last Modified: Thu, 23 Aug 2018 11:55:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcd827afbf10c585f5f3c94755187d50391b4562c6c29b65c6f5f33991c2`  
		Last Modified: Thu, 23 Aug 2018 11:55:19 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1546d3d7838915c43d1426749344b49f04378aea046c6153eaa3028227176883`  
		Last Modified: Thu, 23 Aug 2018 11:55:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358492519165911ca86c3ca8e162e66d40ac5b489716979cd8012271df746a8`  
		Last Modified: Thu, 23 Aug 2018 11:55:17 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7946f07b69c61143eddb456d7f12d81e4c0ee1e9400b89450d680a13ebc2b7a`  
		Last Modified: Thu, 23 Aug 2018 11:55:31 GMT  
		Size: 29.5 MB (29458229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe6089d5b9e99a950ab9dbdaa757a13d23f6716a85566dc5fc6f6fa705b1f38`  
		Last Modified: Thu, 23 Aug 2018 11:55:14 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3f9a33f61ee1a3cf5c3e9d36f9f0e5ae233c869ca4ea267e88ab4b8c5c1800`  
		Last Modified: Thu, 23 Aug 2018 11:55:16 GMT  
		Size: 5.0 MB (4991074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c48b0b91a9b905674e25df14f7682235b4c3e234f7d71b74f37f41f6b702b8`  
		Last Modified: Fri, 24 Aug 2018 09:42:54 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133b617cfbaa1dced7784cda51d3a0f2963cd0158e1b0b356393011ad371363`  
		Last Modified: Fri, 24 Aug 2018 09:44:25 GMT  
		Size: 140.1 MB (140084763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17737a406b60a043e9fdef17ac167a0d1b8e9c6207857cac846dae638b9136f0`  
		Last Modified: Fri, 24 Aug 2018 09:42:54 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.16299.611; amd64

```console
$ docker pull golang@sha256:0f2a118886e0d7bde516a414c7e3606ef567c2f84ac28401a501ae16eb3c4108
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3281364546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4c9a85cf8afbfa15c932aeb29bcaffd893329b4dd633a13cfb607a34b08a2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:41:07 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:41:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:41:09 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:41:10 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:42:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:42:38 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:43:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 24 Aug 2018 09:22:48 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 09:29:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'edd1ad3f94ef31eacfe267f30df00ac832cc9547e88de03e1368ae23630070eb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 24 Aug 2018 09:29:09 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c12058357a053c6542d38c7a21e113d4ce7a615e5eb4f8807c4230d1b4031ea`  
		Last Modified: Thu, 23 Aug 2018 11:57:33 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90e596423afd7a8f1e01b0a8d2d231f19b6e640f1c5e4b5de7c49e597ad7d7`  
		Last Modified: Thu, 23 Aug 2018 11:57:32 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54632cb246968a723c80e586ff81c81da034144191691b10cbaa26ceb8dbf4a0`  
		Last Modified: Thu, 23 Aug 2018 11:57:30 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf35363b2dd3eb1a4bb0e62d2db26a4a2defa6ca083a9dee30f73056e80d028`  
		Last Modified: Thu, 23 Aug 2018 11:57:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3cff204ef4c60216860767897bfa56b59ae3014ac7e76295086bba5e8cefd2`  
		Last Modified: Thu, 23 Aug 2018 11:57:42 GMT  
		Size: 29.2 MB (29161634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa232763dbc5580f4156b40c2519f368a45b93a7d91097d45474e894e1dbae2d`  
		Last Modified: Thu, 23 Aug 2018 11:57:25 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6d57d06ca4925eb2814abf9499002d83469fa132f97689c46663f159390605`  
		Last Modified: Thu, 23 Aug 2018 11:57:28 GMT  
		Size: 4.7 MB (4726635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26160a57a7526c7553d0607f7a8433eadfd266d05312aa055c207807c606fbf`  
		Last Modified: Fri, 24 Aug 2018 09:44:42 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af9f966b943f4bd867dca806afb2adfe23f2cd4ca26ae7355c5f888b6b67756`  
		Last Modified: Fri, 24 Aug 2018 09:46:10 GMT  
		Size: 135.3 MB (135330834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c164e2e199e443b602a773afee06bc5ef624a7b978112f7db0e0085975c9c69a`  
		Last Modified: Fri, 24 Aug 2018 09:44:41 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.17134.228; amd64

```console
$ docker pull golang@sha256:e0b5eb452e764ee7e8d2b5ab6d71c86a1bba52eb0a389e70083b258fbaa5b249
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2350053738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b570bcdc4930f15bcca9b5d0d6a67c480219583513c9d211e0d400c7ee08d06e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:21:55 GMT
RUN Install update 10.0.17134.228
# Thu, 23 Aug 2018 10:50:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:50:23 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:50:24 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:50:25 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:50:26 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:52:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:52:12 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:53:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 24 Aug 2018 09:29:17 GMT
ENV GOLANG_VERSION=1.11rc2
# Fri, 24 Aug 2018 09:35:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'edd1ad3f94ef31eacfe267f30df00ac832cc9547e88de03e1368ae23630070eb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 24 Aug 2018 09:35:34 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd59519ea2c2d73a5cba6e562d012a127d08d86dfc5067535eef141406c3750b`  
		Last Modified: Mon, 13 Aug 2018 19:10:18 GMT  
		Size: 530.1 MB (530108736 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:595cc1655e57da5d50a2e822ee129ee8e86e86e5873f2d763a68fae6b3990104`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6d2b299c84ae2e198fb2b867116f6839b0e1caf9b096c955bd800645c3afad`  
		Last Modified: Thu, 23 Aug 2018 11:59:45 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f3e4f4392aedec4db7eded9a3a921914ab0825445dd1aaf24324b1c856aacc`  
		Last Modified: Thu, 23 Aug 2018 11:59:42 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60530ba8dc94c45f62a432fcdb659a12f8eb409a141f67f77dd4cb7db11ff55a`  
		Last Modified: Thu, 23 Aug 2018 11:59:41 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4222224cd6691d2bca899f785e6348ac7457df577c6d3183d5f205519e23d1`  
		Last Modified: Thu, 23 Aug 2018 11:59:42 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9285900c73b0e42d1f15038b5940d3045dcaf2af5f984343a06e9df1b56c703b`  
		Last Modified: Thu, 23 Aug 2018 11:59:56 GMT  
		Size: 29.0 MB (29026371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63186bdf69850e38a987b556a2216cb9afb81c15f48fd361475351f188d9e76c`  
		Last Modified: Thu, 23 Aug 2018 11:59:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e416a24534076d63b3e6fd0c30a55aeb81ce3a198bc149bdf919c6770f4b9b6a`  
		Last Modified: Thu, 23 Aug 2018 11:59:39 GMT  
		Size: 308.1 KB (308130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a001047069de3e2f3bc2ff244a3547c1b92df6477b8129a4905e1429c6c69b1`  
		Last Modified: Fri, 24 Aug 2018 09:46:26 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f99ed8df7a9abe75afac11b7b3cd5c8b6ebc3013c55c17fd9ff104400e49c4`  
		Last Modified: Fri, 24 Aug 2018 09:47:55 GMT  
		Size: 130.9 MB (130912506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629ac4af73b928d9f990cb59c4ac1a201f6c06ee21f21aa2db141c38b78e31bb`  
		Last Modified: Fri, 24 Aug 2018 09:46:26 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

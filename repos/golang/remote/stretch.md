## `golang:stretch`

```console
$ docker pull golang@sha256:86853790e138d1ac458c5da20354b4189fc9e56070dec03b8f1fc8f56a009ea9
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
$ docker pull golang@sha256:7342d6e6d8d25f62f1ae4f0b77d9affab82f84cc885dd40e1a02fced2ab2b5c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273699534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebf49f75a15efcd52f1269f8ad169bb50b3860d760ec65fa3280d71f4ac685c`
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
# Thu, 15 Feb 2018 15:59:58 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Feb 2018 16:00:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Feb 2018 16:00:14 GMT
ENV GOPATH=/go
# Thu, 15 Feb 2018 16:00:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:00:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Feb 2018 16:00:16 GMT
WORKDIR /go
# Thu, 15 Feb 2018 16:00:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
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
	-	`sha256:7fefae002ae50f593f6f1ba6cbba927f36c3640a306b50859e6ae1cfd217d02b`  
		Last Modified: Thu, 15 Feb 2018 16:03:52 GMT  
		Size: 105.6 MB (105601855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eef770e7cf3cd8a7a6c25b74efa8b7870cd52b8fa53d2a5a9f6db930770aac4`  
		Last Modified: Thu, 15 Feb 2018 16:03:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea064ba669b74ac5e38baf1114c2b0b10d9842192f945ba9e40d2f7c4026923`  
		Last Modified: Thu, 15 Feb 2018 16:03:24 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:c7f5c71fc7b975b28e0f4bdd27208add1c65242689b937eead779599ee97bb8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238826461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607029f4680c9967a45fa4fa85cbddd1135e5d5faa9ea6c3e2b8ed23d457d9a3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:15:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:16:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:18:01 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Feb 2018 18:19:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Feb 2018 18:19:06 GMT
ENV GOPATH=/go
# Thu, 15 Feb 2018 18:19:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:19:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Feb 2018 18:19:12 GMT
WORKDIR /go
# Thu, 15 Feb 2018 18:19:14 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5727b344ba95e9bd04f25fd92a97ede236a31569adaee62ca3843b214d4d7d3`  
		Last Modified: Thu, 15 Feb 2018 14:25:27 GMT  
		Size: 46.3 MB (46346480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e4bd596223f84ffe5cdab6b699c8e5ce68098f47d08e6ba13d587719b5837`  
		Last Modified: Thu, 15 Feb 2018 18:26:34 GMT  
		Size: 45.9 MB (45873890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c24c28153858f3d9b9ef76be492e9852625a01cb93c4b33e9484a6ce206d95`  
		Last Modified: Thu, 15 Feb 2018 18:30:37 GMT  
		Size: 91.0 MB (91007462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278a07b09170cad1848476334fcefb1d4bf9c578e67bd2e578d952f4d5a94b1`  
		Last Modified: Thu, 15 Feb 2018 18:28:27 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94adab7e2eac8f10dde8ba302d41359befcbd768973c48bbcd5b1f686dea50b0`  
		Last Modified: Thu, 15 Feb 2018 18:28:28 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:858e9bb2e53f1cefd307471ca6783d074464162d29de152858f02f84816048a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243604623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a6597cde3cc7ed2f40a7c007dd44c560fa6509982e13af807c9ef21c37e644`
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
# Fri, 16 Feb 2018 05:36:18 GMT
ENV GOLANG_VERSION=1.9.4
# Fri, 16 Feb 2018 05:36:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 16 Feb 2018 05:36:43 GMT
ENV GOPATH=/go
# Fri, 16 Feb 2018 05:36:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 05:36:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 16 Feb 2018 05:36:46 GMT
WORKDIR /go
# Fri, 16 Feb 2018 05:36:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
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
	-	`sha256:37e4f2f64ea0236b5950cd47d64eea44a40308723de1b696081914cb22ad19bc`  
		Last Modified: Fri, 16 Feb 2018 05:43:34 GMT  
		Size: 89.6 MB (89608399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d6b3f2c7ea4239bef05fbcdc974e222f01b0f311e7b96aa6d7a73c7f2cc79e`  
		Last Modified: Fri, 16 Feb 2018 05:42:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcecb12b797dc56eb1f76fdc21bd5f65edee106e7f2ca41146d269f26e3c9a66`  
		Last Modified: Fri, 16 Feb 2018 05:42:58 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:a6060f691110a3ec3c7cde44caf0f970e1053613f3f6896d27c2e8e6658245c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268384341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8e6c94617fad2bf002f66b273bfdcf3d072f90add26419b385a987e9cfa850`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 14:47:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 16:56:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 11:34:49 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 11:35:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:38:15 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:38:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:38:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:38:17 GMT
WORKDIR /go
# Thu, 08 Feb 2018 11:38:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff393180296f30b7b1cf94c5f67f82d434feb08eaff795346b0f5d3fe18c5ab6`  
		Last Modified: Wed, 13 Dec 2017 15:00:30 GMT  
		Size: 51.6 MB (51553695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c281e85d97666b881ac683415f45b31d0ccbdee55c6995710a9d10f4ae50fc`  
		Last Modified: Wed, 13 Dec 2017 17:08:28 GMT  
		Size: 62.0 MB (62034764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557a52eb09b8c9fa70bbb93b175c43972c8682c3def380d58ef90657c707b4ee`  
		Last Modified: Thu, 08 Feb 2018 13:48:24 GMT  
		Size: 93.3 MB (93262287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a8948c8428d7578839ea03fa0ea4f8da4379768dd75e630ac715f1a8ef3e8c`  
		Last Modified: Thu, 08 Feb 2018 13:47:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace3e7670a90ee27b45679e37d1c7a807fcedf041c7abdfa7bfcc9088149897a`  
		Last Modified: Thu, 08 Feb 2018 13:47:46 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:ae285fed76a421b88266e62c9f7aec870575b1c6bd08b0116ab995d22af5a83f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251880447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4830c14081ddead69056704aa378217759572d835900e4603e8e12bc53894bfe`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:24:08 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Feb 2018 12:24:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Feb 2018 12:24:33 GMT
ENV GOPATH=/go
# Thu, 15 Feb 2018 12:24:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 12:24:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Feb 2018 12:24:42 GMT
WORKDIR /go
# Thu, 15 Feb 2018 12:24:44 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4acbd3fc84f0d786f5b8129005c2741ceacffe02ee2cac4ccff8a3361d9957e`  
		Last Modified: Thu, 15 Feb 2018 12:31:21 GMT  
		Size: 52.7 MB (52711078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004a322b1a03c26b2e92f2e8bb2e7ed6b25238f624116be26bc148a988fd4c76`  
		Last Modified: Thu, 15 Feb 2018 12:32:28 GMT  
		Size: 89.1 MB (89122911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b7434f536350d8a89135f71ba5af9c526a018da7c4c69ea025b5694a602f58`  
		Last Modified: Thu, 15 Feb 2018 12:31:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9748f947528209be86c663c202d117bb5a3e1fc2ab85e40c659ad71a3fafccf0`  
		Last Modified: Thu, 15 Feb 2018 12:31:58 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:99003ecaad0539b279a95341408a908d7b1cfda7c0b9bf4d89b971844462475d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245045597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7d3383c2fc321b965a1700432855feb6e5437aec4cd7d7f33328c538a60af3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:54:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:55:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:53:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:53:22 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Feb 2018 08:53:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Feb 2018 08:53:28 GMT
ENV GOPATH=/go
# Thu, 15 Feb 2018 08:53:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:53:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Feb 2018 08:53:29 GMT
WORKDIR /go
# Thu, 15 Feb 2018 08:53:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8de23eb22736f2b1a1ee7d3e7cb7124762f87e4fa1d2e9848eac12bda54ba4`  
		Last Modified: Thu, 15 Feb 2018 07:00:44 GMT  
		Size: 10.7 MB (10668568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b245666c672793e5b50be400fd6cf3981742c5efc93f7836f0fa7b865e502f5`  
		Last Modified: Thu, 15 Feb 2018 07:00:43 GMT  
		Size: 4.4 MB (4365966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b323d54d0df6efa09cadf041d10bd52a0d84d1768c0b345362243407b46149`  
		Last Modified: Thu, 15 Feb 2018 07:01:03 GMT  
		Size: 50.4 MB (50448019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5108ea24bddd8579eebf3aa50751f8662435147e07b7fffa3da81c21f3546a`  
		Last Modified: Thu, 15 Feb 2018 08:55:10 GMT  
		Size: 45.8 MB (45818153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde39393267fc55c49c958eb10a1548534632ea8f020048576ec7c58095d4b11`  
		Last Modified: Thu, 15 Feb 2018 08:55:51 GMT  
		Size: 88.8 MB (88771509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33055760c1d680c81482f2a9bcd44bee3874bd30468d2fa2217397cd01590624`  
		Last Modified: Thu, 15 Feb 2018 08:55:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381cec5d7cadc1eeed605a794d8b8dbaafc261956ce2d1429565e1a38ea71cc1`  
		Last Modified: Thu, 15 Feb 2018 08:55:35 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

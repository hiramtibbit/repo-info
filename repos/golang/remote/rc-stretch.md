## `golang:rc-stretch`

```console
$ docker pull golang@sha256:0ee3f87232832eb2e6b8344e437cd6804a98437beccace97a87c179b2fc616fa
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
$ docker pull golang@sha256:4652515fea7500498dcce6cf93a33c17875c1a4debf756930ce6fd53c7020ad0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293104547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c3cb756f2b88241168d4cf7a310a14734820f4f07e6afb4e1943afc3d600db`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:03:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:03:45 GMT
ENV GOLANG_VERSION=1.12beta1
# Sat, 29 Dec 2018 10:04:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 29 Dec 2018 10:04:06 GMT
ENV GOPATH=/go
# Sat, 29 Dec 2018 10:04:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:04:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 29 Dec 2018 10:04:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7003e9fe93d4dc5b9ae2dc7ef49d7baae6d2ab31a7790fe3cf35e3d6af6b4`  
		Last Modified: Sat, 29 Dec 2018 10:06:25 GMT  
		Size: 57.6 MB (57618442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1328c6b789ccd09640598aa995d09a10910f559ca487cfbaf40fabae85ab47ac`  
		Last Modified: Sat, 29 Dec 2018 10:06:41 GMT  
		Size: 125.0 MB (124978555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02a229a20e33c5c58d885a7e81bdba85c1ecb64b7cdfacd9ee116339e537877`  
		Last Modified: Sat, 29 Dec 2018 10:06:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:1760b5801174efe3a237e13080c1d95ecd9977a77411d13a7f2344655aa8c2d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251486517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60b90c71aca73131a7d97593d56931c67d7b076935ca37a0cc7077f81161370`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:18:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:50:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 12:57:21 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 12:57:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 12:57:40 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 12:57:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 12:57:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 12:57:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ce4c93c1cd23dba26163faf2c97ba7d2ff4a19e9ec4f18fd0d9dbf3c3491d`  
		Last Modified: Fri, 16 Nov 2018 18:32:16 GMT  
		Size: 46.4 MB (46379290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda4add5024ad1b83e70e156bfc6418754f8a256e506c676d27bc4030a40e27f`  
		Last Modified: Fri, 16 Nov 2018 22:53:11 GMT  
		Size: 46.0 MB (45955196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c50c0263b0985d76fc14f50ec439cae0bda3c4eda28efacb250d4bcbe55175`  
		Last Modified: Thu, 20 Dec 2018 12:58:39 GMT  
		Size: 103.7 MB (103716863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d765ff4f46bfb717e25363abba885cefa7e291a80de7256fda2d369621defb0f`  
		Last Modified: Thu, 20 Dec 2018 12:58:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:a74ec1972e23e25ede36b1192f5a029c4ee79247d52325b08e38a9f19540d86a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255794634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b690f6529ebe72cc10538579a16b7ffe60c3b6bf72853271c11c33dbd2fabe`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:08:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 09:43:17 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 09:43:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 09:43:46 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 09:43:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 09:43:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 09:43:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3681e096a338a349b77c8333fb6f6f2b4877b86734a75c8645efb9da7394c939`  
		Last Modified: Sat, 17 Nov 2018 17:10:57 GMT  
		Size: 49.0 MB (49018741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c162d9c53d36c960f7e64cb448e02ebde525805ee147c08e8476c7ae564b9b`  
		Last Modified: Thu, 20 Dec 2018 09:49:05 GMT  
		Size: 101.9 MB (101870661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8423797086970e43820b6e75906b77341236cd7a3c36a0c79fc933c44acb49`  
		Last Modified: Thu, 20 Dec 2018 09:48:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:551e8c50928663f770d2ceb70bb5ded0f2a2c54039ef4af01dd6d54be4bc1b9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.8 MB (281761565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e2c18e8b249fbdf542fc7833caeeed212723d367c2e7f8819c5842f7250300`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Nov 2018 01:38:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 11:44:53 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 11:45:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 11:45:07 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 11:45:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 11:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 11:45:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d52d8a98da9ee8e0e320f8715e61c1fef9865ebe1f84d274fd16bd1209f3a5`  
		Last Modified: Sun, 18 Nov 2018 01:40:28 GMT  
		Size: 62.1 MB (62139467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f570647d80ad786cacbcb44f0fa0fed3db1a6196af413eaea199d6d9af97d5`  
		Last Modified: Thu, 20 Dec 2018 11:48:49 GMT  
		Size: 106.7 MB (106661488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3b89185e05667c2c24f36857bbe7079dd9da11fdf46e1bfd9bc676cbd0c1a`  
		Last Modified: Thu, 20 Dec 2018 11:48:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:9574af09a33499462395a322f93b32fd0c72c7e7e3eaf66c8057a139a003aeac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264328010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e1469692476aa8ac58756f342bb15185a68746a5a98696fe7652a6f5abffdb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:01:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 09:17:42 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 09:18:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 09:18:11 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 09:18:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 09:18:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 09:18:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed5eea210efd6721d72351fba002614595dfaeb086799bb6810038c38f191ee`  
		Last Modified: Sat, 17 Nov 2018 02:03:43 GMT  
		Size: 52.8 MB (52787022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710decf40055f77466ee6a7406cd50d310efc155256592cd4c36c462393efb64`  
		Last Modified: Thu, 20 Dec 2018 09:22:28 GMT  
		Size: 101.6 MB (101624327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f9080121b3bca741407aeacb44efa45260c558522e2c551ed6293e9f010f5b`  
		Last Modified: Thu, 20 Dec 2018 09:22:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; s390x

```console
$ docker pull golang@sha256:9ac10751c2c1b5e3bcfad167131a1deb0cdb44170b08998c343b56f64ea308a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264554616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b8eb5ccf3a30efd4c54aa06b0d9a519979e6970d952c6df18ff598127085aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:04:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 12:41:26 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 12:41:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 12:41:39 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 12:41:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 12:41:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 12:41:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6ad52af4fdc34f5b07382209a188db5a7b743eb7195cff73875a04a6608793`  
		Last Modified: Sat, 17 Nov 2018 04:05:43 GMT  
		Size: 45.9 MB (45895433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292703dab165a1b9b6bdb65d9fed3813e6b8c3349deba1d6781dc6efe6c093d5`  
		Last Modified: Thu, 20 Dec 2018 12:44:34 GMT  
		Size: 108.3 MB (108330219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daac9d03cb2b153f487cf7ccfe388ca0e229a0552c71c0a1fc1b35f9950b5ada`  
		Last Modified: Thu, 20 Dec 2018 12:44:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:rc`

```console
$ docker pull golang@sha256:4ba4f35dd8ff4261426096d71887f50ded10efde6c98cf6703b4efd4889a838a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:7e247da276a611f59b6785274e14e70a901f18c47524e19ca03e73fd3d155dab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293060843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86294db03385822d9c5fea56a05da7fa6b1663ba018bef59aaa241a1d955ffb3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 03:20:54 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 03:21:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 03:21:14 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 03:21:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 03:21:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 03:21:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368dba6a3315fbefd58fb50f420c76196944fa28cd330ddd7af0b7bad292223`  
		Last Modified: Sat, 17 Nov 2018 04:07:53 GMT  
		Size: 57.6 MB (57618422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d493dce575cf2455b47c6ba7e08fc81e3fd5da361314afe9a03d87a26e8a85`  
		Last Modified: Thu, 20 Dec 2018 03:24:59 GMT  
		Size: 125.0 MB (124978539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb76780f71538bd2c5ba8f7b322ac8ec8d0ec0e5f961013d98af95e638218d4`  
		Last Modified: Thu, 20 Dec 2018 03:24:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm variant v7

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

### `golang:rc` - linux; arm64 variant v8

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

### `golang:rc` - linux; 386

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

### `golang:rc` - linux; ppc64le

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

### `golang:rc` - linux; s390x

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

### `golang:rc` - windows version 10.0.14393.2665; amd64

```console
$ docker pull golang@sha256:41b8339c35ad464e7f5b64d86586f170a860ebbdef75a27f5a47cb69485d8d1e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5812708807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969599dc4272efdcdbb932873ac5d655c16d1476872b2ffaf051d5821d8ab1c9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 10:44:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 10:44:33 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 10:44:33 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 10:44:34 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 10:46:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:46:40 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 10:47:53 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 21 Dec 2018 10:16:23 GMT
ENV GOLANG_VERSION=1.12beta1
# Fri, 21 Dec 2018 10:23:33 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 21 Dec 2018 10:23:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3006c41e55a11b667d262aadd2a29e30fe128f834afe3fd57e9a7bd0bc1560`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608723e251a6da4000b8bbdac22288e7e7fd5486061c74730d2e46ef05600001`  
		Last Modified: Fri, 14 Dec 2018 11:43:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad996465c71ae7e0edaabb7da954dca8c7cf05dade88b4099d711c7d21a72b2`  
		Last Modified: Fri, 14 Dec 2018 11:43:30 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728947df61e1427e9eeb7a2202adf5e05be086dc7590369d0297eeb624b04b5d`  
		Last Modified: Fri, 14 Dec 2018 11:43:30 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049e3b8cc855f729ab3502a86df86fea866ef4a865faf9a085e14fe7f9e6a260`  
		Last Modified: Fri, 14 Dec 2018 11:43:44 GMT  
		Size: 29.6 MB (29634807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ce25bb6d2170ad9a0fc91e77ec673923f7f8817bee87e92fde49ce4e27f855`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc37d38119a1ea5fc1808aafb7256b8e748e0ba7b86be4553519c3b5dd41aafa`  
		Last Modified: Fri, 14 Dec 2018 11:43:29 GMT  
		Size: 5.2 MB (5184867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e4fad46a183c63fc7e6a93266a72f86b314d5f4c4d78914096853f8d3f911c`  
		Last Modified: Fri, 21 Dec 2018 10:44:47 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4d08c3ec1f58100dd4dea7b2ae6d1df33b794cf9409cea818e18a6616b0d15`  
		Last Modified: Fri, 21 Dec 2018 10:46:22 GMT  
		Size: 143.2 MB (143152233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0157ebc49c6287ffc8aabd6f0cbeb35b6b5c1988568dd62b63a7349c447df92`  
		Last Modified: Fri, 21 Dec 2018 10:44:47 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.16299.846; amd64

```console
$ docker pull golang@sha256:5ef498e3a27b024c6d581528193a1a6cb897091b72b5750ccacda6baa7d2cb9c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324316061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458298850413c8fd8b302b381fe28e1d3f60654b65015553eba4eb94306d46ac`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 10:54:53 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 10:54:54 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 10:54:55 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 10:54:56 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 10:56:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:56:43 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 10:57:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 21 Dec 2018 10:23:52 GMT
ENV GOLANG_VERSION=1.12beta1
# Fri, 21 Dec 2018 10:30:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 21 Dec 2018 10:30:19 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e20bf42689611acc614bb3803edb7b99fb1a5eaf4eaa11ce704fb221e4d17bf`  
		Last Modified: Fri, 14 Dec 2018 11:45:44 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e311246f562dd7df15c62bbb0186aafb57884d244fb7c10ad58818d9f1a4f45f`  
		Last Modified: Fri, 14 Dec 2018 11:45:44 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3706b0af9bfc6f655e961735719d7603d14d97612ae518d2c2ff5b7aa5a5172`  
		Last Modified: Fri, 14 Dec 2018 11:45:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa59c053ebeb9b3021bcf43c0d8aac0639d567fe1a13d0d81d2ed44f7afabc7a`  
		Last Modified: Fri, 14 Dec 2018 11:45:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c86f1cdd5b5db4f9321631e38cd2e2682b9bb846cb24f3fb2fc491a8ce79e4b`  
		Last Modified: Fri, 14 Dec 2018 11:45:54 GMT  
		Size: 29.2 MB (29198890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a3d37098c5d476102a9ac6055b6ef1c803a9f8faf128fa9068d4ece0115ad5`  
		Last Modified: Fri, 14 Dec 2018 11:45:38 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75842b557c663fc06d58bafb66475fb30399dc7b579d7a8b824bab8b6b80735b`  
		Last Modified: Fri, 14 Dec 2018 11:45:40 GMT  
		Size: 4.8 MB (4753547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4267379ad08b5bfbea5579f17052aced60a145b47223ef01ba3fc7fe8bc232`  
		Last Modified: Fri, 21 Dec 2018 10:46:40 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402a95bf9f0c6249cdf64ad344909f060712ad3a87d6825929fbf1fdc65d8c23`  
		Last Modified: Fri, 21 Dec 2018 10:48:14 GMT  
		Size: 138.2 MB (138216308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9b81566778f069c832e977035db5f9c999ac346bdea4b130616770aa62575b`  
		Last Modified: Fri, 21 Dec 2018 10:46:40 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.17134.469; amd64

```console
$ docker pull golang@sha256:b7558c2f3065ec31212e2dcf4b417b4580b222f94827bca4eb8719374b5deb6e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406824582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db633ed711e8a06902971af4af3e2b10aeb4e17533fee2b19c49530b241c84`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 11:04:07 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 11:04:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 11:04:09 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 11:04:10 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 11:05:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 11:05:49 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 11:06:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 21 Dec 2018 10:30:36 GMT
ENV GOLANG_VERSION=1.12beta1
# Fri, 21 Dec 2018 10:37:02 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 21 Dec 2018 10:37:03 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4757ae2c8dac21c9d1c951288f88f2f1ae151d5384c87410eac015056510e7`  
		Last Modified: Fri, 14 Dec 2018 11:47:49 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0252e2ef8870156b05fbe5dc15e179768309c8eac36ac36ef5875f6f943f2760`  
		Last Modified: Fri, 14 Dec 2018 11:47:47 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8974ee51534e5f3ed1e697b6ba66df8e06d04811c2692e0ebc1381a46a48f507`  
		Last Modified: Fri, 14 Dec 2018 11:47:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7914918b0f0abd08786b36aab3efdcb24938f3c295dfd66d1037a14e9ab16`  
		Last Modified: Fri, 14 Dec 2018 11:47:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a59f4aa044e215ee1f4bde311dfc3b302100bd41d975196db2fe524ac859a`  
		Last Modified: Fri, 14 Dec 2018 11:47:58 GMT  
		Size: 29.1 MB (29110623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e937512e6cb0cec3584a3be4b3bbdafcc200bfb4ef366ed05034b9c5e38e15`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3f9686c7c0b0c50e76f87f0159a8edd837b887f4087bbcdcfab379d84e880f`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 318.0 KB (317954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a781b35df820437e2c81a0dd53f835c29bc96bf4ce80827f603f7b0539e81237`  
		Last Modified: Fri, 21 Dec 2018 10:48:33 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be98277cb748cb5ce4f196d08badd5e44ae465e4094a675383c98585d1b3234`  
		Last Modified: Fri, 21 Dec 2018 10:50:07 GMT  
		Size: 133.8 MB (133799240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a343e3a13bdbb5b6fea34cc27c63dbd842e9a9cc1d569be809ba35c8357dd5a`  
		Last Modified: Fri, 21 Dec 2018 10:48:33 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

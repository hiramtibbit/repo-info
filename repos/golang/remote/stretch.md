## `golang:stretch`

```console
$ docker pull golang@sha256:b30ec02d7d28e5fe6bab6c5dea8f981b746cd2dc29e23bc65ae17026f9056b3f
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
$ docker pull golang@sha256:7866a3428b229f9bb8aeaa437ed5cc3a4e5bf0b7c2ac534598fb6e40b6c6088d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294768330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343df9d12b7be3d61653f8998ccea02f91f302a13e555fbeb26bfc7310931b39`
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
# Sat, 29 Dec 2018 10:04:20 GMT
ENV GOLANG_VERSION=1.11.4
# Sat, 29 Dec 2018 10:04:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='9f7a71d27fef69f654a93e265560c8d9db1a2ca3f1dcdbe5288c46facfde5821' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b76df430ba8caff197b8558921deef782cdb20b62fa36fa93f81a8c08ab7c8e7' ;; 		i386) goRelArch='linux-386'; goRelSha256='cecd2da1849043237d5f0756a93d601db6798fa3bb27a14563d201088aa415f3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1f10146826acd56716b00b9188079af53823ddd79ceb6362e78e2f3aafb370ab' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='4467442dacf89eb94c5d6f9f700204cb360be82db60e6296cc2ef8d0e890cd42' ;; 		*) goRelArch='src'; goRelSha256='4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 29 Dec 2018 10:04:38 GMT
ENV GOPATH=/go
# Sat, 29 Dec 2018 10:04:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:04:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 29 Dec 2018 10:04:40 GMT
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
	-	`sha256:751b6f0603219df1600526f0c920cf072a4da4f93950f64e5910368bda939594`  
		Last Modified: Sat, 29 Dec 2018 10:07:22 GMT  
		Size: 126.6 MB (126642338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462a907acb44bdd414140f5a7894aae4ae6885a930cc9dab4635e96383d042f3`  
		Last Modified: Sat, 29 Dec 2018 10:06:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:47a8b8e3f9f0e62a7bb3c1959d146418c4a5918f072c1a383581186d2e3811ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248765224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9710cc9ab07c080811752e43fa503dcceeec92f6b73f937a275b4265cf7892`
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
# Tue, 18 Dec 2018 12:57:57 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 12:58:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='9f7a71d27fef69f654a93e265560c8d9db1a2ca3f1dcdbe5288c46facfde5821' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b76df430ba8caff197b8558921deef782cdb20b62fa36fa93f81a8c08ab7c8e7' ;; 		i386) goRelArch='linux-386'; goRelSha256='cecd2da1849043237d5f0756a93d601db6798fa3bb27a14563d201088aa415f3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1f10146826acd56716b00b9188079af53823ddd79ceb6362e78e2f3aafb370ab' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='4467442dacf89eb94c5d6f9f700204cb360be82db60e6296cc2ef8d0e890cd42' ;; 		*) goRelArch='src'; goRelSha256='4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 12:58:15 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 12:58:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 12:58:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 12:58:17 GMT
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
	-	`sha256:f54bb9fd89d0ad7cecaf826d9791a3228947fa4b51885977e6ba8aec021c083d`  
		Last Modified: Tue, 18 Dec 2018 12:59:35 GMT  
		Size: 101.0 MB (100995569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a891fd55199bf2092981005a11a3e8cd0bfade395390d626ebe15e1556b6eb8f`  
		Last Modified: Tue, 18 Dec 2018 12:59:01 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9b6bf7d175b4304989063262182c8ba13c9af6e435eeb8243af105b9db3c4eb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254206573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea6c74f7b9cd390e7e7c58732badfeab3eec1434802407419834455848615b5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:40:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:41:41 GMT
ENV GOLANG_VERSION=1.11.4
# Sun, 30 Dec 2018 01:42:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='9f7a71d27fef69f654a93e265560c8d9db1a2ca3f1dcdbe5288c46facfde5821' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b76df430ba8caff197b8558921deef782cdb20b62fa36fa93f81a8c08ab7c8e7' ;; 		i386) goRelArch='linux-386'; goRelSha256='cecd2da1849043237d5f0756a93d601db6798fa3bb27a14563d201088aa415f3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1f10146826acd56716b00b9188079af53823ddd79ceb6362e78e2f3aafb370ab' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='4467442dacf89eb94c5d6f9f700204cb360be82db60e6296cc2ef8d0e890cd42' ;; 		*) goRelArch='src'; goRelSha256='4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 30 Dec 2018 01:42:14 GMT
ENV GOPATH=/go
# Sun, 30 Dec 2018 01:42:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 01:42:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 30 Dec 2018 01:42:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf622939e59cc96f37899fb464f752773cbe8b3eac84625231477e1eb522d00`  
		Last Modified: Sun, 30 Dec 2018 01:44:37 GMT  
		Size: 49.0 MB (49018881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2828191ea171ab87f83069ddf508261ce64e8c61225eed133145b81179332f2d`  
		Last Modified: Sun, 30 Dec 2018 01:45:58 GMT  
		Size: 100.2 MB (100243305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a768dd443f723841985460a8e16f0734c51daa1badae78f3bbc96104b718426`  
		Last Modified: Sun, 30 Dec 2018 01:45:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:07518b8dbfe7a004d7a9d125c66f5be24de1cda778aee02e04d7dce32a0a3122
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.0 MB (284961583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49f7d5247a0cb957411d482a4f23d87e40fa0ce8ac3a0d455c8f4628409ce29`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:34:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:35:23 GMT
ENV GOLANG_VERSION=1.11.4
# Sun, 30 Dec 2018 04:35:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='9f7a71d27fef69f654a93e265560c8d9db1a2ca3f1dcdbe5288c46facfde5821' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b76df430ba8caff197b8558921deef782cdb20b62fa36fa93f81a8c08ab7c8e7' ;; 		i386) goRelArch='linux-386'; goRelSha256='cecd2da1849043237d5f0756a93d601db6798fa3bb27a14563d201088aa415f3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1f10146826acd56716b00b9188079af53823ddd79ceb6362e78e2f3aafb370ab' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='4467442dacf89eb94c5d6f9f700204cb360be82db60e6296cc2ef8d0e890cd42' ;; 		*) goRelArch='src'; goRelSha256='4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 30 Dec 2018 04:35:37 GMT
ENV GOPATH=/go
# Sun, 30 Dec 2018 04:35:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:35:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 30 Dec 2018 04:35:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ebddf711af5a5d00c3ec70830e1b0e199d81dcfa089912a1a93e7d75c7b91`  
		Last Modified: Sat, 29 Dec 2018 13:28:20 GMT  
		Size: 10.8 MB (10799001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903d64cc922323fd00f382d7845c5313498fa2eaaa23e5b0508f38f2b4a4a76`  
		Last Modified: Sat, 29 Dec 2018 13:28:17 GMT  
		Size: 4.6 MB (4560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b2ba2c27428f2220acf820364de7c867d7c3a1f30bda626a606427618c2840`  
		Last Modified: Sat, 29 Dec 2018 13:28:54 GMT  
		Size: 51.6 MB (51593679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10cb7288766b676ef6641e84051c935869a2acf512119bcdc0895c3cdca02a`  
		Last Modified: Sun, 30 Dec 2018 04:36:48 GMT  
		Size: 62.1 MB (62139619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ecebc5ff38c6ae683f3f174403c656b839dbcbddf94afc6c2754b3863b1f9b`  
		Last Modified: Sun, 30 Dec 2018 04:37:18 GMT  
		Size: 109.8 MB (109810992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b58a5160ccee660e8c7b575b51d8ad97641e63fb7115a64715f193c0b91238`  
		Last Modified: Sun, 30 Dec 2018 04:36:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:91d7fbdd0d74965b9763882a61c33c30540b7d6ce9f93b239a34e2c254f70a7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261681265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35b367ad4c4ec7f2467c6f4c13fa823bf0166fe04965c52c3bad6e413c0fbb3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:07:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:08:46 GMT
ENV GOLANG_VERSION=1.11.4
# Sat, 29 Dec 2018 16:09:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='9f7a71d27fef69f654a93e265560c8d9db1a2ca3f1dcdbe5288c46facfde5821' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b76df430ba8caff197b8558921deef782cdb20b62fa36fa93f81a8c08ab7c8e7' ;; 		i386) goRelArch='linux-386'; goRelSha256='cecd2da1849043237d5f0756a93d601db6798fa3bb27a14563d201088aa415f3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1f10146826acd56716b00b9188079af53823ddd79ceb6362e78e2f3aafb370ab' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='4467442dacf89eb94c5d6f9f700204cb360be82db60e6296cc2ef8d0e890cd42' ;; 		*) goRelArch='src'; goRelSha256='4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 29 Dec 2018 16:09:15 GMT
ENV GOPATH=/go
# Sat, 29 Dec 2018 16:09:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:09:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 29 Dec 2018 16:09:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87753e667bd24ca23fb995d6968e22c880245cb8ac1a979d931c95e2a5c4646c`  
		Last Modified: Sat, 29 Dec 2018 16:11:36 GMT  
		Size: 52.8 MB (52786978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06104180c0d0ede4484d704ee64a328de93cd5110f1b536761b97a1e4e3203`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 98.9 MB (98941752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c571c0ef23fa4e6b52f4f99d36283f1d8bc4dac131b9d48e7979cebe57b91326`  
		Last Modified: Sat, 29 Dec 2018 16:12:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:d8f2f328f281647b4f2b3084ff1d8d681e0a96b2fc9fbd465b0d35f2cc302930
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256023947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5c1a481166d259bf2af92c27a494c8b6ac5796b7ca79c26403d346d3d0c2af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:15:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:16:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:14:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:14:53 GMT
ENV GOLANG_VERSION=1.11.4
# Sat, 29 Dec 2018 16:15:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='9f7a71d27fef69f654a93e265560c8d9db1a2ca3f1dcdbe5288c46facfde5821' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b76df430ba8caff197b8558921deef782cdb20b62fa36fa93f81a8c08ab7c8e7' ;; 		i386) goRelArch='linux-386'; goRelSha256='cecd2da1849043237d5f0756a93d601db6798fa3bb27a14563d201088aa415f3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='1f10146826acd56716b00b9188079af53823ddd79ceb6362e78e2f3aafb370ab' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='4467442dacf89eb94c5d6f9f700204cb360be82db60e6296cc2ef8d0e890cd42' ;; 		*) goRelArch='src'; goRelSha256='4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 29 Dec 2018 16:15:00 GMT
ENV GOPATH=/go
# Sat, 29 Dec 2018 16:15:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 16:15:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 29 Dec 2018 16:15:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ab879437b7ffa94dbf20c17fff26c665632ba45fe169c1234acdfc98235ea4`  
		Last Modified: Sat, 29 Dec 2018 13:25:05 GMT  
		Size: 10.3 MB (10312640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d08cd769086cf57f94597710a8e83155b78206b639c049f55a8c4c2896ce2`  
		Last Modified: Sat, 29 Dec 2018 13:25:04 GMT  
		Size: 4.4 MB (4371853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dfbcf77830b9f550dbf3b3cb64574c5b4efd23d0e4d5607d36922028f4c25a`  
		Last Modified: Sat, 29 Dec 2018 13:25:22 GMT  
		Size: 50.5 MB (50488007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8a7e70110ea8fd4fa5ca5124a3aebded7d1059fb14fbdecdae18a0ac5cfda5`  
		Last Modified: Sat, 29 Dec 2018 16:16:01 GMT  
		Size: 45.9 MB (45895333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3455ff1f6719bbbea32cbca2b8df18778dfd9e8f52f2a005d703eb42702af72c`  
		Last Modified: Sat, 29 Dec 2018 16:16:34 GMT  
		Size: 99.7 MB (99749828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c4a8ef739f89e2e5fac044c291561b2745719dc89d18898de83075899e72d6`  
		Last Modified: Sat, 29 Dec 2018 16:16:18 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

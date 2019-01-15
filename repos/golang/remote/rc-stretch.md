## `golang:rc-stretch`

```console
$ docker pull golang@sha256:f2e823676da6b683b4b2ed088dc96b32c163ae67dcae61f15687cfe873356f28
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
$ docker pull golang@sha256:1896117b164284100be3559d59216a356339b85f44543a6b6642b10953c35131
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301351864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62bc2fde1d25d729228144cc65f0385bfb682fe34f33b063a6f80309ba941cab`
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
# Fri, 11 Jan 2019 02:17:42 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 02:18:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Jan 2019 02:18:01 GMT
ENV GOPATH=/go
# Fri, 11 Jan 2019 02:18:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Jan 2019 02:18:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Jan 2019 02:18:02 GMT
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
	-	`sha256:ce486a4bf88358e139dcc37c197e2bddf1c6ce69b8ae8300234189067968a3b8`  
		Last Modified: Fri, 11 Jan 2019 02:22:10 GMT  
		Size: 133.2 MB (133225872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a0cf3ecb1044562f7dc5b73c9347fbe7888a4228bedf6eea8b4abcb4bdb0c0`  
		Last Modified: Fri, 11 Jan 2019 02:21:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:058b0120cd8d2d87648e193b825a7672888bce96e5181038ddb0f06c24c4464f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253239487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947bea1441e317ff527d9786b580cd8a5bb45c509e1c7d075d0979528eeedd8e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Jan 2019 12:58:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 12:57:22 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:57:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Jan 2019 12:57:48 GMT
ENV GOPATH=/go
# Fri, 11 Jan 2019 12:57:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Jan 2019 12:57:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Jan 2019 12:57:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbde47943bce292ffb840fa20b0cfc39c7aeccdb423a1be8455c59d7828fe717`  
		Last Modified: Sat, 29 Dec 2018 14:04:53 GMT  
		Size: 46.4 MB (46384426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e30269fc1de3c858d767b77d62e87aa9286fd4deae715d2ca51fc575d4aead`  
		Last Modified: Tue, 01 Jan 2019 13:00:53 GMT  
		Size: 46.0 MB (45955248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927b24c54cdfa18dc06ae1bf1b2cccddadbb2fbd003c38f46f340f51c6c42773`  
		Last Modified: Fri, 11 Jan 2019 12:58:46 GMT  
		Size: 105.4 MB (105426300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a2e7d380456527e420ccc2c799571ff6e242a71db26967a282a857bb8116fa`  
		Last Modified: Fri, 11 Jan 2019 12:58:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:7c63446df74e8a140c2e4a11ca41866642b1e3b17162d08c08cd6a0c39841897
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268661744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c555a1777432dc2dcc4e05b4daa9ffa92a7a4bda6a60b15b729ad66fbc92aa`
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
# Fri, 11 Jan 2019 09:43:59 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 09:44:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Jan 2019 09:44:30 GMT
ENV GOPATH=/go
# Fri, 11 Jan 2019 09:44:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Jan 2019 09:44:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Jan 2019 09:44:39 GMT
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
	-	`sha256:871f732d10b2c4b9aaf28388809123713a0bd3299f7e4bf275e5fc94a1a4f190`  
		Last Modified: Fri, 11 Jan 2019 09:50:30 GMT  
		Size: 114.7 MB (114698477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427818967d206e3f46c4b2337a172da398084769e9421658b77ec87d372e6cc7`  
		Last Modified: Fri, 11 Jan 2019 09:49:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:20a48c29612a2e3ff3cfeb94bef27f85241047127eb1f41e454be9200be3bc16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289974319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175ed069dbd222d9c1de4236d576da7ae596437647cb662f421842c9063ea613`
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
# Fri, 11 Jan 2019 11:42:35 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 11:42:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Jan 2019 11:42:59 GMT
ENV GOPATH=/go
# Fri, 11 Jan 2019 11:42:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Jan 2019 11:43:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Jan 2019 11:43:00 GMT
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
	-	`sha256:31e358990c0bc1f162cc63ff264f626ffee5ff850519c5d3c80c4f257dddbdbb`  
		Last Modified: Fri, 11 Jan 2019 11:46:49 GMT  
		Size: 114.8 MB (114823730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d6bf2abd51bd191f790f43fb8110a22f477720ae023e2be5220f73eb47403e`  
		Last Modified: Fri, 11 Jan 2019 11:46:26 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:8ee4a1c5ceed4abd34df3e114ae62c052f62a29f85b0bc8923da085f58b58aa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266115657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e94c640891e63b26479449197e8ec18fb4b42ae90609ca4f3febc3fbc307f0`
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
# Fri, 11 Jan 2019 09:16:29 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 09:17:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Jan 2019 09:17:11 GMT
ENV GOPATH=/go
# Fri, 11 Jan 2019 09:17:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Jan 2019 09:17:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Jan 2019 09:17:32 GMT
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
	-	`sha256:0b64acb418a9e0a728e474861841726033647513c720b53870442a7499568be2`  
		Last Modified: Fri, 11 Jan 2019 09:21:40 GMT  
		Size: 103.4 MB (103376144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d56e4db0fa794cdcef27f3a07bac59997d9014647c592e115531311374b5660`  
		Last Modified: Fri, 11 Jan 2019 09:21:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; s390x

```console
$ docker pull golang@sha256:31349d6c0e65f16ea8c55e8179ba8bff2943a48b0b9dc3ce873e1010b0cfcede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266362367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d7122c5a03ebe4e1942239310f29a8a3a102d5ff9ee0c119eb02d54925a9a7`
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
# Fri, 11 Jan 2019 12:41:27 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:41:42 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 11 Jan 2019 12:41:42 GMT
ENV GOPATH=/go
# Fri, 11 Jan 2019 12:41:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Jan 2019 12:41:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 11 Jan 2019 12:41:43 GMT
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
	-	`sha256:c39ae66dfc9d94620c217cdf394187ac6ffd87ccd67a023503aa476247d109f7`  
		Last Modified: Fri, 11 Jan 2019 12:44:40 GMT  
		Size: 110.1 MB (110088246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86402f1140788022a2aecfbaae2cef0776ab78d62e055325ffcbd06c7f4f8eff`  
		Last Modified: Fri, 11 Jan 2019 12:44:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

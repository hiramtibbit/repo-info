## `golang:rc-stretch`

```console
$ docker pull golang@sha256:3dcba9e5716faaf19f982ddd10f6137c9deb256746d1700c5562630066047ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `golang:rc-stretch` - linux; amd64

```console
$ docker pull golang@sha256:94c04c8fb4f31051f382e3707e6483ce56811af675ac905f6099974067b62b19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345258958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089fde8c05f5bccff0a0b6dd8424121401de326007e4a0f27a62a39c86a57ff2`
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
# Sat, 04 Aug 2018 02:19:59 GMT
ENV GOLANG_VERSION=1.11beta3
# Sat, 04 Aug 2018 02:20:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='674c1091f4712c1cfdcd77ecddafe6aef81cbda740af64a6e3f893ddf3dfb11c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='491e4d1288ad9f69d16e8ec990d4a4a2b9cc494c3b9488743a96c168424cbb5c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d8fb9d36a3c862a68db828eb22268e0723e3e245f41cc33f5da0a5b7e293fea5' ;; 		i386) goRelArch='linux-386'; goRelSha256='e3e4e1271aa74f7dc64c586048f351e89d7ab20b5f3c3a518e87a628f5abf582' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='6fe3a4db6a43a59fbe364069fd94536e1d2920df897d5ec93bea7fd519031c54' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='518762a66c9992d667bf7cae4adda285d14f856413ccc7cd853876aae0670382' ;; 		*) goRelArch='src'; goRelSha256='b11a92814601c85910e3f98dd06b941974d03b48c2c255defbee1cc99f19d721'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Aug 2018 02:20:31 GMT
ENV GOPATH=/go
# Sat, 04 Aug 2018 02:20:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Aug 2018 02:20:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Aug 2018 02:20:32 GMT
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
	-	`sha256:0d83966a5e14e2f6c48e04a928aa019767cc10a3a52c3b4580248975b0ab3cce`  
		Last Modified: Sat, 04 Aug 2018 02:27:41 GMT  
		Size: 177.2 MB (177222636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ef53f0fcda58d4e4f8934891e9033e879f39529278188825f6f76109ebc2da`  
		Last Modified: Sat, 04 Aug 2018 02:26:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:17eaad38bc911091932b03dddfe60fd5a4455a2fc027539e157a8e3eadb5823f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304237301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55e35c8b95b4dfb5e2e6617d111cb34bbc56c8f85b45001866a3929b1b7db14`
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
# Sat, 04 Aug 2018 08:43:22 GMT
ENV GOLANG_VERSION=1.11beta3
# Sat, 04 Aug 2018 08:43:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='674c1091f4712c1cfdcd77ecddafe6aef81cbda740af64a6e3f893ddf3dfb11c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='491e4d1288ad9f69d16e8ec990d4a4a2b9cc494c3b9488743a96c168424cbb5c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d8fb9d36a3c862a68db828eb22268e0723e3e245f41cc33f5da0a5b7e293fea5' ;; 		i386) goRelArch='linux-386'; goRelSha256='e3e4e1271aa74f7dc64c586048f351e89d7ab20b5f3c3a518e87a628f5abf582' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='6fe3a4db6a43a59fbe364069fd94536e1d2920df897d5ec93bea7fd519031c54' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='518762a66c9992d667bf7cae4adda285d14f856413ccc7cd853876aae0670382' ;; 		*) goRelArch='src'; goRelSha256='b11a92814601c85910e3f98dd06b941974d03b48c2c255defbee1cc99f19d721'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Aug 2018 08:44:00 GMT
ENV GOPATH=/go
# Sat, 04 Aug 2018 08:44:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Aug 2018 08:44:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Aug 2018 08:44:06 GMT
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
	-	`sha256:a091b7c6a05bce60f86bbec200f4f38511146ec2601fafe0986c22f6f5b719ff`  
		Last Modified: Sat, 04 Aug 2018 08:53:14 GMT  
		Size: 150.3 MB (150341728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b701fd52d155b52bbab31ae8459c3ac406b1d4f981d2d47c057b9e81b94dccc`  
		Last Modified: Sat, 04 Aug 2018 08:52:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:fe47c646e872b3365cd6f9910ce6629ab3db293d115aae1b46206797cc130644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335868379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1773e2b77866077513edc8b619bbcd32c1c055b68475a2eeffa78073427750`
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
# Sat, 04 Aug 2018 10:46:17 GMT
ENV GOLANG_VERSION=1.11beta3
# Sat, 04 Aug 2018 10:46:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='674c1091f4712c1cfdcd77ecddafe6aef81cbda740af64a6e3f893ddf3dfb11c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='491e4d1288ad9f69d16e8ec990d4a4a2b9cc494c3b9488743a96c168424cbb5c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d8fb9d36a3c862a68db828eb22268e0723e3e245f41cc33f5da0a5b7e293fea5' ;; 		i386) goRelArch='linux-386'; goRelSha256='e3e4e1271aa74f7dc64c586048f351e89d7ab20b5f3c3a518e87a628f5abf582' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='6fe3a4db6a43a59fbe364069fd94536e1d2920df897d5ec93bea7fd519031c54' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='518762a66c9992d667bf7cae4adda285d14f856413ccc7cd853876aae0670382' ;; 		*) goRelArch='src'; goRelSha256='b11a92814601c85910e3f98dd06b941974d03b48c2c255defbee1cc99f19d721'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Aug 2018 10:46:43 GMT
ENV GOPATH=/go
# Sat, 04 Aug 2018 10:46:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Aug 2018 10:46:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Aug 2018 10:46:45 GMT
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
	-	`sha256:b1523caff987b1c7a59229da87a72be1ff10f37d2c6e0f7131b7d60474198f58`  
		Last Modified: Sat, 04 Aug 2018 10:53:13 GMT  
		Size: 160.8 MB (160822075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63387f4bad701fd21868a10bfdcae09a25197b8a73a78e1ff54f528431c8148`  
		Last Modified: Sat, 04 Aug 2018 10:52:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:5be6d0a9f4640b04bc61c307320a24f6f5246cfa62320b06aa393e1079296602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.6 MB (311595435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cb27e832aada15dbe446f61293a5e624d135865650b40af94373618c977544`
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
# Sat, 04 Aug 2018 08:22:16 GMT
ENV GOLANG_VERSION=1.11beta3
# Sat, 04 Aug 2018 08:22:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='674c1091f4712c1cfdcd77ecddafe6aef81cbda740af64a6e3f893ddf3dfb11c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='491e4d1288ad9f69d16e8ec990d4a4a2b9cc494c3b9488743a96c168424cbb5c' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d8fb9d36a3c862a68db828eb22268e0723e3e245f41cc33f5da0a5b7e293fea5' ;; 		i386) goRelArch='linux-386'; goRelSha256='e3e4e1271aa74f7dc64c586048f351e89d7ab20b5f3c3a518e87a628f5abf582' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='6fe3a4db6a43a59fbe364069fd94536e1d2920df897d5ec93bea7fd519031c54' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='518762a66c9992d667bf7cae4adda285d14f856413ccc7cd853876aae0670382' ;; 		*) goRelArch='src'; goRelSha256='b11a92814601c85910e3f98dd06b941974d03b48c2c255defbee1cc99f19d721'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 04 Aug 2018 08:22:54 GMT
ENV GOPATH=/go
# Sat, 04 Aug 2018 08:22:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Aug 2018 08:22:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 04 Aug 2018 08:22:58 GMT
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
	-	`sha256:dbe471a725799908a3b45c5ba47af4766aed98252addfb34d91048759d8de68d`  
		Last Modified: Sat, 04 Aug 2018 08:38:44 GMT  
		Size: 148.9 MB (148943965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ffb39f3a43ca7c146737975243a8c9fa91fee439cfd5b3c936eae31c585fb1`  
		Last Modified: Sat, 04 Aug 2018 08:37:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

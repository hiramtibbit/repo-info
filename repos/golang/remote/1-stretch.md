## `golang:1-stretch`

```console
$ docker pull golang@sha256:f8eac0fa4f756d6b8b5e468a92a3ed163571a11fa50701e543c53c514b47f839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:85032fa900cd979127f344c594f714b59e147c6ecbab83bd1ed0ad3ca2e64441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296095590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b860ab44e93e82d88d7da36162171c6e27a3060769c8fde7a3f719994bc95a47`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 04:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Apr 2019 22:20:34 GMT
ENV GOLANG_VERSION=1.12.4
# Fri, 12 Apr 2019 22:20:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 12 Apr 2019 22:20:47 GMT
ENV GOPATH=/go
# Fri, 12 Apr 2019 22:20:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 22:20:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 12 Apr 2019 22:20:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963c818ebafc12959707fcabfc8952ba84ad92514041f7b6ec66ddfb5702141f`  
		Last Modified: Wed, 27 Mar 2019 04:42:28 GMT  
		Size: 57.6 MB (57633991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee6e7073aaa72d34ba739d309428b29acca211466a86a16f42085c150db8c5`  
		Last Modified: Fri, 12 Apr 2019 22:29:33 GMT  
		Size: 127.9 MB (127931372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e75b35417bea64f062ec5031006a5910c90d20b9db352cdb4a8b00cc3a195f`  
		Last Modified: Fri, 12 Apr 2019 22:29:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:4b35bab95daa53526a53f90900f6c9209b689b9d077a65907752db4e69ee285b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254059558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cfe0ad6d838076571080cca2c4a7afc427b92cec398704decda0af3a1f5bf5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 Apr 2019 19:51:13 GMT
ENV GOLANG_VERSION=1.12.4
# Mon, 15 Apr 2019 19:51:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 15 Apr 2019 19:51:34 GMT
ENV GOPATH=/go
# Mon, 15 Apr 2019 19:51:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 Apr 2019 19:51:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 15 Apr 2019 19:51:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014c95a2990aa655b803e6599930546f6d554ca57df6e91fa283b00f739458d`  
		Last Modified: Wed, 27 Mar 2019 16:05:04 GMT  
		Size: 46.0 MB (45971636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493bf9a5ead9ef31103ae3e994113f9c1cd7c6730e61d6cfb9f665e7264147ab`  
		Last Modified: Mon, 15 Apr 2019 19:57:52 GMT  
		Size: 106.2 MB (106221030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe5f08a36af113eab2a6e5f57173edec53b840b41b75e08b7f209c6e652e5e`  
		Last Modified: Mon, 15 Apr 2019 19:57:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e8516dcc26a695df47ecbece295584dd17ac97ac68c054ece16b7390f6942a36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258259238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6b8f62856b1172f4693708fc639736615bff028c0f18bc36351ce1b881819c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 22:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 Apr 2019 19:51:05 GMT
ENV GOLANG_VERSION=1.12.4
# Mon, 15 Apr 2019 19:51:33 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 15 Apr 2019 19:51:34 GMT
ENV GOPATH=/go
# Mon, 15 Apr 2019 19:51:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 Apr 2019 19:51:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 15 Apr 2019 19:51:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c58b43df76f1b8296622ae933fc04f8121c30de2a54b600b871c66c36dc78d`  
		Last Modified: Wed, 27 Mar 2019 22:24:31 GMT  
		Size: 49.0 MB (49040317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0858b817ac5b43555b898c1a03ddcda505b97af83ff395213c6901f0f999ae29`  
		Last Modified: Mon, 15 Apr 2019 20:04:56 GMT  
		Size: 104.3 MB (104254714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13bffb5ce1c94f4a523b8c4cdfa469658d481c1bec63b9497dd9ed51d2fa199`  
		Last Modified: Mon, 15 Apr 2019 20:04:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:97e58b5d871a0b0bcaa4aa187d73cd87353766364c9272afb5e3f5e0ff6ef708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284630878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3937806a653feeeceb119c0a2929cf6196dc321f7c330bbc0dbd2bd2ed40d920`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 23:47:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 Apr 2019 11:19:32 GMT
ENV GOLANG_VERSION=1.12.4
# Sat, 13 Apr 2019 11:19:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 13 Apr 2019 11:19:48 GMT
ENV GOPATH=/go
# Sat, 13 Apr 2019 11:19:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 13 Apr 2019 11:19:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 13 Apr 2019 11:19:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef5b986d1f9bf7f798ec3aa3ceba44df16bc00467579c65b5cece10f347538`  
		Last Modified: Wed, 27 Mar 2019 23:48:54 GMT  
		Size: 62.2 MB (62161546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e8c575ecdbbee6c85f9a16a74412bf59e44c6e0a3b94eb47cb8c1453b0d395`  
		Last Modified: Sat, 13 Apr 2019 11:28:23 GMT  
		Size: 109.5 MB (109455900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c840e646dfa72239792c8642d2a48eb189b20f0e2e02be1b058a99608ee580a8`  
		Last Modified: Sat, 13 Apr 2019 11:28:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:286288fec9b5ad2dcfe702219ce2bb5d139d2b089f744c4a798f3bd258c52a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266790026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c4a90781a5781479397bc9527f1fd418f914cd44d4c37c2792eb07c3b55c77`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 Apr 2019 08:17:24 GMT
ENV GOLANG_VERSION=1.12.4
# Sat, 13 Apr 2019 08:17:50 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 13 Apr 2019 08:17:55 GMT
ENV GOPATH=/go
# Sat, 13 Apr 2019 08:17:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 13 Apr 2019 08:18:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 13 Apr 2019 08:18:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e026fa712caf19e12e21855ebddb9964001e1fec0135d622813bdb5bce8fc016`  
		Last Modified: Sat, 13 Apr 2019 08:26:40 GMT  
		Size: 104.0 MB (104012435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dd24b0cf28500d3dd9a2f079420aafded4e1da03abf46954acb81445cecfc3`  
		Last Modified: Sat, 13 Apr 2019 08:25:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:0f21e6a9f31bf2b0de6cd74bcdc98deaabd07818e01fd795fee953fef764c544
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267283985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fcea20494a8bad4acfbdcf53dc1680438ac6e75f2f06c0b654cabaacbda851`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 Apr 2019 11:41:40 GMT
ENV GOLANG_VERSION=1.12.4
# Sat, 13 Apr 2019 11:41:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 13 Apr 2019 11:41:58 GMT
ENV GOPATH=/go
# Sat, 13 Apr 2019 11:41:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 13 Apr 2019 11:42:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 13 Apr 2019 11:42:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022b046b81aee0bb56655ff06895f8ef6e5ffd550bc989070c44b454dd456113`  
		Last Modified: Wed, 27 Mar 2019 17:35:07 GMT  
		Size: 45.9 MB (45927893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e523fcbbdc1268fc94ea6c15de92ec5f4b0f4feb191fe98aaef6f2dc5e9739c`  
		Last Modified: Sat, 13 Apr 2019 11:52:00 GMT  
		Size: 111.0 MB (110979582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc1240b72a296f696dd83cd336dbac6587859e783ec6bcc0cbc38fb1fba8988`  
		Last Modified: Sat, 13 Apr 2019 11:51:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

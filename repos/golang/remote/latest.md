## `golang:latest`

```console
$ docker pull golang@sha256:62538d25400afa368551fdeebbeed63f37a388327037438199cdf60b7f465639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2848; amd64
	-	windows version 10.0.16299.1029; amd64
	-	windows version 10.0.17134.648; amd64
	-	windows version 10.0.17763.379; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:56548eadfbce43d2e01a342351ec8743d12d61a5e03c7639ad04ed1f5882ba0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296070116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213fe73a385296ac1fbd34d563a3041859d13fe72e2a8a53590f00784489c516`
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
# Wed, 27 Mar 2019 04:40:38 GMT
ENV GOLANG_VERSION=1.12.1
# Wed, 27 Mar 2019 04:40:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Mar 2019 04:40:57 GMT
ENV GOPATH=/go
# Wed, 27 Mar 2019 04:40:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 04:40:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Mar 2019 04:40:59 GMT
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
	-	`sha256:2c6333e9b74a4302591c5073e0137fe38568671d3a96c6b506da2a9a149a6deb`  
		Last Modified: Wed, 27 Mar 2019 04:42:42 GMT  
		Size: 127.9 MB (127905897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c71504fac2e61773f70d04899284d872a44433a90eaf2a1a2e0324fc65be4`  
		Last Modified: Wed, 27 Mar 2019 04:42:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:7b438c0405f7f3490fb7de55d643879c7c8e4b61280491653021cb1587110299
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (254032808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b23707195e87c089f3ed272862493b5a7f84b8a28571072340d305ba2eb9f4b`
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
# Wed, 27 Mar 2019 16:03:28 GMT
ENV GOLANG_VERSION=1.12.1
# Wed, 27 Mar 2019 16:03:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Mar 2019 16:03:49 GMT
ENV GOPATH=/go
# Wed, 27 Mar 2019 16:03:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 16:03:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Mar 2019 16:03:52 GMT
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
	-	`sha256:e99f5ac16811029fac92950f7bd9ce9ecbfc643107d096acdb1ce42edee88d17`  
		Last Modified: Wed, 27 Mar 2019 16:05:23 GMT  
		Size: 106.2 MB (106194281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c908fcca62a071dd6de571c1f2f956c982a1d557f52f04a64d54b60a19c44b`  
		Last Modified: Wed, 27 Mar 2019 16:04:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:87f341df2e139ac40342c8189476deac6f2e70b2ce2ec44dd2eb8d5f7bde828a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258268711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a6949a39835ca53281bfee333c092a2abc00594628c14f70245210792bbd13`
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
# Wed, 27 Mar 2019 22:20:14 GMT
ENV GOLANG_VERSION=1.12.1
# Wed, 27 Mar 2019 22:20:53 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Mar 2019 22:20:55 GMT
ENV GOPATH=/go
# Wed, 27 Mar 2019 22:20:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 22:20:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Mar 2019 22:20:59 GMT
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
	-	`sha256:82db464b222fccc1a540c25e67c1fe9e3ee2b903b2f094ba42c6c6e415ce3d6d`  
		Last Modified: Wed, 27 Mar 2019 22:25:18 GMT  
		Size: 104.3 MB (104264187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47d54452a09e68eae716d228c5d7b6d1581d773d2ec3bcb5c0c5c4c8bd0cb25`  
		Last Modified: Wed, 27 Mar 2019 22:23:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:0d19c2ae97468ab7804ad08b56e2116d366e8f6d840fcebf7e89ee572331e92b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284595387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d70ae493bceb36335f647407a2896b5cb7d877442dccfefa037f10c7725c6b`
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
# Wed, 27 Mar 2019 23:47:01 GMT
ENV GOLANG_VERSION=1.12.1
# Wed, 27 Mar 2019 23:47:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Mar 2019 23:47:24 GMT
ENV GOPATH=/go
# Wed, 27 Mar 2019 23:47:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 23:47:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Mar 2019 23:47:26 GMT
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
	-	`sha256:b5500b2ecc6ab99d4bda9ace9f258025261d238907ab57a341dc8912896e6381`  
		Last Modified: Wed, 27 Mar 2019 23:49:03 GMT  
		Size: 109.4 MB (109420411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e649b93b3df6f710dbcaa5feb84297a3f99d26a6e3acd63959444fafd8ef4b6b`  
		Last Modified: Wed, 27 Mar 2019 23:48:28 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:01636bf0530e31734cf1791070d0ef868225aba07ddfdd1e91da7e1f7ebe2e2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266766496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1568e8079faadad3ed84f19e305e9c46e5e25c77b4192d001e9f41a651c639f`
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
# Wed, 27 Mar 2019 15:25:19 GMT
ENV GOLANG_VERSION=1.12.1
# Wed, 27 Mar 2019 15:26:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Mar 2019 15:26:07 GMT
ENV GOPATH=/go
# Wed, 27 Mar 2019 15:26:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 15:26:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Mar 2019 15:26:27 GMT
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
	-	`sha256:0f502e48a490ea35768ded738de4bf5b5cf90bc336734c0f2fd672c5b9ec00ce`  
		Last Modified: Wed, 27 Mar 2019 15:30:27 GMT  
		Size: 104.0 MB (103988903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a6d330ab929d33d577e72bcb5839f9a8080dac872af1fbe179dc5a401391c1`  
		Last Modified: Wed, 27 Mar 2019 15:29:15 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:92627e8b4533a0aba4a205a9238ea59a347823c48c83161dbeddc74d48d342d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267289057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5725ea28e8c6248de016d4887a846a646afd6d777a4e3aaa262f6e87971e4366`
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
# Wed, 27 Mar 2019 17:32:15 GMT
ENV GOLANG_VERSION=1.12.1
# Wed, 27 Mar 2019 17:32:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Mar 2019 17:32:54 GMT
ENV GOPATH=/go
# Wed, 27 Mar 2019 17:32:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 17:32:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Mar 2019 17:32:59 GMT
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
	-	`sha256:d6f47559d09e3e945b06eb6375e48512472b28b9226a1b6cc03cab87faecd67f`  
		Last Modified: Wed, 27 Mar 2019 17:35:20 GMT  
		Size: 111.0 MB (110984653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f943fe61838f68a2403e95380dce9930daf9ed92eb10d75d9e8315b1e307bc18`  
		Last Modified: Wed, 27 Mar 2019 17:34:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2848; amd64

```console
$ docker pull golang@sha256:b9e934b889b9a57cc19ecc2977e113c1b40681a0922efc4fa07f9213c7b14e28
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820088930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f31e00063fe4c7120194d8634b2bbdea7736fd3ec18e3bd339f793984797d2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:25:49 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:25:50 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:25:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:25:52 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:27:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:27:29 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:28:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 16 Mar 2019 09:28:36 GMT
ENV GOLANG_VERSION=1.12.1
# Sat, 16 Mar 2019 09:35:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2f4849b512fffb2cf2028608aa066cc1b79e730fd146c7b89015797162f08ec5'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:35:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833f50ac3601d0266188c3f53ab78da1becc5e9ebeeb293f9cfc2adb7367a6f6`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64648fdb5b96ea1671d16a9063d718a7531de41057306536d3789fe9e3da7992`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b36aeb7c7149006144da2b6215790f367b00c7e06ba6f15a2f8890fe48db41`  
		Last Modified: Sat, 16 Mar 2019 10:38:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6d138d66a165a6cca04ea31de9191da29d2b7a6117a4136968e96dbbe4697d`  
		Last Modified: Sat, 16 Mar 2019 10:38:56 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa8fc993f09123a82ed16c0ae4b1259182b24089e4e61975745183192b8c4f`  
		Last Modified: Sat, 16 Mar 2019 10:39:09 GMT  
		Size: 29.6 MB (29604381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c68171b0fcd05ccf65838aea1665092a15771f48c8c20f448cd6bbfb8b88c9`  
		Last Modified: Sat, 16 Mar 2019 10:38:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf93e50dbbabe7a12b44bae56eae5680e14f4d2df2e8fbab50b5b44800ebca8`  
		Last Modified: Sat, 16 Mar 2019 10:38:56 GMT  
		Size: 5.1 MB (5149315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bdf980a3c24d8d3074e3a777f11b608f97b4895f4d3d9fa6b3655b39327e0c`  
		Last Modified: Sat, 16 Mar 2019 10:38:53 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4308695dca89b6496c12450df2e2007ab6a9f71a6c76c0ed4d70054e6e3c17c6`  
		Last Modified: Sat, 16 Mar 2019 10:40:37 GMT  
		Size: 146.2 MB (146206964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062ef146bb7a03a3e0a5d480d20fd245c290f41b6387126828cb62a5e9fbcb3a`  
		Last Modified: Sat, 16 Mar 2019 10:38:53 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.1029; amd64

```console
$ docker pull golang@sha256:e1d36c672583a33f2b15bcf86d715fabd1ae0fb92e1c7fe64d5e8c082421afb0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3386164194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240a633ccd6c799c397998469f5be7ef759422b8db499665da8ddb58d9bbc70b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:35:34 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:35:35 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:35:37 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:35:38 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:37:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:37:10 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:37:56 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 16 Mar 2019 09:37:59 GMT
ENV GOLANG_VERSION=1.12.1
# Sat, 16 Mar 2019 09:44:09 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2f4849b512fffb2cf2028608aa066cc1b79e730fd146c7b89015797162f08ec5'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:44:11 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab3023fbee9fb03d1037911c7c1ac3195b6aa44c553b45d250a75350440b2d7`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514d1d173f62301bdf7cd0c13b36c5adc8d27a296230b40acd9f765c5a13271f`  
		Last Modified: Sat, 16 Mar 2019 10:41:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b651257753a40110c9a4b6abbeab224aa77b4f2303550c46c4fd9fb4b1b171`  
		Last Modified: Sat, 16 Mar 2019 10:41:03 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dcd55c7bdf273391ce62ba87ecc18f74a5c0d31e7e09456cabc6b81d86d30e`  
		Last Modified: Sat, 16 Mar 2019 10:41:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678e2074888947ef738ccb454687e322d0da9918ff2a2ffe0560ee7e90ddb763`  
		Last Modified: Sat, 16 Mar 2019 10:41:15 GMT  
		Size: 29.2 MB (29203214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09dac83231a2dad43283fae8bb69d9f8f76cffb7ee5342c20ca6bf865e6c32d`  
		Last Modified: Sat, 16 Mar 2019 10:40:59 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c749ca130c6d6624c85d51abf186c747a3a540c7b398868b36e37f63281b8492`  
		Last Modified: Sat, 16 Mar 2019 10:41:01 GMT  
		Size: 4.8 MB (4764313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494d047e329506520beb949ab3fd888585af17fe33541e23971c248b74853f4`  
		Last Modified: Sat, 16 Mar 2019 10:41:00 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71f14440fca34e96f7ee2d9f8e4d079268ba3324b04cea4d04a01e9efc8bf80`  
		Last Modified: Sat, 16 Mar 2019 10:42:38 GMT  
		Size: 141.3 MB (141335164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1443d50335161fa77f78688e87e83647aa6a00f2974b790d325aecf7ee6b08e3`  
		Last Modified: Sat, 16 Mar 2019 10:40:59 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17134.648; amd64

```console
$ docker pull golang@sha256:f7a966c42dbbf9ef537a590865d8cd3f1fe5111743dfb24b3d6c28bab29290d4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2419294541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eb88c6330701727439624902c70cf2498fb2fe48831b90b6e8efa95a42560c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:44:20 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:44:21 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:44:22 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:44:23 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:45:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:45:44 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:46:15 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 16 Mar 2019 09:46:16 GMT
ENV GOLANG_VERSION=1.12.1
# Sat, 16 Mar 2019 09:51:59 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2f4849b512fffb2cf2028608aa066cc1b79e730fd146c7b89015797162f08ec5'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:52:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace316ab2a5e38e53ab2d41c52e02a85ce154c1e1518660d4aaf708f35c52a38`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b708b6be85a88ff6fb6d6d4a04fa2bdd2706b263e12278b6b6677cee4dbae9`  
		Last Modified: Sat, 16 Mar 2019 10:43:02 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99d48cfc773498b88a635fafa71082ed444d55326f884f2b668257dd9360f73`  
		Last Modified: Sat, 16 Mar 2019 10:43:01 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daff932fc6836ebaca651404a4813bc12094272b4530976fd644b2190de96bac`  
		Last Modified: Sat, 16 Mar 2019 10:43:01 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290ceeb38a6cb3230cbc38928cb7c2508148bc385415a7dca4ecbb77666b6093`  
		Last Modified: Sat, 16 Mar 2019 10:43:16 GMT  
		Size: 29.1 MB (29127255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d0da6244f76827898766a00163f1a646037a9d68ee418b8062038019762b65`  
		Last Modified: Sat, 16 Mar 2019 10:42:58 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967464bf86c49f3c9f7b07129d4fc213d21c9fe92e4bf112a2f1bd94ea7426d9`  
		Last Modified: Sat, 16 Mar 2019 10:42:59 GMT  
		Size: 298.9 KB (298856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83fe48bb5e178a584c3d36c236b8906fc5204566aa6600650b6a702148cf930`  
		Last Modified: Sat, 16 Mar 2019 10:42:58 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07a08a82e470d3aacc422f10b8fd0b7b6ab86fc33ab69118c66d1231475fdfa`  
		Last Modified: Sat, 16 Mar 2019 10:44:36 GMT  
		Size: 136.9 MB (136882312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c952f425c2f6b53768426d7fa6f5bdbd609ef4b2391b2d6ce36f72bdf5bbc21`  
		Last Modified: Sat, 16 Mar 2019 10:42:58 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17763.379; amd64

```console
$ docker pull golang@sha256:65b4a7afdf3ad037d1e3418acc6d20da4ce3a46c0355283e4349e25b50f9d780
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2321304862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5f613e4224ea0dcd2fe773b166711fbc77b7a7e8c52de8d0ea467ba81bd7ca`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:52:19 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:52:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:52:21 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:52:23 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:53:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:53:35 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:54:02 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 16 Mar 2019 09:54:03 GMT
ENV GOLANG_VERSION=1.12.1
# Sat, 16 Mar 2019 09:59:51 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2f4849b512fffb2cf2028608aa066cc1b79e730fd146c7b89015797162f08ec5'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:59:53 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6b222a032220308de9a5359ffcff3762b4cbaa3d3f5c7ae19f9cd9bbf47cfb`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b582605f5601aba792284b2d3ce2a3dbb99eb7de23a00fc2b446a8dc4193b`  
		Last Modified: Sat, 16 Mar 2019 10:44:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70fa7aef2e28c96fcb27257d1e200f756d2773a70956f83777a3bdf85d577f`  
		Last Modified: Sat, 16 Mar 2019 10:44:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b102bb976a9bd41feae5d78cd8de3e247b756b890489f5ca74167fd48069572`  
		Last Modified: Sat, 16 Mar 2019 10:44:59 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e4c344b49bddd57dd70f61fbad205df32ce7dd927623d59892070180a10cfd`  
		Last Modified: Sat, 16 Mar 2019 10:45:16 GMT  
		Size: 28.7 MB (28683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ccda38da03cbd6687ad10b2a40388f7a787b069f47a4dfc541bd99a5dde2b`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40ad66e975f74b7d9020a35c6990a3a65a6188e44d009ba603c21684031c75f`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 301.0 KB (300952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe369f513804a7182797690e3a164d6143de05d0cef7473ec8916773129cdb4`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f524dac5f4359ec36d0118a7d6fb9981865c35986eb756e58eb8a6c1b8c5cea7`  
		Last Modified: Sat, 16 Mar 2019 10:46:38 GMT  
		Size: 136.9 MB (136870031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18fab8ec5ac85a3229fd40c211f956bc3e4dabd8e2604ae8d609fd736c93a52`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

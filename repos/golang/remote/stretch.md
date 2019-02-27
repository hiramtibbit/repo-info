## `golang:stretch`

```console
$ docker pull golang@sha256:19d6a9ecccced10525cfeb8c25731c7fa75e6d38c94179be7a413c825c30e4f4
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
$ docker pull golang@sha256:9ac2fb33ece0d1e2ee673a85c6e264bd1e6e9df4635954f409411708ee586e88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.4 MB (295374770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f8e4c91496d431c2b7a96366bf334cb387e18e04e18cc710689b0cb6d76181`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:52:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Feb 2019 21:19:36 GMT
ENV GOLANG_VERSION=1.12
# Tue, 26 Feb 2019 21:19:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='750a07fef8579ae4839458701f4df690e0b20b8bcce33b437e4df89c451b6f13' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ea0636f055763d309437461b5817452419411eb1f598dc7f35999fae05bcb79a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7bf59c2f1ac48eb587817a2a30b02168ecc99635fc19b6e677cce01406e3fac' ;; 		i386) goRelArch='linux-386'; goRelSha256='3ac1db65a6fa5c13f424b53ee181755429df0c33775733cede1e0d540440fd7b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='5be21e7035efa4a270802ea04fb104dc7a54e3492641ae44632170b93166fb68' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c0aef360b99ebb4b834db8b5b22777b73a11fa37b382121b24bf587c40603915' ;; 		*) goRelArch='src'; goRelSha256='09c43d3336743866f2985f566db0520b36f4992aea2b4b2fd9f52f17049e88f2'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 26 Feb 2019 21:19:46 GMT
ENV GOPATH=/go
# Tue, 26 Feb 2019 21:19:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 21:19:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 26 Feb 2019 21:19:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35724ed4672cc1ac62dca685634f02297e306fd1920dd76996799c00b728cbb`  
		Last Modified: Wed, 06 Feb 2019 12:55:15 GMT  
		Size: 57.6 MB (57618439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ea18b1198f21a8e23d187ec89ef74c945596daa16444ce01da03d4dd52edbd`  
		Last Modified: Tue, 26 Feb 2019 21:23:18 GMT  
		Size: 127.2 MB (127227649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647e63f913864e0c9b4097d54378b3c57b3887bffbbe1d0edde33494ec84a879`  
		Last Modified: Tue, 26 Feb 2019 21:22:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:3dbf330c116cb371eb1fc52271edb0ec361a92d19dd1200285184ea5a07f241b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253413048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49e6b20f5acf3575d7a43f3da3cdb139d12d392718a70f52b0e1e246d7e57d9`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:30:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Feb 2019 12:58:05 GMT
ENV GOLANG_VERSION=1.12
# Wed, 27 Feb 2019 12:58:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='750a07fef8579ae4839458701f4df690e0b20b8bcce33b437e4df89c451b6f13' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ea0636f055763d309437461b5817452419411eb1f598dc7f35999fae05bcb79a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7bf59c2f1ac48eb587817a2a30b02168ecc99635fc19b6e677cce01406e3fac' ;; 		i386) goRelArch='linux-386'; goRelSha256='3ac1db65a6fa5c13f424b53ee181755429df0c33775733cede1e0d540440fd7b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='5be21e7035efa4a270802ea04fb104dc7a54e3492641ae44632170b93166fb68' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c0aef360b99ebb4b834db8b5b22777b73a11fa37b382121b24bf587c40603915' ;; 		*) goRelArch='src'; goRelSha256='09c43d3336743866f2985f566db0520b36f4992aea2b4b2fd9f52f17049e88f2'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Feb 2019 12:58:23 GMT
ENV GOPATH=/go
# Wed, 27 Feb 2019 12:58:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Feb 2019 12:58:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Feb 2019 12:58:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5565830197f8831e23db2438cc94b7a2c5b37186bfa8adc7d45c22ef585b48`  
		Last Modified: Thu, 07 Feb 2019 15:52:41 GMT  
		Size: 46.4 MB (46384822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132c235127591dc1fcf10d81e3fb4feff77a94c31a0763561b28fc39ddf329d1`  
		Last Modified: Thu, 07 Feb 2019 18:33:03 GMT  
		Size: 46.0 MB (45955173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57cb0872630bce5dd367b879072c29f6f62cca86035215c10742d2d5833de8b`  
		Last Modified: Wed, 27 Feb 2019 12:59:18 GMT  
		Size: 105.6 MB (105586752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded976455470856606ba016faead89a5e38738e423a10fbbb241a30d0c26aca7`  
		Last Modified: Wed, 27 Feb 2019 12:58:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fc6e72a9f5c9a4b0e4635c47484b1bd2a3fe1ca42d724ce4c4a15e87cfa86678
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257636979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065caef2bee0e62eb3e548cc17107fe6afdfad79cd9589039b6147a8d8631eff`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:44:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Feb 2019 09:40:07 GMT
ENV GOLANG_VERSION=1.12
# Wed, 27 Feb 2019 09:40:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='750a07fef8579ae4839458701f4df690e0b20b8bcce33b437e4df89c451b6f13' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ea0636f055763d309437461b5817452419411eb1f598dc7f35999fae05bcb79a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7bf59c2f1ac48eb587817a2a30b02168ecc99635fc19b6e677cce01406e3fac' ;; 		i386) goRelArch='linux-386'; goRelSha256='3ac1db65a6fa5c13f424b53ee181755429df0c33775733cede1e0d540440fd7b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='5be21e7035efa4a270802ea04fb104dc7a54e3492641ae44632170b93166fb68' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c0aef360b99ebb4b834db8b5b22777b73a11fa37b382121b24bf587c40603915' ;; 		*) goRelArch='src'; goRelSha256='09c43d3336743866f2985f566db0520b36f4992aea2b4b2fd9f52f17049e88f2'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Feb 2019 09:40:32 GMT
ENV GOPATH=/go
# Wed, 27 Feb 2019 09:40:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Feb 2019 09:40:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Feb 2019 09:40:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf7cff8d1540abf0037817a982ebb3302bbf09abae0be8a01c89ec883cc628a`  
		Last Modified: Wed, 06 Feb 2019 10:52:46 GMT  
		Size: 49.0 MB (49018959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8abae9731191378c2eb4d267c1bee63e846952745f90749950cdbbda4c08206`  
		Last Modified: Wed, 27 Feb 2019 09:45:35 GMT  
		Size: 103.7 MB (103665530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db62894507f0dbc2c4ba0aaeea2333779b83a221de33b1ba3b5756d1edf375ef`  
		Last Modified: Wed, 27 Feb 2019 09:44:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:47f8940876d863e57301555f1e251e6b4b460396587d65b1d5bd3dc8f694f72d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283841908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26d3dc853351da8e9440938860c60d39507eec7dfb6b610eabac4f411cc330e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:55:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Feb 2019 11:38:23 GMT
ENV GOLANG_VERSION=1.12
# Wed, 27 Feb 2019 11:38:36 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='750a07fef8579ae4839458701f4df690e0b20b8bcce33b437e4df89c451b6f13' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ea0636f055763d309437461b5817452419411eb1f598dc7f35999fae05bcb79a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7bf59c2f1ac48eb587817a2a30b02168ecc99635fc19b6e677cce01406e3fac' ;; 		i386) goRelArch='linux-386'; goRelSha256='3ac1db65a6fa5c13f424b53ee181755429df0c33775733cede1e0d540440fd7b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='5be21e7035efa4a270802ea04fb104dc7a54e3492641ae44632170b93166fb68' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c0aef360b99ebb4b834db8b5b22777b73a11fa37b382121b24bf587c40603915' ;; 		*) goRelArch='src'; goRelSha256='09c43d3336743866f2985f566db0520b36f4992aea2b4b2fd9f52f17049e88f2'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Feb 2019 11:38:36 GMT
ENV GOPATH=/go
# Wed, 27 Feb 2019 11:38:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Feb 2019 11:38:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Feb 2019 11:38:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002c0a09c1c51163161e0d195b4b8a32d280b627feb7236270da3352cbe0fdc`  
		Last Modified: Thu, 07 Feb 2019 11:56:59 GMT  
		Size: 62.1 MB (62139483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cdf4b2732a6a2aee2897f6e2e1badd3f0e7acb53c74bcfdb5cce764261593b`  
		Last Modified: Wed, 27 Feb 2019 11:42:03 GMT  
		Size: 108.7 MB (108679123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f842f8a1bd32aefd776c66b02167fbf84f57a472c66667b53d7811696677aa6`  
		Last Modified: Wed, 27 Feb 2019 11:41:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d6b01b0be742568eb73843d478040c687f023a738982449853da38bfad72ee14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266187325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c9e4b0694fdc5af54f57a0016143292d6b25bee0844040366ad5b11b201761`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:09:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Feb 2019 09:17:10 GMT
ENV GOLANG_VERSION=1.12
# Wed, 27 Feb 2019 09:17:31 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='750a07fef8579ae4839458701f4df690e0b20b8bcce33b437e4df89c451b6f13' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ea0636f055763d309437461b5817452419411eb1f598dc7f35999fae05bcb79a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7bf59c2f1ac48eb587817a2a30b02168ecc99635fc19b6e677cce01406e3fac' ;; 		i386) goRelArch='linux-386'; goRelSha256='3ac1db65a6fa5c13f424b53ee181755429df0c33775733cede1e0d540440fd7b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='5be21e7035efa4a270802ea04fb104dc7a54e3492641ae44632170b93166fb68' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c0aef360b99ebb4b834db8b5b22777b73a11fa37b382121b24bf587c40603915' ;; 		*) goRelArch='src'; goRelSha256='09c43d3336743866f2985f566db0520b36f4992aea2b4b2fd9f52f17049e88f2'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Feb 2019 09:17:39 GMT
ENV GOPATH=/go
# Wed, 27 Feb 2019 09:17:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Feb 2019 09:17:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Feb 2019 09:17:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4073031e9717e6f628eeab004c3186c44881b7ce3150010b0a162a7d5641620`  
		Last Modified: Wed, 06 Feb 2019 20:12:15 GMT  
		Size: 52.8 MB (52787002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a056fe39571ceb23617c77b5245edabfc2dd18acc5922ef1055673ce687cc2d6`  
		Last Modified: Wed, 27 Feb 2019 09:21:19 GMT  
		Size: 103.4 MB (103435757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a776e077a34705f872dca6d4a9ef8cb7d057a3b56f4f6ea0c86461b47aafbb2`  
		Last Modified: Wed, 27 Feb 2019 09:20:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:765a74180319208a7565bf5dc4ec05f92d1cd814b12bdc9e5af8c2bb31c4c99e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266599709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc15f57e7dc71d7386db86dfa9b0403174a0c3fa1bbb6fca6d1252382d6aca3b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:42:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Feb 2019 12:41:28 GMT
ENV GOLANG_VERSION=1.12
# Wed, 27 Feb 2019 12:41:39 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='750a07fef8579ae4839458701f4df690e0b20b8bcce33b437e4df89c451b6f13' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ea0636f055763d309437461b5817452419411eb1f598dc7f35999fae05bcb79a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7bf59c2f1ac48eb587817a2a30b02168ecc99635fc19b6e677cce01406e3fac' ;; 		i386) goRelArch='linux-386'; goRelSha256='3ac1db65a6fa5c13f424b53ee181755429df0c33775733cede1e0d540440fd7b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='5be21e7035efa4a270802ea04fb104dc7a54e3492641ae44632170b93166fb68' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c0aef360b99ebb4b834db8b5b22777b73a11fa37b382121b24bf587c40603915' ;; 		*) goRelArch='src'; goRelSha256='09c43d3336743866f2985f566db0520b36f4992aea2b4b2fd9f52f17049e88f2'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Feb 2019 12:41:39 GMT
ENV GOPATH=/go
# Wed, 27 Feb 2019 12:41:39 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Feb 2019 12:41:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Feb 2019 12:41:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092388ef108b5a216c6b7dcb99493055f076783f5dc766fc30247724a4e404a5`  
		Last Modified: Wed, 06 Feb 2019 21:44:30 GMT  
		Size: 45.9 MB (45895383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e9d431a5bcd7a8ad594d5971228fa2ec4955f8afb3cdb87d9988b84239915`  
		Last Modified: Wed, 27 Feb 2019 12:44:08 GMT  
		Size: 110.3 MB (110317198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147eed064d30e6407421ef3b9751717cc31c19e9b16191179b3a0a630ab51b21`  
		Last Modified: Wed, 27 Feb 2019 12:43:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

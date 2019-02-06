## `golang:1-stretch`

```console
$ docker pull golang@sha256:16d3548e8062820cf5d111705c5f5925e6644d573191eb56e29e45dc4e39bae4
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
$ docker pull golang@sha256:0199d2027be9ce682be80fd80e49ccf061054124a9d3966c67c23a61f35152bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308275877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:901414995ecde2f253daa546c70e3e4ebb8ad4c6aec5ff63490c9923a436f801`
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
# Wed, 06 Feb 2019 12:53:14 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 06 Feb 2019 12:53:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 06 Feb 2019 12:53:35 GMT
ENV GOPATH=/go
# Wed, 06 Feb 2019 12:53:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 12:53:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 06 Feb 2019 12:53:36 GMT
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
	-	`sha256:e75ac00960df6789e4c4bad88e22adfcb4eb3d775587000496b0f4aab8e1f75c`  
		Last Modified: Wed, 06 Feb 2019 12:56:24 GMT  
		Size: 140.1 MB (140128756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08686fc4280e52a97b3a9ac235f1f897af18e7679e0fb15b055c5c3cdb7c6f13`  
		Last Modified: Wed, 06 Feb 2019 12:55:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:9d4658984fb06f4f386338cf230efd4dd77a6904c3d1e86c985f70ffaee3c92a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248825974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5af4cb870cbe075c854c9a1ab569118d841af435ea9f1aa0d8cae99f5a7fa6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:35:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 12:57:24 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 12:57:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 12:57:42 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 12:57:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 12:57:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 12:57:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbba5c313a1f6dad1e751255e1d64d5b13210013583e1a9a18c5eba3bb8921fc`  
		Last Modified: Wed, 23 Jan 2019 18:37:31 GMT  
		Size: 46.0 MB (45955215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338d04c93fc5088e793026e3ffc914071a3693b699643a6ab774c3e07eeaa0e6`  
		Last Modified: Thu, 24 Jan 2019 12:58:56 GMT  
		Size: 101.0 MB (100999320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa705360b2d5630ba87bd02150966ccbf3013490654cb208464d270a08f120c`  
		Last Modified: Thu, 24 Jan 2019 12:58:25 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9e4452280b8b6fe2ff4d84bea1f9b88ad3a673ce688f04555b1c5d3beedb5708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252849784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce15d3fbf7b98469050f3165a9a32cf8e97a623e3c7bbeb25f563b858806bf5`
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
# Fri, 25 Jan 2019 09:25:40 GMT
ENV GOLANG_VERSION=1.11.5
# Fri, 25 Jan 2019 09:26:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Jan 2019 09:26:09 GMT
ENV GOPATH=/go
# Fri, 25 Jan 2019 09:26:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 09:26:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Jan 2019 09:26:12 GMT
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
	-	`sha256:0d2bf341aab5b96714ec77ab959b7b97f2fe0b84efb73e7b2c4b42b15b085bd4`  
		Last Modified: Fri, 25 Jan 2019 09:42:29 GMT  
		Size: 98.9 MB (98886516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13932850ac55e07589da4a388235cf57ad2d99186d1128b1f77b2f3c9044ce9e`  
		Last Modified: Fri, 25 Jan 2019 09:41:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:7f89401fef1e70d41998a8ad712b8976576b17d3f679374cfdb5b9143e0d97e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282755662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9444ab7ce12acfa641f9c9802fe2c0a78f08dc325d9fdfcf5b3b7723473f2167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:52:21 GMT
ADD file:a1b4934a559144838b98b09b06112a85c3f348fe479aa3c06de45ad4d3924f84 in / 
# Wed, 23 Jan 2019 11:52:22 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:48:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:19:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:19:55 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 00:20:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 00:20:12 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 00:20:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 00:20:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 00:20:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7605ade44a5672398d8a60ec13ddeae3204795d746eafc908b8c1103fa8fa35`  
		Last Modified: Wed, 23 Jan 2019 12:02:23 GMT  
		Size: 46.1 MB (46069455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed41bfbb6729be227ae81d1bd145244f740acde515b1f0a83b6a58cbd729d4`  
		Last Modified: Wed, 23 Jan 2019 13:10:55 GMT  
		Size: 10.8 MB (10798916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3f7c615122a6e85e1207a196f2323f17f2997762bfd6518480dd0d171cdc82`  
		Last Modified: Wed, 23 Jan 2019 13:10:53 GMT  
		Size: 4.6 MB (4560785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f15f2e3f5d8388f4d415390adb509c7dcbc1a05764ea9fe7659f2d185ba1fb`  
		Last Modified: Wed, 23 Jan 2019 13:11:18 GMT  
		Size: 51.6 MB (51593507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d386a1d57a5a341201a018dfcfd5cba0d25e56a11d59774317c8807bb9a4c`  
		Last Modified: Thu, 24 Jan 2019 00:31:58 GMT  
		Size: 62.1 MB (62139450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc719e34b0641666a69508ba81399bd6b5f30c323ff6f2504d550b214cb08f`  
		Last Modified: Thu, 24 Jan 2019 00:32:49 GMT  
		Size: 107.6 MB (107593422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384721fa6b36f32b5b23458a5947005a990c0ec4391d69fd81977c0db753cab7`  
		Last Modified: Thu, 24 Jan 2019 00:32:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:038dce70a226c37f61d275af57d057d89b50e9e5338d20ef4d9058820f97746d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261706020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858c1bb154e24e88c42a0e98287e1f895abb9b9ab081f20c039b0e852fa0216c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:02:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 11:04:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:29:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 09:17:28 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 09:17:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 09:18:01 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 09:18:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 09:18:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 09:18:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9074895469b770a2456cb2377047c95c405f79e3b04ceca45935caf814e40`  
		Last Modified: Wed, 23 Jan 2019 11:48:50 GMT  
		Size: 10.0 MB (9986574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9d854b31c2198e3a6cc80e64e62531a2e63cf2b43ff8b40f03224abe9ee36`  
		Last Modified: Wed, 23 Jan 2019 11:48:48 GMT  
		Size: 4.3 MB (4295774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ba7f7793013080ce168066b3989515bc218c081a99c9626e919fab4089b85`  
		Last Modified: Wed, 23 Jan 2019 11:49:34 GMT  
		Size: 50.1 MB (50065120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0382c87e0645700143de72aa2a8d50be279c7605c92ae779f38c47ee5e7e904`  
		Last Modified: Wed, 23 Jan 2019 16:33:15 GMT  
		Size: 52.8 MB (52786978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6b6d96d4226fb6fb679f20ebea05677b751bb70ecd4267efdd5d38df9aceda`  
		Last Modified: Thu, 24 Jan 2019 09:28:02 GMT  
		Size: 99.0 MB (98954524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b1bc709ae1dcb4f1d000b2626323673c10fffd353408e09a1859d7a95cd364`  
		Last Modified: Thu, 24 Jan 2019 09:27:20 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:4d6ae83335b9bb36e0a14af02cccc038787c077c26feedf7671ad308b3f8f9e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259614752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc348a1105205d9f0d38b524a0fc5fa8edf445d869aab8d437bc9bc3571e0a14`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 12:41:41 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 12:41:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='ff54aafedff961eb94792487e827515da683d61a5f9482f668008832631e5d25' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='b26b53c94923f78955236386fee0725ef4e76b6cb47e0df0ed0c0c4724e7b198' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='6ee9a5714444182a236d3cc4636e74cfc5e24a1bacf0463ac71dcf0e7d4288ed' ;; 		i386) goRelArch='linux-386'; goRelSha256='acd8e05f8d3eed406e09bb58eab89de3f0a139d4aef15f74adeed2d2c24cb440' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66e83152c68cb35d41f21453377d6a811585c9e01a6ac54b19f7a6e2cbb3d1f5' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='56209e5498c64a8338cd6f0fe0c2e2cbf6857c0acdb10c774894f0cc0d19f413' ;; 		*) goRelArch='src'; goRelSha256='bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 12:41:56 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 12:41:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 12:41:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 12:41:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054d5ec8395e81bc338e38d97e4d77ad4096d7b1539a5c22fbdfbb710ead9a93`  
		Last Modified: Wed, 23 Jan 2019 16:21:44 GMT  
		Size: 45.9 MB (45895459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e59d16827590125e1774041cf763daa85284ebb3eab8a7e0d8a88ce856f0dfd`  
		Last Modified: Thu, 24 Jan 2019 12:50:53 GMT  
		Size: 103.3 MB (103331723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b545badeb6f03a94c74205ee0f348b2bb78b12cf83e9ee292eb1d606c578e2`  
		Last Modified: Thu, 24 Jan 2019 12:50:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:rc`

```console
$ docker pull golang@sha256:d34945772f4c64cac02a1d3f641ce0012ddfd2945173a1a2ce2f01305607dbc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	windows version 10.0.14393.2312; amd64
	-	windows version 10.0.16299.492; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:3e90d12c0512b7daecc3bde25dfa2311fb90e8b1929085af8463978cbeee07c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337375888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f1aa64fd70186d8e976f5134659b04b7bc184bfe425f8396f5195621a0cf9c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 22:20:11 GMT
ENV GOLANG_VERSION=1.11beta1
# Wed, 27 Jun 2018 22:20:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='df7fe096ffab5d331d35c6d038d2ec0426b45ce17f55a93037e371d3af9d4e6d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='844ed9e34b118a9c2b069a18924a7879236929e08c887a92e5be1af5d701fb90' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='9c1795148e777c81ac3cb381e3ea970eea60f5db2323658c061e5c4382125dd4' ;; 		i386) goRelArch='linux-386'; goRelSha256='a6e804652f58785b3dfe272d96b8206250210e7ba7bdcb1ffb726ab3753db4af' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66529a525c0369d2b79ecd19f6d16444ed162c9bf88f7b37715520841c36de65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='731b9e6ac0d4c9709297f0efc1a6455589b978d2ecc207184d3e5be07a130c9c' ;; 		*) goRelArch='src'; goRelSha256='5955eeb8f45e02aa5357fc18e62f1fe6c1b19e0c50aba93b8b9d9ef13b862dda'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Jun 2018 22:20:30 GMT
ENV GOPATH=/go
# Wed, 27 Jun 2018 22:20:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 22:20:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Jun 2018 22:20:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f6351ddb3796295061478a28f09752a99b61fdb5160e0456b687f3dd52e04a`  
		Last Modified: Wed, 27 Jun 2018 22:29:30 GMT  
		Size: 57.6 MB (57565582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d930c1545f5f8dd60d33f27b95cc6f26f9f30759d37264ef84a1f9081014e7`  
		Last Modified: Wed, 27 Jun 2018 22:29:50 GMT  
		Size: 169.3 MB (169318369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e30fc2f13a0a23db1d40bbddb264db6de62b51920c5f6aeaa143a34e144ac00`  
		Last Modified: Wed, 27 Jun 2018 22:29:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:839b97ed642a60174ff4a5e8795b4103cb0c311f4aa4344d40eef71f8d52726b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297446243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e789c7e021c8e525c92d5cb3c3290dfa6461205ba10ad4e7968fed08c7f1fee3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:54:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 08:45:52 GMT
ENV GOLANG_VERSION=1.11beta1
# Thu, 28 Jun 2018 08:46:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='df7fe096ffab5d331d35c6d038d2ec0426b45ce17f55a93037e371d3af9d4e6d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='844ed9e34b118a9c2b069a18924a7879236929e08c887a92e5be1af5d701fb90' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='9c1795148e777c81ac3cb381e3ea970eea60f5db2323658c061e5c4382125dd4' ;; 		i386) goRelArch='linux-386'; goRelSha256='a6e804652f58785b3dfe272d96b8206250210e7ba7bdcb1ffb726ab3753db4af' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66529a525c0369d2b79ecd19f6d16444ed162c9bf88f7b37715520841c36de65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='731b9e6ac0d4c9709297f0efc1a6455589b978d2ecc207184d3e5be07a130c9c' ;; 		*) goRelArch='src'; goRelSha256='5955eeb8f45e02aa5357fc18e62f1fe6c1b19e0c50aba93b8b9d9ef13b862dda'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 28 Jun 2018 08:46:19 GMT
ENV GOPATH=/go
# Thu, 28 Jun 2018 08:46:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Jun 2018 08:46:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 28 Jun 2018 08:46:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5fcd394e27d6088067f637bd3c0755a34ef456e102c0fad7bd17ef33cd7e14`  
		Last Modified: Wed, 27 Jun 2018 21:56:34 GMT  
		Size: 49.0 MB (48970237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f265b2dad76b328044beb0165c04a7b94af2775cbce766a278227ed5fa51e5ca`  
		Last Modified: Thu, 28 Jun 2018 08:51:39 GMT  
		Size: 143.5 MB (143547170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a3efe661769a2cb034dcb26c3d34aa68cfe0f0f63d096ebbb3ffb5474941ec`  
		Last Modified: Thu, 28 Jun 2018 08:50:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; 386

```console
$ docker pull golang@sha256:9a2ca1f2c46757fa766256d659451665a336c83b6cdbcb864b7f0d185480cbc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (328038391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f28a8183271eb727bbcfc5004b2756734324ded2ca3423292792bc96153c7f6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 10:38:54 GMT
ENV GOLANG_VERSION=1.11beta1
# Thu, 28 Jun 2018 10:39:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='df7fe096ffab5d331d35c6d038d2ec0426b45ce17f55a93037e371d3af9d4e6d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='844ed9e34b118a9c2b069a18924a7879236929e08c887a92e5be1af5d701fb90' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='9c1795148e777c81ac3cb381e3ea970eea60f5db2323658c061e5c4382125dd4' ;; 		i386) goRelArch='linux-386'; goRelSha256='a6e804652f58785b3dfe272d96b8206250210e7ba7bdcb1ffb726ab3753db4af' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66529a525c0369d2b79ecd19f6d16444ed162c9bf88f7b37715520841c36de65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='731b9e6ac0d4c9709297f0efc1a6455589b978d2ecc207184d3e5be07a130c9c' ;; 		*) goRelArch='src'; goRelSha256='5955eeb8f45e02aa5357fc18e62f1fe6c1b19e0c50aba93b8b9d9ef13b862dda'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 28 Jun 2018 10:39:18 GMT
ENV GOPATH=/go
# Thu, 28 Jun 2018 10:39:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Jun 2018 10:39:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 28 Jun 2018 10:39:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1180ff77f44b4c76845b640e811eb8ab26f087d893e0d368fc331c0ba05766bc`  
		Last Modified: Wed, 06 Jun 2018 12:53:25 GMT  
		Size: 62.1 MB (62091972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb454ca45fda579f08c1ec08af62fdfd24c3de3710b75fa2ab330872f304653`  
		Last Modified: Thu, 28 Jun 2018 10:43:31 GMT  
		Size: 153.0 MB (152968550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e71dabc643d63bb3c653c40170b232533ba10326504974be07441edf3716727`  
		Last Modified: Thu, 28 Jun 2018 10:42:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; ppc64le

```console
$ docker pull golang@sha256:0c3db19b60d19bb2e697eba5e90457963e8a993d2f189888ae83a491c87ad7c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.8 MB (304803747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35be15d8a7e7377927a88aba9f2b99662e6bbb323fe56e4d185af441b9fab9c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jun 2018 08:16:48 GMT
ENV GOLANG_VERSION=1.11beta1
# Thu, 28 Jun 2018 08:17:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='df7fe096ffab5d331d35c6d038d2ec0426b45ce17f55a93037e371d3af9d4e6d' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='844ed9e34b118a9c2b069a18924a7879236929e08c887a92e5be1af5d701fb90' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='9c1795148e777c81ac3cb381e3ea970eea60f5db2323658c061e5c4382125dd4' ;; 		i386) goRelArch='linux-386'; goRelSha256='a6e804652f58785b3dfe272d96b8206250210e7ba7bdcb1ffb726ab3753db4af' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='66529a525c0369d2b79ecd19f6d16444ed162c9bf88f7b37715520841c36de65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='731b9e6ac0d4c9709297f0efc1a6455589b978d2ecc207184d3e5be07a130c9c' ;; 		*) goRelArch='src'; goRelSha256='5955eeb8f45e02aa5357fc18e62f1fe6c1b19e0c50aba93b8b9d9ef13b862dda'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 28 Jun 2018 08:17:11 GMT
ENV GOPATH=/go
# Thu, 28 Jun 2018 08:17:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Jun 2018 08:17:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 28 Jun 2018 08:17:21 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f874cd164630c460c93d7b387a05c7bc24f20f1a61d522cfbb2c7928ca28ab1`  
		Last Modified: Wed, 27 Jun 2018 14:43:54 GMT  
		Size: 52.7 MB (52737934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6857eace7b440d04f70e33517c397aa9a2fed6859b4f5b4f7e2ab2e0e6cf29`  
		Last Modified: Thu, 28 Jun 2018 08:21:39 GMT  
		Size: 142.2 MB (142153388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41047d18db461fd2f7daefbd5deab99771c56c4ea25300a06b1cc865b95472c9`  
		Last Modified: Thu, 28 Jun 2018 08:21:08 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:116429a42bb526b4b96f3f71c9ac873607271c3c199457134c3a1b5341db665c
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5704954098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174741cfcccaf02586b87c2d0fd03437d50406421c85010119a334ecd831e056`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Sat, 16 Jun 2018 10:18:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Jun 2018 09:15:59 GMT
ENV GIT_VERSION=2.11.1
# Thu, 28 Jun 2018 09:16:00 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 28 Jun 2018 09:16:01 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 28 Jun 2018 09:16:02 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 28 Jun 2018 09:19:29 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:19:30 GMT
ENV GOPATH=C:\gopath
# Thu, 28 Jun 2018 09:20:48 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 28 Jun 2018 09:20:49 GMT
ENV GOLANG_VERSION=1.11beta1
# Thu, 28 Jun 2018 09:26:42 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:26:44 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2f081cda9e78f379ae3f7a2238f310ca91bbbac2c32d6e990eb6b15df6c2df4b`  
		Last Modified: Sat, 16 Jun 2018 10:42:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b941ca4b7a91bd409a5ca17d0a3809c4df0f14969d1ab846bbada1a7ed0a6d`  
		Last Modified: Thu, 28 Jun 2018 10:20:45 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b76aad6bebb8976ddb393e2e4bbb16d2498b772d818d6901d66be6716c1b1d`  
		Last Modified: Thu, 28 Jun 2018 10:20:44 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ce71fe48612cb62e1f9ed11992b8bdf92861776ff445a83f2fa7b3df5a213c`  
		Last Modified: Thu, 28 Jun 2018 10:20:43 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54be7a93603f8809d1ee1f042aea0de428433f3bbe4cb72224f41f9b5987402c`  
		Last Modified: Thu, 28 Jun 2018 10:20:42 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892f081010a125e60e22d32d01439da8050f7cf87c32c49fb6658dcd4655deb2`  
		Last Modified: Thu, 28 Jun 2018 10:20:58 GMT  
		Size: 33.9 MB (33919261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c3655756606be984b5e587770715ebedc6a7c00f929feb264666878fa9423d`  
		Last Modified: Thu, 28 Jun 2018 10:20:39 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f6a13462dbe3763e3a5c4b512f3a3d2610e00fb5f379e74154db3182d9f0b6`  
		Last Modified: Thu, 28 Jun 2018 10:20:41 GMT  
		Size: 5.0 MB (4959596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a335e36ad9aa4c3534558f42ec3e251b2714abd301c43cfbb2b943f470c92579`  
		Last Modified: Thu, 28 Jun 2018 10:20:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3084e741614e37115de2130963a3d9059330a0bd2f841bccd2349ff92ec7ca85`  
		Last Modified: Thu, 28 Jun 2018 10:22:47 GMT  
		Size: 181.8 MB (181760188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62a0f0b85d0da7c07720c41ca94d8bedaaddce7e19cad7749dcdb924c411f3c`  
		Last Modified: Thu, 28 Jun 2018 10:20:39 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.16299.492; amd64

```console
$ docker pull golang@sha256:e9d616fd92dcfec74e4a26a853cae4375688789b362fdbacdaa0b6b8915d949f
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3308600528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d44430292d9169e0c85e9397b76291aabad591cfdedde08227574e58ec406b65`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Sat, 16 Jun 2018 10:25:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Jun 2018 09:27:22 GMT
ENV GIT_VERSION=2.11.1
# Thu, 28 Jun 2018 09:27:23 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 28 Jun 2018 09:27:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 28 Jun 2018 09:27:25 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 28 Jun 2018 09:30:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:30:12 GMT
ENV GOPATH=C:\gopath
# Thu, 28 Jun 2018 09:31:05 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 28 Jun 2018 09:31:06 GMT
ENV GOLANG_VERSION=1.11beta1
# Thu, 28 Jun 2018 09:36:26 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:36:28 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c64dfe6152b178e35770ab15c53bfcc70f8dd47d8a0551e325ccfa665416b738`  
		Last Modified: Sat, 16 Jun 2018 10:43:33 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a7362d18c7557f0647621858e80c20c24fba132a185f21ca1a8d8e4b056f0`  
		Last Modified: Thu, 28 Jun 2018 10:23:13 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20491759d238539ade6c851e9c3b180ba1b9847803059111990a15d8a48fd05a`  
		Last Modified: Thu, 28 Jun 2018 10:23:12 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11b0cbe2f5e791ba6c15db1abf06f88259e067ca3f44381962d3aefa6af4098`  
		Last Modified: Thu, 28 Jun 2018 10:23:10 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcc18a1bc43a1dac10c6f494be4ec787c0e9545362afe9dca29885bf5a9601e`  
		Last Modified: Thu, 28 Jun 2018 10:23:10 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbfa39391787b21da81cd15cf0ffd956a8b7b1d99be218350c5105c3e45efde`  
		Last Modified: Thu, 28 Jun 2018 10:23:24 GMT  
		Size: 29.1 MB (29122707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727f2f7ba0e5a47b1bdd5fd922bf2e83b054cc213d43d03e4a051c33fd8166b`  
		Last Modified: Thu, 28 Jun 2018 10:23:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d64e2206db290090330fe2d1e4a1573f0036d43c77fa0dab543a6a66400bfc`  
		Last Modified: Thu, 28 Jun 2018 10:23:09 GMT  
		Size: 4.6 MB (4637449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbca178dd718a45cc9d13e3370a2d1d0069247b12ef134d834f0d23ac7c43903`  
		Last Modified: Thu, 28 Jun 2018 10:23:07 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a02043d76e1828b54af3b86c6d68c4e3df881951dbb74507253ab7c621de6f`  
		Last Modified: Thu, 28 Jun 2018 10:25:10 GMT  
		Size: 177.0 MB (176953884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ab11aa0a96845fcd5b93474f683d4de8d582e0a6e8ea17e74673ffb5602e20`  
		Last Modified: Thu, 28 Jun 2018 10:23:07 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

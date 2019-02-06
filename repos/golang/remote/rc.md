## `golang:rc`

```console
$ docker pull golang@sha256:deefca0c5d88d6ae9747a8f994e23f68047d35b878e7dca8ea78331bc670cdb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2724; amd64
	-	windows version 10.0.16299.904; amd64
	-	windows version 10.0.17134.523; amd64
	-	windows version 10.0.17763.253; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:693b4755e7c2abfd0ab600c010a8043d5e491ce888706499f737a8c002235397
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301372982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adde30aed3cfd1722a36e1e17739c74f9b9eb973e9916215d5079f89ae6a7cc`
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
# Wed, 06 Feb 2019 12:52:35 GMT
ENV GOLANG_VERSION=1.12beta2
# Wed, 06 Feb 2019 12:52:57 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 06 Feb 2019 12:52:57 GMT
ENV GOPATH=/go
# Wed, 06 Feb 2019 12:52:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 12:52:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 06 Feb 2019 12:52:59 GMT
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
	-	`sha256:7b68ed4d723e4982fee73f7ba39d2c9e05ffe2cb528177b7891983c033d7bad9`  
		Last Modified: Wed, 06 Feb 2019 12:55:36 GMT  
		Size: 133.2 MB (133225861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438f4e00e2e093ab7dd449f92a4f1445d06624716658e9ddb5d392e2717ef571`  
		Last Modified: Wed, 06 Feb 2019 12:54:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm variant v7

```console
$ docker pull golang@sha256:63d4c983d4319a94c19dbd301605747234ee6703f8af7459cc2497e6e32c98d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253252948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc284290a60394166d1b7ef91c0b47212d4339cbdec7557ad1dc8e6668efdbf7`
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
# Wed, 23 Jan 2019 18:35:12 GMT
ENV GOLANG_VERSION=1.12beta2
# Wed, 23 Jan 2019 18:35:45 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 23 Jan 2019 18:35:47 GMT
ENV GOPATH=/go
# Wed, 23 Jan 2019 18:35:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 18:35:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 23 Jan 2019 18:35:50 GMT
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
	-	`sha256:e6c8158e899b61bbc0ce388a359aa8a7ae63a52173d083086c1b2b16bc11a5d7`  
		Last Modified: Wed, 23 Jan 2019 18:37:52 GMT  
		Size: 105.4 MB (105426294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de90b2d972d58c8e5529960d7838af8bb3d2798d44d142ef0d496f397281984`  
		Last Modified: Wed, 23 Jan 2019 18:37:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm64 variant v8

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

### `golang:rc` - linux; 386

```console
$ docker pull golang@sha256:302797954c586c586fe97b7964317ffc4bd76337657a5a1c0761dd986df95e90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289985970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc488e5696d6949dfa5c492afc9c69d899cdf32a88c4d316cab33c2f2da2560b`
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
# Thu, 24 Jan 2019 00:19:28 GMT
ENV GOLANG_VERSION=1.12beta2
# Thu, 24 Jan 2019 00:19:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 00:19:44 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 00:19:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 00:19:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 00:19:45 GMT
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
	-	`sha256:4ea5b4bf46a455bb89d4bbb0ca294b6dc17ab6e993d3d41cbbf4343320d2c645`  
		Last Modified: Thu, 24 Jan 2019 00:32:11 GMT  
		Size: 114.8 MB (114823731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69ee6536c9ac878dde8fdb6d002ee543e5806a7ae0aaef4b9e3eaac04dd86af`  
		Last Modified: Thu, 24 Jan 2019 00:31:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; ppc64le

```console
$ docker pull golang@sha256:d9c14b7e1f0b4cc789a7d697663410bfc4150249cf0882eff7cc6083240f8d5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266127624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7e31a01d01554e89283a72bc44e10fd46643fdbe7aada713e46e3bbd1ec362`
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
# Wed, 23 Jan 2019 16:30:00 GMT
ENV GOLANG_VERSION=1.12beta2
# Wed, 23 Jan 2019 16:30:21 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 23 Jan 2019 16:30:27 GMT
ENV GOPATH=/go
# Wed, 23 Jan 2019 16:30:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 16:30:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 23 Jan 2019 16:30:37 GMT
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
	-	`sha256:61dcf4d79a8c69840c6b5c6f5b1d7e763180bfd19b9016fd45ad04b332fd4273`  
		Last Modified: Wed, 23 Jan 2019 16:33:25 GMT  
		Size: 103.4 MB (103376128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cec8a3fc7ff610e6f52c2b95f0d6635b33324c4adb76216270adfacd312759`  
		Last Modified: Wed, 23 Jan 2019 16:33:02 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; s390x

```console
$ docker pull golang@sha256:8510950a73116873a9a12c40526d429ae81eea59ec8fe3d2d235ea5f7515dbbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266371280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398429ef58a3eb7a4ac0ee60d5813af61f657aa421e2dbb47fec63febb3d7f31`
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
# Wed, 23 Jan 2019 16:19:04 GMT
ENV GOLANG_VERSION=1.12beta2
# Wed, 23 Jan 2019 16:19:26 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='9e4884b46a72e0558187a8af6e8733e039432df1b755f14b361f18b63fa5a63e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='d41674dda2e33a539929a980c7ba8d68c90c8aabcb138b65a2dc36704af02ace' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='77d80484e455ad65aa0778aa82391c02ded01a37ee65f7887167dc03a6ef3251' ;; 		i386) goRelArch='linux-386'; goRelSha256='ffe0d1c92473b2fd653e399c1ddb11535b9666f22b6ae5653bd1fb4f84534c46' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1701e3c216c970a833248d6e5df5f2c27c6103e8e3bde34c5c3c25e839e87f9' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='bb4ea794a8fa459ad596c03b08fba9de647c62369c74f5daf21a6bae8c855b11' ;; 		*) goRelArch='src'; goRelSha256='fd3f4e1860ac59d647c22a2c1589fcf4a96c02bbbfef1ca1ea44bc25cf62a490'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 23 Jan 2019 16:19:27 GMT
ENV GOPATH=/go
# Wed, 23 Jan 2019 16:19:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 16:19:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 23 Jan 2019 16:19:28 GMT
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
	-	`sha256:2195263c74bc8da51f34f372a1f450d2ed69d5d2cc569f4becb98ebba7ee21ba`  
		Last Modified: Wed, 23 Jan 2019 16:21:57 GMT  
		Size: 110.1 MB (110088251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302563fc75005fea393f0a785242fb9913508acccf938bdfffc506f1e34fef74`  
		Last Modified: Wed, 23 Jan 2019 16:21:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.14393.2724; amd64

```console
$ docker pull golang@sha256:1fb9dbea5061ebb1604ec1c1bc3dc4d1ac232e459b15f66498d65e89646bb29e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5817515549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d25bdc586f7addf96d25eadea7a7e4d99287b0cf437b16d7bcf27db8285a33`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:55:13 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 11:55:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 11:55:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 11:55:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 11:56:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 11:56:46 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 11:57:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 11:58:00 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:04:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6d1878249d99dc9ba3e7c7da05470cf7c4fa70b319eeb8e6248dd5a26ff3d870'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:04:34 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e61af345295efea8e59cccf803b343c407ce77a198d68056833235a3adcfc4`  
		Last Modified: Fri, 11 Jan 2019 13:54:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1d2d63737b52c3eee42a2de1888453e8f27bae070f6dd869c538f54ea18aef`  
		Last Modified: Fri, 11 Jan 2019 13:54:19 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45962e33b2d3de9ba79b048db3aa0158c69e6b60fd5c498fd3595551e48ea846`  
		Last Modified: Fri, 11 Jan 2019 13:54:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d677e9f5e722cbc5d32c6e998b76402d52613124d3754b812152193c1c2b213`  
		Last Modified: Fri, 11 Jan 2019 13:54:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b6562e3ce3395a2de0eeeda2a439f7f50c96374be711fe3ae90c4560340cec`  
		Last Modified: Fri, 11 Jan 2019 13:54:30 GMT  
		Size: 29.6 MB (29630483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0924b343b4dadd57ed6d7033af0b3f2f5b8c74544b3d2fe9c2a47792ec9d6397`  
		Last Modified: Fri, 11 Jan 2019 13:54:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c4801d95116c9b1de47576071deca0cdbf3c1d6729343b9ab5edb9a751b22c`  
		Last Modified: Fri, 11 Jan 2019 13:54:16 GMT  
		Size: 5.2 MB (5162103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eed8a18d814a05a1aef685c23c66bfd2762569704317d680f7442ad23109d0`  
		Last Modified: Fri, 11 Jan 2019 13:54:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb0f2ffd7795bbc8afad44d27eb75ca46684a9d7787e522b8daf595c4acb89b`  
		Last Modified: Fri, 11 Jan 2019 13:55:58 GMT  
		Size: 146.9 MB (146897065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9165c93752145ff36f40d252c69629cbe741220f3d7fdef1a1dcd36681cb63c6`  
		Last Modified: Fri, 11 Jan 2019 13:54:15 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.16299.904; amd64

```console
$ docker pull golang@sha256:a78f1175b04787253892ad8024999cba4e950b0e6183c9fe03f4c0351ef00d8c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3322963968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaa60f7c50635da1d6f9e40022c145f87fd7faab26fc4c304afac38a32f8195`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:04:42 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:04:43 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:04:44 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:04:45 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:06:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:06:14 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:07:01 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 12:07:03 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:13:08 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6d1878249d99dc9ba3e7c7da05470cf7c4fa70b319eeb8e6248dd5a26ff3d870'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:13:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf22818b48886e706c04d4997f6bb3e3237b0b22d3782d336ee2bd3aac94b5d`  
		Last Modified: Fri, 11 Jan 2019 13:56:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ed0a689b710574b00e5d6a2c0950b96a0fc7a9ac68a4d52e74404cc1c228c`  
		Last Modified: Fri, 11 Jan 2019 13:56:20 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041c9b670eafa93786f2c9b92e143ac52239efd6110de01a2ec54a83e5ebaeab`  
		Last Modified: Fri, 11 Jan 2019 13:56:16 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de6d810b2c1a7b231514c300057b01601eed576a378265a9c80d5f389f06c9`  
		Last Modified: Fri, 11 Jan 2019 13:56:16 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7985d67fdc81492a175d153ced87260249c7c24fae512ddef866d916257bd35f`  
		Last Modified: Fri, 11 Jan 2019 13:56:29 GMT  
		Size: 29.2 MB (29190445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a4bf19336280daa5f7609ec75e75d37ef2746c65ac139ac4a6f2ba5c0c654`  
		Last Modified: Fri, 11 Jan 2019 13:56:13 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59eda821899f63b0195789a63da50294c34673d9bad261467918035c69b1007`  
		Last Modified: Fri, 11 Jan 2019 13:56:16 GMT  
		Size: 4.7 MB (4739394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b6920682c5f0de9dd25009904a95ffd163da4548f6ced5b7ddba49d920648d`  
		Last Modified: Fri, 11 Jan 2019 13:56:13 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45380301e808e474525430f1b7a6fb9ce314eb5dc88e7faaaf34cf41f919450`  
		Last Modified: Fri, 11 Jan 2019 13:57:58 GMT  
		Size: 142.0 MB (141968507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17687860fa94cd5b493da2e363350f309188c4605784862330cabb386267b82`  
		Last Modified: Fri, 11 Jan 2019 13:56:13 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.17134.523; amd64

```console
$ docker pull golang@sha256:95fc360b31fe96acb616a9f92d390420c9d0c5024315000e1f0297df3e5980d9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2412621569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b96563428f82065cdf7fb26adb990222cce1da8dd1e18bb6f6908458302284`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:13:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:13:28 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:13:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:13:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:15:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:15:02 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:15:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 12:15:32 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:21:13 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6d1878249d99dc9ba3e7c7da05470cf7c4fa70b319eeb8e6248dd5a26ff3d870'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:21:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b934d5ab5fbb50fd3e1b560b03c3b24f11a3c0e1bdd399c7850a968865cf32c9`  
		Last Modified: Fri, 11 Jan 2019 13:58:19 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382c299400df1a200890f5a84fc62163f3f8e943a072bd6421aaa61059bd2079`  
		Last Modified: Fri, 11 Jan 2019 13:58:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db751b50c2dd2a9c08bfc757c5cd3458cd2c00c8ae8d14d81d147578a9959940`  
		Last Modified: Fri, 11 Jan 2019 13:58:16 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378165ec9af35fb940c4f0a761b79321fd79e07d4763ccb6d2244affa4a17c8d`  
		Last Modified: Fri, 11 Jan 2019 13:58:16 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ec26d45f5823ec286db921c11ddba3b7831906d2b72703c9d1975495f46bf1`  
		Last Modified: Fri, 11 Jan 2019 13:58:27 GMT  
		Size: 29.1 MB (29085541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba465b29c021e982d324f2a2ed0e5262fd741bf1ae40d91eb851fc2c71f39b0e`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ed7086c4b5e96a2b45161a28bdbab57c4c107fc255a09a8b7fccb7b476b80b`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 295.2 KB (295179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808efc9ac0102455a0928a7b5acac6ba7f956cedef6a16167485d898895bbe5c`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68c8fe8c36849813e3eae57b0ef5bfec0661ef3efc689ed417e913e2d13308`  
		Last Modified: Fri, 11 Jan 2019 14:00:00 GMT  
		Size: 137.5 MB (137543921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaed2bbb31439c814193f94aefe92e010bcb10af2ef5fcfa79d537c0fc8b0c2`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.17763.253; amd64

```console
$ docker pull golang@sha256:19e7a08de4fa8c427cac3c6c4ded43e8e2066d0835ac7a02c8aa34afcca8f96f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2016441545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92bcfc8bba7a42da14a77d2d7da9e12d2316791059b9820c7d4e063436411472`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:21:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:21:27 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:21:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:21:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:22:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:22:44 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:23:12 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 12:23:13 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:59:02 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6d1878249d99dc9ba3e7c7da05470cf7c4fa70b319eeb8e6248dd5a26ff3d870'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:59:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2ac060f1ef0656a73755234824c317294dcaf934c9f0933b1a3aa349d8e4fbf3`  
		Last Modified: Tue, 08 Jan 2019 19:21:17 GMT  
		Size: 315.3 MB (315326112 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:409ca3908f9b0e2af8c5b8e8e66b93a5b0b79aa380a8750859965d0017697547`  
		Last Modified: Fri, 11 Jan 2019 14:00:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8e42e8c407967d0a217f6d85613cd4f05f30d0e8b37d0f12268ae33de1c02`  
		Last Modified: Fri, 11 Jan 2019 14:00:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39532532c4de7b860f3695dcd6ad5523b2b85734bd24ec9ee383db37d4d4954`  
		Last Modified: Fri, 11 Jan 2019 14:00:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa97f71daaac47123c4a81618bd3ec0341809b2835e5ec5870c6171ffb4c72`  
		Last Modified: Fri, 11 Jan 2019 14:00:21 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a99d3cca2b432f8ee688708adb2436dc74622dcf580104029bc8755ec760156`  
		Last Modified: Fri, 11 Jan 2019 14:00:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc325317936d55c40376cc3cf1bfca7963d4136fbe86c78b3fd8c3e6fbba2e`  
		Last Modified: Fri, 11 Jan 2019 14:00:32 GMT  
		Size: 28.5 MB (28542533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7d996a4bf197348e2d84cb5fbf47028a93b646df0d382574ff7538712c7c9f`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e248d960d69056cb868f8d15ee6f4d85062b7436eb319cacedc68f33aecd2a2`  
		Last Modified: Fri, 11 Jan 2019 14:00:18 GMT  
		Size: 315.0 KB (314999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa6b1c4153669c82c714b170e627a50a5557c7a434923f6517d0a67f88f1c4`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24dc99d1b3fd483f3a3e5ca89560b26c2b5ebf702c36bafe38e48d3541e63bcc`  
		Last Modified: Fri, 11 Jan 2019 14:01:54 GMT  
		Size: 137.6 MB (137562779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18357d461e4d5f81711aca42f3f8de305fa6b8523106febf3e01c6105ec2ab`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

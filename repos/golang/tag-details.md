<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `golang`

-	[`golang:1`](#golang1)
-	[`golang:1.10`](#golang110)
-	[`golang:1.10.1`](#golang1101)
-	[`golang:1.10.1-alpine`](#golang1101-alpine)
-	[`golang:1.10.1-alpine3.7`](#golang1101-alpine37)
-	[`golang:1.10.1-nanoserver`](#golang1101-nanoserver)
-	[`golang:1.10.1-nanoserver-sac2016`](#golang1101-nanoserver-sac2016)
-	[`golang:1.10.1-stretch`](#golang1101-stretch)
-	[`golang:1.10.1-windowsservercore`](#golang1101-windowsservercore)
-	[`golang:1.10.1-windowsservercore-1709`](#golang1101-windowsservercore-1709)
-	[`golang:1.10.1-windowsservercore-ltsc2016`](#golang1101-windowsservercore-ltsc2016)
-	[`golang:1.10-alpine`](#golang110-alpine)
-	[`golang:1.10-alpine3.7`](#golang110-alpine37)
-	[`golang:1.10-nanoserver`](#golang110-nanoserver)
-	[`golang:1.10-nanoserver-sac2016`](#golang110-nanoserver-sac2016)
-	[`golang:1.10-stretch`](#golang110-stretch)
-	[`golang:1.10-windowsservercore`](#golang110-windowsservercore)
-	[`golang:1.10-windowsservercore-1709`](#golang110-windowsservercore-1709)
-	[`golang:1.10-windowsservercore-ltsc2016`](#golang110-windowsservercore-ltsc2016)
-	[`golang:1.9`](#golang19)
-	[`golang:1.9.5`](#golang195)
-	[`golang:1.9.5-alpine`](#golang195-alpine)
-	[`golang:1.9.5-alpine3.6`](#golang195-alpine36)
-	[`golang:1.9.5-alpine3.7`](#golang195-alpine37)
-	[`golang:1.9.5-nanoserver`](#golang195-nanoserver)
-	[`golang:1.9.5-nanoserver-sac2016`](#golang195-nanoserver-sac2016)
-	[`golang:1.9.5-stretch`](#golang195-stretch)
-	[`golang:1.9.5-windowsservercore`](#golang195-windowsservercore)
-	[`golang:1.9.5-windowsservercore-1709`](#golang195-windowsservercore-1709)
-	[`golang:1.9.5-windowsservercore-ltsc2016`](#golang195-windowsservercore-ltsc2016)
-	[`golang:1.9-alpine`](#golang19-alpine)
-	[`golang:1.9-alpine3.6`](#golang19-alpine36)
-	[`golang:1.9-alpine3.7`](#golang19-alpine37)
-	[`golang:1.9-nanoserver`](#golang19-nanoserver)
-	[`golang:1.9-nanoserver-sac2016`](#golang19-nanoserver-sac2016)
-	[`golang:1.9-stretch`](#golang19-stretch)
-	[`golang:1.9-windowsservercore`](#golang19-windowsservercore)
-	[`golang:1.9-windowsservercore-1709`](#golang19-windowsservercore-1709)
-	[`golang:1.9-windowsservercore-ltsc2016`](#golang19-windowsservercore-ltsc2016)
-	[`golang:1-alpine`](#golang1-alpine)
-	[`golang:1-alpine3.7`](#golang1-alpine37)
-	[`golang:1-nanoserver`](#golang1-nanoserver)
-	[`golang:1-nanoserver-sac2016`](#golang1-nanoserver-sac2016)
-	[`golang:1-stretch`](#golang1-stretch)
-	[`golang:1-windowsservercore`](#golang1-windowsservercore)
-	[`golang:1-windowsservercore-1709`](#golang1-windowsservercore-1709)
-	[`golang:1-windowsservercore-ltsc2016`](#golang1-windowsservercore-ltsc2016)
-	[`golang:alpine`](#golangalpine)
-	[`golang:alpine3.7`](#golangalpine37)
-	[`golang:latest`](#golanglatest)
-	[`golang:nanoserver`](#golangnanoserver)
-	[`golang:nanoserver-sac2016`](#golangnanoserver-sac2016)
-	[`golang:stretch`](#golangstretch)
-	[`golang:windowsservercore`](#golangwindowsservercore)
-	[`golang:windowsservercore-1709`](#golangwindowsservercore-1709)
-	[`golang:windowsservercore-ltsc2016`](#golangwindowsservercore-ltsc2016)

## `golang:1`

```console
$ docker pull golang@sha256:ce70a7c27659bd714b63e7439ba0ae4a9f5a111fea16bd87575ddcfb0d0ef0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:0c4109858680d4cede075491298de88b5d3df24380c328f7be417d22282acb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288082461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d632bbfe57672c7fd240065c134fc396485a3acf04ec8baacfe1416e0c519d46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 04:57:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:57:33 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:57:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d5c68d1eb2883592bad93d3783537f6de3af29ebbd853fec09ce858c84b04`  
		Last Modified: Thu, 15 Mar 2018 04:58:53 GMT  
		Size: 119.9 MB (119925786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca93091ca51d8418a22f653756ff770e0052496e504ad1ec2d99bcdef710a7`  
		Last Modified: Thu, 15 Mar 2018 04:58:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:7e4554b17f1b8da05062e167d0f95630e6d56aab51e99b8c80360c2318af553a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569ad906c2f0291321396c5a52318936cc6aa003a7e8462c9c614526ce64d738`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:49 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 16:17:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:07 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a82265f2433d4781cb5d6464d9e67dcdb3633ef248540f1c6b44baaf85f06`  
		Last Modified: Wed, 14 Mar 2018 16:18:35 GMT  
		Size: 103.0 MB (102996022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59883716fb60d91ae2f5e75796ffc4bd6b149d39fda990f437bcf799227f4630`  
		Last Modified: Wed, 14 Mar 2018 16:18:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe4c1aa86d7b7a4c4244b7f2f4e56f43af50fdf746139ec89732630b0c70bc96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256481937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf505dcfdf8d77d45f243fd7139949efd96741bda79ff69a9e7a23a41e5ca4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:38 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 05:14:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:14:17 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:14:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:14:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add559507ed05f8a9a9e30cd8868a6ef7d9d19295cb35fd44929f5d16281463`  
		Last Modified: Thu, 15 Mar 2018 05:17:42 GMT  
		Size: 102.5 MB (102478133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934158b556f80c9548884ce26221ec1fb66448357f30b451b0f37ea203e042`  
		Last Modified: Thu, 15 Mar 2018 05:16:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:826eee0133b83be38a83348d49a2f7035e943dd01051b5e2745ff1ab2f2f5e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283480944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead0749bad4e8d92a1a4b5b0532f64347bcc40e3c5fd4468a92cea4de9a4e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:48 GMT
ENV GOLANG_VERSION=1.10
# Thu, 29 Mar 2018 22:35:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:35:06 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:35:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:35:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84b81bdea95840637f19a6dc0c87ca3d61475a09d7c656aef0e4af9f76c3a9`  
		Last Modified: Thu, 29 Mar 2018 22:56:13 GMT  
		Size: 108.3 MB (108296539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b05fee454bc4cabb111e47adc71e0989335ab5600c91daee9fe9f4d94a01c`  
		Last Modified: Thu, 29 Mar 2018 22:55:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:d6f59c496067e875a25e108e15273fe9279ff5ee28064ec954127973433201b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264062743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35819e991ae75d84aaec9efd07ff5c2d2b264d2165d5f5159d5f26ee10561c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:31 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 09:29:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:29:07 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:29:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:29:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:29:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93191da9327d1999200956e20b769894e086d742d23bfbf72e2e4bb8f56238`  
		Last Modified: Thu, 15 Mar 2018 09:31:43 GMT  
		Size: 101.3 MB (101291818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350dfecadc8f99b012bcdf53c3d7e122c209d6e4487b50ea9c66445ddaf7059c`  
		Last Modified: Thu, 15 Mar 2018 09:30:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:2302e18de3b3165c098ddb7795c9ec1467a147f812149bf49cf0aca4cf91ccdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256979378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ed2021e7b6de3400c8d187fc209cbc71c629c4ef4954bc9208ca720ef647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:15 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 08:17:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:25 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de495ad8c2161cb5d2b52fee9744ebc2e2d8adc4073855b51275183bd3d1e21`  
		Last Modified: Wed, 14 Mar 2018 08:18:31 GMT  
		Size: 100.7 MB (100669986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a016b89872e057e449edfee3b2a0cecae3454155f7e626ec8a832edcb276d5`  
		Last Modified: Wed, 14 Mar 2018 08:18:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10`

```console
$ docker pull golang@sha256:ce70a7c27659bd714b63e7439ba0ae4a9f5a111fea16bd87575ddcfb0d0ef0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:1.10` - linux; amd64

```console
$ docker pull golang@sha256:0c4109858680d4cede075491298de88b5d3df24380c328f7be417d22282acb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288082461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d632bbfe57672c7fd240065c134fc396485a3acf04ec8baacfe1416e0c519d46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 04:57:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:57:33 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:57:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d5c68d1eb2883592bad93d3783537f6de3af29ebbd853fec09ce858c84b04`  
		Last Modified: Thu, 15 Mar 2018 04:58:53 GMT  
		Size: 119.9 MB (119925786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca93091ca51d8418a22f653756ff770e0052496e504ad1ec2d99bcdef710a7`  
		Last Modified: Thu, 15 Mar 2018 04:58:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; arm variant v7

```console
$ docker pull golang@sha256:7e4554b17f1b8da05062e167d0f95630e6d56aab51e99b8c80360c2318af553a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569ad906c2f0291321396c5a52318936cc6aa003a7e8462c9c614526ce64d738`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:49 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 16:17:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:07 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a82265f2433d4781cb5d6464d9e67dcdb3633ef248540f1c6b44baaf85f06`  
		Last Modified: Wed, 14 Mar 2018 16:18:35 GMT  
		Size: 103.0 MB (102996022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59883716fb60d91ae2f5e75796ffc4bd6b149d39fda990f437bcf799227f4630`  
		Last Modified: Wed, 14 Mar 2018 16:18:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe4c1aa86d7b7a4c4244b7f2f4e56f43af50fdf746139ec89732630b0c70bc96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256481937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf505dcfdf8d77d45f243fd7139949efd96741bda79ff69a9e7a23a41e5ca4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:38 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 05:14:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:14:17 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:14:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:14:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add559507ed05f8a9a9e30cd8868a6ef7d9d19295cb35fd44929f5d16281463`  
		Last Modified: Thu, 15 Mar 2018 05:17:42 GMT  
		Size: 102.5 MB (102478133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934158b556f80c9548884ce26221ec1fb66448357f30b451b0f37ea203e042`  
		Last Modified: Thu, 15 Mar 2018 05:16:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; 386

```console
$ docker pull golang@sha256:826eee0133b83be38a83348d49a2f7035e943dd01051b5e2745ff1ab2f2f5e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283480944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead0749bad4e8d92a1a4b5b0532f64347bcc40e3c5fd4468a92cea4de9a4e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:48 GMT
ENV GOLANG_VERSION=1.10
# Thu, 29 Mar 2018 22:35:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:35:06 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:35:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:35:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84b81bdea95840637f19a6dc0c87ca3d61475a09d7c656aef0e4af9f76c3a9`  
		Last Modified: Thu, 29 Mar 2018 22:56:13 GMT  
		Size: 108.3 MB (108296539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b05fee454bc4cabb111e47adc71e0989335ab5600c91daee9fe9f4d94a01c`  
		Last Modified: Thu, 29 Mar 2018 22:55:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; ppc64le

```console
$ docker pull golang@sha256:d6f59c496067e875a25e108e15273fe9279ff5ee28064ec954127973433201b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264062743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35819e991ae75d84aaec9efd07ff5c2d2b264d2165d5f5159d5f26ee10561c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:31 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 09:29:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:29:07 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:29:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:29:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:29:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93191da9327d1999200956e20b769894e086d742d23bfbf72e2e4bb8f56238`  
		Last Modified: Thu, 15 Mar 2018 09:31:43 GMT  
		Size: 101.3 MB (101291818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350dfecadc8f99b012bcdf53c3d7e122c209d6e4487b50ea9c66445ddaf7059c`  
		Last Modified: Thu, 15 Mar 2018 09:30:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; s390x

```console
$ docker pull golang@sha256:2302e18de3b3165c098ddb7795c9ec1467a147f812149bf49cf0aca4cf91ccdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256979378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ed2021e7b6de3400c8d187fc209cbc71c629c4ef4954bc9208ca720ef647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:15 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 08:17:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:25 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de495ad8c2161cb5d2b52fee9744ebc2e2d8adc4073855b51275183bd3d1e21`  
		Last Modified: Wed, 14 Mar 2018 08:18:31 GMT  
		Size: 100.7 MB (100669986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a016b89872e057e449edfee3b2a0cecae3454155f7e626ec8a832edcb276d5`  
		Last Modified: Wed, 14 Mar 2018 08:18:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1`

**does not exist** (yet?)

## `golang:1.10.1-alpine`

**does not exist** (yet?)

## `golang:1.10.1-alpine3.7`

**does not exist** (yet?)

## `golang:1.10.1-nanoserver`

**does not exist** (yet?)

## `golang:1.10.1-nanoserver-sac2016`

**does not exist** (yet?)

## `golang:1.10.1-stretch`

**does not exist** (yet?)

## `golang:1.10.1-windowsservercore`

**does not exist** (yet?)

## `golang:1.10.1-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.10.1-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.10-alpine`

```console
$ docker pull golang@sha256:3fb74d9a61403acd5f2ce02cdd6570467350b23fcdd191628d4fddaa6523be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.10-alpine` - linux; amd64

```console
$ docker pull golang@sha256:f336d17914ab059ea289f160783845f01ccdff61bb6407d2edb3b7fcd47c15da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115696394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85256d3905e24e6f8cc45bcf93bc5d56c2c0b030cea38693e85c7a78a61d652c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 21:02:53 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 21:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:19:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:19:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:19:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdfb30a4c890bfce4d6f045e585e99f3e8a326cdd6e619a274b01ff348f4e21`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6487ee6212c57a47feb500f1421c38a83cd1ab7def383ffc49804d9d56970cbb`  
		Last Modified: Sat, 17 Feb 2018 21:37:53 GMT  
		Size: 113.3 MB (113322227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074903419fc03f4af1fec141ee7e68396de714ef06f0a60b78b8f8c5e4dcc26f`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:154ba5757ea95844398d679a9fb3f8f246955cac4f77ea84e68bc9b8d10a1098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114240281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7673bd88bdc08c89ef06eaff2516a1d40b9a578e95c01c3b01b61c8e70e7356`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Mar 2018 09:46:22 GMT
ENV GOLANG_VERSION=1.10
# Tue, 27 Mar 2018 09:46:23 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 27 Mar 2018 10:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Mar 2018 10:03:11 GMT
ENV GOPATH=/go
# Tue, 27 Mar 2018 10:03:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Mar 2018 10:03:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Mar 2018 10:03:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b6d71460d7ec042be39de8fca521d36a1109437f0af70d2767a6058f0e117`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c921d57f5e2f016e2167fc4a7bec777ebe24541bfd9381915c0e653512e2cd0`  
		Last Modified: Tue, 27 Mar 2018 10:06:13 GMT  
		Size: 111.9 MB (111921270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338ed84881dd09427d9bb84f34ab8db49992156fa2d0cc7f8499a2595e75eae`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4ee08d87cb2d22c505ad83635b62e63804d986e8e31361efae03cd1bdfca36a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111362211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec883cdc26fdf25d76b6e03a0fa7e73a92467050f35f6f517f9f7efde53723c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 20:54:55 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:56 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 20:57:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:57:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:57:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8569aa5fa4d278f38f6cc0343e9466d5f72fe50fdf3b7b718188bbb79cfd85d9`  
		Last Modified: Sat, 17 Feb 2018 21:00:24 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa9d41ce1fa8f979262115f154b87d701f1ec2a2ded5f91c8cc4b7c43e40f7c`  
		Last Modified: Sat, 17 Feb 2018 21:01:06 GMT  
		Size: 109.1 MB (109064354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce6514b3ea0064acae9bacab64946f16e64276b4378cc6bd2d28ac9f61ed54`  
		Last Modified: Sat, 17 Feb 2018 21:00:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; 386

```console
$ docker pull golang@sha256:be2118ef7d91d3855c5f4a6ed6cafa0e9e28be3b6dcbf56d71a72880fffc569d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d705d7556809106cdec951c3b9820d0376e39be39ff4369b4df9be514a96363d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Mon, 19 Feb 2018 15:10:49 GMT
ENV GOLANG_VERSION=1.10
# Mon, 19 Feb 2018 15:10:49 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 19 Feb 2018 15:13:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 19 Feb 2018 15:30:35 GMT
ENV GOPATH=/go
# Mon, 19 Feb 2018 15:30:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 15:30:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Feb 2018 15:32:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ab06be1e1edba3a9c8b65859e1ea7385c1f103eed058df971ae9c6d98ed303`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e27e842ea724dac9c00da76e41789f3e259a744e9386c6eef52d9758b32577`  
		Last Modified: Mon, 19 Feb 2018 16:09:56 GMT  
		Size: 112.7 MB (112702782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb7c6137046a008c727d125a4fb90cd4a14d28cb70d5e1863c1cadb73060ba7`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:e0dc734ce45c634d01b9994c5c481c9833ae69b047b3f163261b790410382996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111454473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66ff6714cba6077295c3b6af8b42bf4ea6e24380eef311e27a8fb21bbdcaf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 16:51:19 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 16:51:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 16:53:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 16:53:18 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 16:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 16:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 16:53:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b77aacf4ed24ef40fa7e5db1a4c0d7e51125cbe7d934c60be31dcf4fbd0011a`  
		Last Modified: Sun, 18 Feb 2018 16:54:50 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74d1b937b0a39ea05756ae57c50b6c604f3db0ba6e448e57239a11ca0ac55d`  
		Last Modified: Sun, 18 Feb 2018 16:55:19 GMT  
		Size: 109.1 MB (109061555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31602a335ba1b71f6f6fe2a12036bc0085a70855d265a86350574eb9f5aea7`  
		Last Modified: Sun, 18 Feb 2018 16:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; s390x

```console
$ docker pull golang@sha256:670b02d9d1051a0a32ea9100279cd8411afd14646dd2dfb775a741d486079a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115574623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5c13129aadb1e6e785cc4f3fdc1cbb204454545538d69572ea32f66f44d093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 11:39:43 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 11:39:43 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 11:40:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 11:40:50 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 11:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 11:40:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 11:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32465a9f4c50ca5b3bb8ac8f77393a8f3f9e9f8fd7a44d01897c3f7d64b8e3eb`  
		Last Modified: Sun, 18 Feb 2018 11:41:51 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f96b78dc99274d26ecf83de0891db93ad2f6ad5be0f0b8d3f67a8427dba7d`  
		Last Modified: Sun, 18 Feb 2018 11:42:13 GMT  
		Size: 113.1 MB (113079446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebe6f3cc4ec80892821b67c7994f8b5b0fb9c85771d6a9a6a6a395bcb7cfa8`  
		Last Modified: Sun, 18 Feb 2018 11:41:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-alpine3.7`

```console
$ docker pull golang@sha256:3fb74d9a61403acd5f2ce02cdd6570467350b23fcdd191628d4fddaa6523be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.10-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:f336d17914ab059ea289f160783845f01ccdff61bb6407d2edb3b7fcd47c15da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115696394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85256d3905e24e6f8cc45bcf93bc5d56c2c0b030cea38693e85c7a78a61d652c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 21:02:53 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 21:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:19:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:19:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:19:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdfb30a4c890bfce4d6f045e585e99f3e8a326cdd6e619a274b01ff348f4e21`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6487ee6212c57a47feb500f1421c38a83cd1ab7def383ffc49804d9d56970cbb`  
		Last Modified: Sat, 17 Feb 2018 21:37:53 GMT  
		Size: 113.3 MB (113322227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074903419fc03f4af1fec141ee7e68396de714ef06f0a60b78b8f8c5e4dcc26f`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:154ba5757ea95844398d679a9fb3f8f246955cac4f77ea84e68bc9b8d10a1098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114240281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7673bd88bdc08c89ef06eaff2516a1d40b9a578e95c01c3b01b61c8e70e7356`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Mar 2018 09:46:22 GMT
ENV GOLANG_VERSION=1.10
# Tue, 27 Mar 2018 09:46:23 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 27 Mar 2018 10:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Mar 2018 10:03:11 GMT
ENV GOPATH=/go
# Tue, 27 Mar 2018 10:03:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Mar 2018 10:03:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Mar 2018 10:03:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b6d71460d7ec042be39de8fca521d36a1109437f0af70d2767a6058f0e117`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c921d57f5e2f016e2167fc4a7bec777ebe24541bfd9381915c0e653512e2cd0`  
		Last Modified: Tue, 27 Mar 2018 10:06:13 GMT  
		Size: 111.9 MB (111921270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338ed84881dd09427d9bb84f34ab8db49992156fa2d0cc7f8499a2595e75eae`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4ee08d87cb2d22c505ad83635b62e63804d986e8e31361efae03cd1bdfca36a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111362211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec883cdc26fdf25d76b6e03a0fa7e73a92467050f35f6f517f9f7efde53723c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 20:54:55 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:56 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 20:57:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:57:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:57:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8569aa5fa4d278f38f6cc0343e9466d5f72fe50fdf3b7b718188bbb79cfd85d9`  
		Last Modified: Sat, 17 Feb 2018 21:00:24 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa9d41ce1fa8f979262115f154b87d701f1ec2a2ded5f91c8cc4b7c43e40f7c`  
		Last Modified: Sat, 17 Feb 2018 21:01:06 GMT  
		Size: 109.1 MB (109064354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce6514b3ea0064acae9bacab64946f16e64276b4378cc6bd2d28ac9f61ed54`  
		Last Modified: Sat, 17 Feb 2018 21:00:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:be2118ef7d91d3855c5f4a6ed6cafa0e9e28be3b6dcbf56d71a72880fffc569d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d705d7556809106cdec951c3b9820d0376e39be39ff4369b4df9be514a96363d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Mon, 19 Feb 2018 15:10:49 GMT
ENV GOLANG_VERSION=1.10
# Mon, 19 Feb 2018 15:10:49 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 19 Feb 2018 15:13:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 19 Feb 2018 15:30:35 GMT
ENV GOPATH=/go
# Mon, 19 Feb 2018 15:30:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 15:30:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Feb 2018 15:32:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ab06be1e1edba3a9c8b65859e1ea7385c1f103eed058df971ae9c6d98ed303`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e27e842ea724dac9c00da76e41789f3e259a744e9386c6eef52d9758b32577`  
		Last Modified: Mon, 19 Feb 2018 16:09:56 GMT  
		Size: 112.7 MB (112702782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb7c6137046a008c727d125a4fb90cd4a14d28cb70d5e1863c1cadb73060ba7`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:e0dc734ce45c634d01b9994c5c481c9833ae69b047b3f163261b790410382996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111454473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66ff6714cba6077295c3b6af8b42bf4ea6e24380eef311e27a8fb21bbdcaf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 16:51:19 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 16:51:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 16:53:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 16:53:18 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 16:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 16:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 16:53:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b77aacf4ed24ef40fa7e5db1a4c0d7e51125cbe7d934c60be31dcf4fbd0011a`  
		Last Modified: Sun, 18 Feb 2018 16:54:50 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74d1b937b0a39ea05756ae57c50b6c604f3db0ba6e448e57239a11ca0ac55d`  
		Last Modified: Sun, 18 Feb 2018 16:55:19 GMT  
		Size: 109.1 MB (109061555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31602a335ba1b71f6f6fe2a12036bc0085a70855d265a86350574eb9f5aea7`  
		Last Modified: Sun, 18 Feb 2018 16:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:670b02d9d1051a0a32ea9100279cd8411afd14646dd2dfb775a741d486079a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115574623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5c13129aadb1e6e785cc4f3fdc1cbb204454545538d69572ea32f66f44d093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 11:39:43 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 11:39:43 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 11:40:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 11:40:50 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 11:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 11:40:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 11:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32465a9f4c50ca5b3bb8ac8f77393a8f3f9e9f8fd7a44d01897c3f7d64b8e3eb`  
		Last Modified: Sun, 18 Feb 2018 11:41:51 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f96b78dc99274d26ecf83de0891db93ad2f6ad5be0f0b8d3f67a8427dba7d`  
		Last Modified: Sun, 18 Feb 2018 11:42:13 GMT  
		Size: 113.1 MB (113079446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebe6f3cc4ec80892821b67c7994f8b5b0fb9c85771d6a9a6a6a395bcb7cfa8`  
		Last Modified: Sun, 18 Feb 2018 11:41:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver`

```console
$ docker pull golang@sha256:8581ac7c9f322872ba1dd69b694b1948e5903449577c790598e5fd9f9d4e1bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.10-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c2ac03a14673070343790a3c1e0fd68ddbb10e2578c52ab89372733049815065
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537937736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e9579d9e19c801d721b39f103beb4c5ad2ba69e91688f713c5edd36c7cbef3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 02:35:01 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 02:39:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 02:39:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23413c9b0ceedc4908fe2c1c7b205788a8eb2bc2553b5256005b9167012144df`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f586cc490369cf80d7997e1650c6344711df0775d63cf8db47252165749801f`  
		Last Modified: Wed, 14 Mar 2018 03:20:43 GMT  
		Size: 128.4 MB (128391412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe979190284e865fb5c9f3eebee9cb3d351aff71b41c66c667ffc3d552d425`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver-sac2016`

```console
$ docker pull golang@sha256:8581ac7c9f322872ba1dd69b694b1948e5903449577c790598e5fd9f9d4e1bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.10-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c2ac03a14673070343790a3c1e0fd68ddbb10e2578c52ab89372733049815065
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537937736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e9579d9e19c801d721b39f103beb4c5ad2ba69e91688f713c5edd36c7cbef3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 02:35:01 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 02:39:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 02:39:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23413c9b0ceedc4908fe2c1c7b205788a8eb2bc2553b5256005b9167012144df`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f586cc490369cf80d7997e1650c6344711df0775d63cf8db47252165749801f`  
		Last Modified: Wed, 14 Mar 2018 03:20:43 GMT  
		Size: 128.4 MB (128391412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe979190284e865fb5c9f3eebee9cb3d351aff71b41c66c667ffc3d552d425`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-stretch`

```console
$ docker pull golang@sha256:babf115fbc9c19d81735a70554a89b4eb07d0b871436b5b94a5090fec86b32f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.10-stretch` - linux; amd64

```console
$ docker pull golang@sha256:0c4109858680d4cede075491298de88b5d3df24380c328f7be417d22282acb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288082461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d632bbfe57672c7fd240065c134fc396485a3acf04ec8baacfe1416e0c519d46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 04:57:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:57:33 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:57:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d5c68d1eb2883592bad93d3783537f6de3af29ebbd853fec09ce858c84b04`  
		Last Modified: Thu, 15 Mar 2018 04:58:53 GMT  
		Size: 119.9 MB (119925786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca93091ca51d8418a22f653756ff770e0052496e504ad1ec2d99bcdef710a7`  
		Last Modified: Thu, 15 Mar 2018 04:58:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:7e4554b17f1b8da05062e167d0f95630e6d56aab51e99b8c80360c2318af553a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569ad906c2f0291321396c5a52318936cc6aa003a7e8462c9c614526ce64d738`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:49 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 16:17:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:07 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a82265f2433d4781cb5d6464d9e67dcdb3633ef248540f1c6b44baaf85f06`  
		Last Modified: Wed, 14 Mar 2018 16:18:35 GMT  
		Size: 103.0 MB (102996022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59883716fb60d91ae2f5e75796ffc4bd6b149d39fda990f437bcf799227f4630`  
		Last Modified: Wed, 14 Mar 2018 16:18:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe4c1aa86d7b7a4c4244b7f2f4e56f43af50fdf746139ec89732630b0c70bc96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256481937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf505dcfdf8d77d45f243fd7139949efd96741bda79ff69a9e7a23a41e5ca4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:38 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 05:14:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:14:17 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:14:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:14:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add559507ed05f8a9a9e30cd8868a6ef7d9d19295cb35fd44929f5d16281463`  
		Last Modified: Thu, 15 Mar 2018 05:17:42 GMT  
		Size: 102.5 MB (102478133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934158b556f80c9548884ce26221ec1fb66448357f30b451b0f37ea203e042`  
		Last Modified: Thu, 15 Mar 2018 05:16:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; 386

```console
$ docker pull golang@sha256:826eee0133b83be38a83348d49a2f7035e943dd01051b5e2745ff1ab2f2f5e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283480944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead0749bad4e8d92a1a4b5b0532f64347bcc40e3c5fd4468a92cea4de9a4e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:48 GMT
ENV GOLANG_VERSION=1.10
# Thu, 29 Mar 2018 22:35:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:35:06 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:35:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:35:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84b81bdea95840637f19a6dc0c87ca3d61475a09d7c656aef0e4af9f76c3a9`  
		Last Modified: Thu, 29 Mar 2018 22:56:13 GMT  
		Size: 108.3 MB (108296539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b05fee454bc4cabb111e47adc71e0989335ab5600c91daee9fe9f4d94a01c`  
		Last Modified: Thu, 29 Mar 2018 22:55:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d6f59c496067e875a25e108e15273fe9279ff5ee28064ec954127973433201b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264062743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35819e991ae75d84aaec9efd07ff5c2d2b264d2165d5f5159d5f26ee10561c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:31 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 09:29:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:29:07 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:29:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:29:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:29:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93191da9327d1999200956e20b769894e086d742d23bfbf72e2e4bb8f56238`  
		Last Modified: Thu, 15 Mar 2018 09:31:43 GMT  
		Size: 101.3 MB (101291818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350dfecadc8f99b012bcdf53c3d7e122c209d6e4487b50ea9c66445ddaf7059c`  
		Last Modified: Thu, 15 Mar 2018 09:30:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; s390x

```console
$ docker pull golang@sha256:2302e18de3b3165c098ddb7795c9ec1467a147f812149bf49cf0aca4cf91ccdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256979378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ed2021e7b6de3400c8d187fc209cbc71c629c4ef4954bc9208ca720ef647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:15 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 08:17:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:25 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de495ad8c2161cb5d2b52fee9744ebc2e2d8adc4073855b51275183bd3d1e21`  
		Last Modified: Wed, 14 Mar 2018 08:18:31 GMT  
		Size: 100.7 MB (100669986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a016b89872e057e449edfee3b2a0cecae3454155f7e626ec8a832edcb276d5`  
		Last Modified: Wed, 14 Mar 2018 08:18:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore`

```console
$ docker pull golang@sha256:f73e06dcbcf9fca45867d951ce0da8b6d9bcff94d41ff38f117c2dbe0251ad7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:1.10-windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-windowsservercore` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore-1709`

```console
$ docker pull golang@sha256:d53e6a7d90efaf2a1ff102345185ba603b07aae5b847ee1cd9be889a08fd1c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `golang:1.10-windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:fbaa2deef1c92ea228745852bf562c0475937fb448976fe0b1c2bdd398fc12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1.10-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9`

```console
$ docker pull golang@sha256:332a39d7995bc6770e70cc9c48bae1e5724d91f88c62856ffe3b32f64419622d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:1.9` - linux; amd64

```console
$ docker pull golang@sha256:f5e77237ecef9f6394aafa9dd6018151001de94ec8ea98ed9afc998c7d299736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273759913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c306bd0b2fde84742e0eaf53225076b7f9fb12b51bb089baf68b41cf50566c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:54 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Mar 2018 04:58:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:58:04 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:58:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:58:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:58:05 GMT
WORKDIR /go
# Thu, 15 Mar 2018 04:58:06 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c503a785f6fd8c959aba671c6e5169d8096618326a2605e31434df24d51fd9c0`  
		Last Modified: Thu, 15 Mar 2018 05:00:22 GMT  
		Size: 105.6 MB (105601870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f90e5cd37cc21a57ccd64145a83a7a920dd4a046a47dece8b29ae2e59dd7faa`  
		Last Modified: Thu, 15 Mar 2018 05:00:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e848f75f6b281aad9ec47829be375fd16cc5a74427a79f2ff9534bb1acd3bc3`  
		Last Modified: Thu, 15 Mar 2018 05:00:06 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:26e1cd04a7a0fa9bf5acf1604775a0459c4cf7003edef4acfb6742c2b7b3367f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238843959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba8d01a7dcfd1bc724fefdc87b88725d1a7048c61fa324fd59bd997a73037ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:25 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Mar 2018 16:17:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:42 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:44 GMT
WORKDIR /go
# Wed, 14 Mar 2018 16:17:44 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369f691657f3df5d550e263459f2579462a8a9de3bc5f0959cba38c3712468ce`  
		Last Modified: Wed, 14 Mar 2018 16:19:48 GMT  
		Size: 91.0 MB (91007489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453516bc46709b344368916e2da1d2427499368ad15deca74abcb47a38f0abbc`  
		Last Modified: Wed, 14 Mar 2018 16:19:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf59a23e201e648641b1b4af52b7491a1aa511075ffc06f59f2cd42b7c11aa7`  
		Last Modified: Wed, 14 Mar 2018 16:19:22 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:42d3322bc5b7424e87306f28ff89a7300085e2ab7440d8cf177f385bcb183bc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243613579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae423d3e39c9a70552ea1fbc25f14022402018b5a7c21b5f232a94ddadac6afd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:15:06 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Mar 2018 05:15:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:15:40 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:15:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:15:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:15:45 GMT
WORKDIR /go
# Thu, 15 Mar 2018 05:15:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee43b910283583a997ac43390456e1d1585f026b5d94964dfc72d8b27b988b7`  
		Last Modified: Thu, 15 Mar 2018 05:19:35 GMT  
		Size: 89.6 MB (89608406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd859c4ab64305c862a7b0881750eb1cabb11052af1bee4d9b04de283d9eb3`  
		Last Modified: Thu, 15 Mar 2018 05:19:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c2f51232a4b9c8d330a9909881bc49649dbb2ea06476ff889402f241a109d`  
		Last Modified: Thu, 15 Mar 2018 05:19:02 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:6be251b139857c61a7aa07e83754a1b5093f1c61e697a27fb6b264a9083060cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268448059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a698d82fd6dc263c4265e5d27c5f8733144292b53fd15f3a22b57f3afb8ba808`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:48:02 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 29 Mar 2018 22:48:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:48:19 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:48:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:48:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:48:20 GMT
WORKDIR /go
# Thu, 29 Mar 2018 22:48:21 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9e7d9b9256cd4f992b7c1b763ba2f5325232577096b019ee1d80829e85ecb`  
		Last Modified: Thu, 29 Mar 2018 23:17:10 GMT  
		Size: 93.3 MB (93262287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b8601d43a5d73577da9503a9ddd631eb44eaada086c8549dd07c9f5aaabf3e`  
		Last Modified: Thu, 29 Mar 2018 23:16:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24009a81c7f83651bed4abb094f349a302be9fe8dce263f84d11ff7ef1d2b9c9`  
		Last Modified: Thu, 29 Mar 2018 23:16:44 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; ppc64le

```console
$ docker pull golang@sha256:55ebb54534ebbeca302f943525233efc766959ad32fc893f6884375e555b1ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251895193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6882758881e11945431f6d55ea54a5a2ede58ada1b0e4ece502d986d3f2fdb3f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:29:38 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Mar 2018 09:30:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:30:03 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:30:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:30:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:30:13 GMT
WORKDIR /go
# Thu, 15 Mar 2018 09:30:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff123e8d8834e7a034fc1ba3744a76ce8f7c67895ebdfa1337ddd249b2144a`  
		Last Modified: Thu, 15 Mar 2018 09:33:06 GMT  
		Size: 89.1 MB (89122902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8411255ca3479206a1cbc59236f111db7bd07783f3a08e37f3c748bbf7e29a2c`  
		Last Modified: Thu, 15 Mar 2018 09:32:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff26d1f253e2be6636a8135d44395896d970a9bc45ee70fe8958d85184b61`  
		Last Modified: Thu, 15 Mar 2018 09:32:29 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; s390x

```console
$ docker pull golang@sha256:ec40ac927204dbb563530bb511feb0b95e3ff0f43f3844df7e093cd04f92b6c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245082293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53e13ed7d0374566601a39961206a1a86c02a44f9582e72bc3f355c12500b46`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:40 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Mar 2018 08:17:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:49 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:50 GMT
WORKDIR /go
# Wed, 14 Mar 2018 08:17:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa080bffba84359cb0421529ccd773a93ef85e287a489dd982c0a25ca04bd876`  
		Last Modified: Wed, 14 Mar 2018 08:19:09 GMT  
		Size: 88.8 MB (88771535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031b7330a79500e051ff421609cd78197c845a05112ca0272d8f6fd727edac2`  
		Last Modified: Wed, 14 Mar 2018 08:18:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e315c108346037ad738b55a80a938055f5ff8d03bd62ffc72615e9688bc7bde`  
		Last Modified: Wed, 14 Mar 2018 08:18:53 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:ca81ae85b9d28a69010ca2a8d309b7cfec60b44cbab0fb735d78aa6fa0042b42
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5531992619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2faa933bf49e02d465e7ecaa55a4f2c84b0bcc565ac087a7d50d778e40d28a5a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 03:47:01 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:00:53 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:00:56 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db8cdf5fa0b2d8f5e19d96fd41359f4427f71da6b5177f6b69615c0ef1d7a85`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c821b39e288ba3e4e6db1a0ff34b294b221b6aa09a2b8bdcfea9bd215b7a5`  
		Last Modified: Wed, 14 Feb 2018 04:50:58 GMT  
		Size: 116.2 MB (116178605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be8d97356a1a809f20bf4bd3a22ed153af7bff498e8ed74e95006f01c645ae5`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:9e30f085c4ea21389f86a052407e81c687772deece4318980ec31e4a64844ac7
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3160483854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab8b4dd6bb255689ab42c94c7089a18c174c7f88727730dd13c9b71431aa5ac`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 04:01:12 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:05:52 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:05:54 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a393a09e7a5791befae4ba45ac36b7783e4418c725f0cd7aa6db17eda1e1b0f0`  
		Last Modified: Wed, 14 Feb 2018 04:51:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f052e89efbf5d058139fceefd80be364d729cab6c282af6916e45e93abbead`  
		Last Modified: Wed, 14 Feb 2018 04:52:25 GMT  
		Size: 111.4 MB (111410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6af66d21f751be3300812aa162c9141aa5713a57418f2a816f80d62cc85829`  
		Last Modified: Wed, 14 Feb 2018 04:51:16 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5`

**does not exist** (yet?)

## `golang:1.9.5-alpine`

**does not exist** (yet?)

## `golang:1.9.5-alpine3.6`

**does not exist** (yet?)

## `golang:1.9.5-alpine3.7`

**does not exist** (yet?)

## `golang:1.9.5-nanoserver`

**does not exist** (yet?)

## `golang:1.9.5-nanoserver-sac2016`

**does not exist** (yet?)

## `golang:1.9.5-stretch`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:ab72eb6db0eda32d429becf8bb28f62081821cc1aa2d49430344083f87b1e6a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:b6b691076970ddc03ba764f478c468ed0bb9abac748b4e0880497bb44b8df285
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82628101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f345e387a39ea8811c8039c7a0d19b98f3b7ec1e5a14e40f6d46d778b67111`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 01:35:47 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 01:35:47 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 01:36:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 01:45:07 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 01:45:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 01:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 01:45:09 GMT
WORKDIR /go
# Thu, 08 Feb 2018 01:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e3a151260390757123b4bfe7b111ec64bb0a90cdff5f1d311351af87c80c3f`  
		Last Modified: Tue, 09 Jan 2018 23:06:07 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c84e3e4a1a38a0069246a1060b55a9beecb7b346e5fd52c9c50ebc54eb61866`  
		Last Modified: Thu, 08 Feb 2018 02:33:20 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71af08823d790a677c98f52af8eaf477e203e491a7269fd14cd3611fa092aa21`  
		Last Modified: Thu, 08 Feb 2018 02:33:45 GMT  
		Size: 80.3 MB (80282763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b0d47bcf8bfe90db366621bb4e202222dd59f7ad26b33dffb3f5b3456ea9b9`  
		Last Modified: Thu, 08 Feb 2018 02:33:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f32f99403e0cbb962127b1b5029b45d11cf3ce804e23e2d3ebe38c62cb627`  
		Last Modified: Thu, 08 Feb 2018 02:33:20 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:ee4b9fb4280eca306a67bd95037c2121340746352df386e121c870922b435a53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80396628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4601a2c49c716f2b8dfc654945c75cafa43fc53e48cb1b239683cef62adec932`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 02 Mar 2018 11:14:53 GMT
ENV GOLANG_VERSION=1.9.4
# Fri, 02 Mar 2018 11:14:54 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 02 Mar 2018 11:28:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 02 Mar 2018 11:28:10 GMT
ENV GOPATH=/go
# Fri, 02 Mar 2018 11:28:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Mar 2018 11:28:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 02 Mar 2018 11:28:15 GMT
WORKDIR /go
# Fri, 02 Mar 2018 11:28:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d69769c775387d8972a2bab7d7dba2850af030bd40f8d33a9fd17938b9eb35`  
		Last Modified: Fri, 02 Mar 2018 11:34:05 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb1d9dc87454e7be534800064c205b9b77ba7ec7d52cdc807263df949e5dd5`  
		Last Modified: Fri, 02 Mar 2018 11:35:46 GMT  
		Size: 78.1 MB (78075631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c084ba35eeeb5b5f1598d9e69ff002243b8f0458c5eb6cf4487397a089d69a3`  
		Last Modified: Fri, 02 Mar 2018 11:34:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec8a3066b8b657bb2bacdba7ae6176f1900735dae4989e67c3b2349d53bc9f8`  
		Last Modified: Fri, 02 Mar 2018 11:34:05 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:24eb47630dad408efcaccfd718aaa0206bd2e27aab78cce3ed44d3069231d325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78748014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f11eee2641ba2bbaf42d35ea2c16f72c119e548b06682d7b6651812a01083`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 21:00:49 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 21:00:49 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 21:02:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 21:02:48 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 21:02:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 21:02:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 21:02:50 GMT
WORKDIR /go
# Thu, 08 Feb 2018 21:02:51 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5696068ca00033ad589dc52ca2296e128295d0de599b62f4a12259e009b8cf`  
		Last Modified: Thu, 08 Feb 2018 21:13:06 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666ff3d0b3b4191e96820131dbcf95c6f0a4a5b8cb56c92573e5dbd3b42a35eb`  
		Last Modified: Thu, 08 Feb 2018 21:13:36 GMT  
		Size: 76.5 MB (76478996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e692731fd174764cb136fc898ca90d0162afc8ee14b2e4d465c8a379687ba`  
		Last Modified: Thu, 08 Feb 2018 21:13:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52700445ec887044a5f28f3d2feb4387fd3c5500ace8e97f93caa05bf1424b4`  
		Last Modified: Thu, 08 Feb 2018 21:13:06 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; 386

```console
$ docker pull golang@sha256:e53d5936fd0097da78819a187dea604876cce3fab3801677b15b501a224c93ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81354860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc084223bcd5288df8d204f7e2eaa4792d4d1a81e48a8b731de893671bdd04`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 12:05:33 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 12:05:33 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 12:07:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 12:18:57 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 12:18:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 12:18:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 12:18:58 GMT
WORKDIR /go
# Thu, 08 Feb 2018 12:18:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1645e2e4933650083b673f475fd53e26de40a2bb1ba11b1649841c8b978aed`  
		Last Modified: Thu, 08 Feb 2018 14:20:21 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cc2aacb591108349bcaaf551a8d76cfabaa9de877b3e155fda9970ee27543b`  
		Last Modified: Thu, 08 Feb 2018 14:21:01 GMT  
		Size: 79.0 MB (78954379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eae921c9f2f52057104f016eba8dc630a197cf7d1306414e49d7b5f1bd6b9e4`  
		Last Modified: Thu, 08 Feb 2018 14:20:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a34ccc130895024de9974b1b488cefc0817b5aad49e613abadb9cb8887c719`  
		Last Modified: Thu, 08 Feb 2018 14:20:21 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f466ee3c3132bdb8ccb9d7b99d6a38064ebd71fdbafb96992a6468c60c3d6fc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78303569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3807e7b63834a18d26b562cae29fb978d8397691ce2f2b71ece15a7f589316b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 16:57:03 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 16:57:11 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 16:58:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 16:58:43 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 16:58:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 16:58:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 16:58:49 GMT
WORKDIR /go
# Thu, 08 Feb 2018 16:58:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96088e01608b7d81639533604157b77c2b93591adfb58382e25eb114e382b50`  
		Last Modified: Thu, 08 Feb 2018 17:06:48 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eb9bbb333ee89b913d330243e29c034bb983dd75b3f5f76e74d2b01e63fcd5`  
		Last Modified: Thu, 08 Feb 2018 17:07:09 GMT  
		Size: 75.9 MB (75937918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7bea070c6185861dba534a2b2b31f4ffec437c21bc12d361e603bfe682382f`  
		Last Modified: Thu, 08 Feb 2018 17:06:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c831d68c1ca3fa124e227cf1e1e59ad63b9e12fae0a4243e596d8062dc207b3c`  
		Last Modified: Thu, 08 Feb 2018 17:06:47 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; s390x

```console
$ docker pull golang@sha256:d6d770dc15e2cc4acb9537ec2c550fbe3a6934484962359a8e9b2c8ce4cf5ef6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82318319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c8f2e674ffd8b483b28920f36b3926e3b80163804bb588ad1041b938352bdf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 11:43:34 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 11:43:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 11:45:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:45:01 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:45:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:45:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:45:02 GMT
WORKDIR /go
# Thu, 08 Feb 2018 11:45:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb569169d3cffd2b0bafb3acfc5268f3f58d7cd8b43f286c8ed8b8a475731d4d`  
		Last Modified: Thu, 08 Feb 2018 11:49:53 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34e59673fd2fc769bfdbbdf58519f3f230ba331c295570ff8a094d22e43d735`  
		Last Modified: Thu, 08 Feb 2018 11:50:11 GMT  
		Size: 79.9 MB (79897569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba7e6770b184746914a977c99a519d0a85c6726603d274c591f8047b5576069`  
		Last Modified: Thu, 08 Feb 2018 11:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65cdc9443db8e490131f3d61f4f51a7c723403587309f5d5011d74a48a19ab7`  
		Last Modified: Thu, 08 Feb 2018 11:49:53 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:ab72eb6db0eda32d429becf8bb28f62081821cc1aa2d49430344083f87b1e6a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:b6b691076970ddc03ba764f478c468ed0bb9abac748b4e0880497bb44b8df285
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82628101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f345e387a39ea8811c8039c7a0d19b98f3b7ec1e5a14e40f6d46d778b67111`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 01:35:47 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 01:35:47 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 01:36:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 01:45:07 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 01:45:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 01:45:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 01:45:09 GMT
WORKDIR /go
# Thu, 08 Feb 2018 01:45:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e3a151260390757123b4bfe7b111ec64bb0a90cdff5f1d311351af87c80c3f`  
		Last Modified: Tue, 09 Jan 2018 23:06:07 GMT  
		Size: 351.0 KB (350993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c84e3e4a1a38a0069246a1060b55a9beecb7b346e5fd52c9c50ebc54eb61866`  
		Last Modified: Thu, 08 Feb 2018 02:33:20 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71af08823d790a677c98f52af8eaf477e203e491a7269fd14cd3611fa092aa21`  
		Last Modified: Thu, 08 Feb 2018 02:33:45 GMT  
		Size: 80.3 MB (80282763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b0d47bcf8bfe90db366621bb4e202222dd59f7ad26b33dffb3f5b3456ea9b9`  
		Last Modified: Thu, 08 Feb 2018 02:33:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042f32f99403e0cbb962127b1b5029b45d11cf3ce804e23e2d3ebe38c62cb627`  
		Last Modified: Thu, 08 Feb 2018 02:33:20 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:ee4b9fb4280eca306a67bd95037c2121340746352df386e121c870922b435a53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80396628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4601a2c49c716f2b8dfc654945c75cafa43fc53e48cb1b239683cef62adec932`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 02 Mar 2018 11:14:53 GMT
ENV GOLANG_VERSION=1.9.4
# Fri, 02 Mar 2018 11:14:54 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 02 Mar 2018 11:28:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 02 Mar 2018 11:28:10 GMT
ENV GOPATH=/go
# Fri, 02 Mar 2018 11:28:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Mar 2018 11:28:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 02 Mar 2018 11:28:15 GMT
WORKDIR /go
# Fri, 02 Mar 2018 11:28:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d69769c775387d8972a2bab7d7dba2850af030bd40f8d33a9fd17938b9eb35`  
		Last Modified: Fri, 02 Mar 2018 11:34:05 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecb1d9dc87454e7be534800064c205b9b77ba7ec7d52cdc807263df949e5dd5`  
		Last Modified: Fri, 02 Mar 2018 11:35:46 GMT  
		Size: 78.1 MB (78075631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c084ba35eeeb5b5f1598d9e69ff002243b8f0458c5eb6cf4487397a089d69a3`  
		Last Modified: Fri, 02 Mar 2018 11:34:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec8a3066b8b657bb2bacdba7ae6176f1900735dae4989e67c3b2349d53bc9f8`  
		Last Modified: Fri, 02 Mar 2018 11:34:05 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:24eb47630dad408efcaccfd718aaa0206bd2e27aab78cce3ed44d3069231d325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78748014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f11eee2641ba2bbaf42d35ea2c16f72c119e548b06682d7b6651812a01083`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:31 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 21:00:49 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 21:00:49 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 21:02:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 21:02:48 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 21:02:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 21:02:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 21:02:50 GMT
WORKDIR /go
# Thu, 08 Feb 2018 21:02:51 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4abafc8fec4957ac2f07fd158383a3c5e24e4ef13e41e50cb46cbf645f39ba4`  
		Last Modified: Thu, 26 Oct 2017 05:19:07 GMT  
		Size: 351.5 KB (351498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5696068ca00033ad589dc52ca2296e128295d0de599b62f4a12259e009b8cf`  
		Last Modified: Thu, 08 Feb 2018 21:13:06 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666ff3d0b3b4191e96820131dbcf95c6f0a4a5b8cb56c92573e5dbd3b42a35eb`  
		Last Modified: Thu, 08 Feb 2018 21:13:36 GMT  
		Size: 76.5 MB (76478996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e692731fd174764cb136fc898ca90d0162afc8ee14b2e4d465c8a379687ba`  
		Last Modified: Thu, 08 Feb 2018 21:13:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52700445ec887044a5f28f3d2feb4387fd3c5500ace8e97f93caa05bf1424b4`  
		Last Modified: Thu, 08 Feb 2018 21:13:06 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:e53d5936fd0097da78819a187dea604876cce3fab3801677b15b501a224c93ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81354860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fc084223bcd5288df8d204f7e2eaa4792d4d1a81e48a8b731de893671bdd04`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:18:08 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 12:05:33 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 12:05:33 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 12:07:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 12:18:57 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 12:18:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 12:18:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 12:18:58 GMT
WORKDIR /go
# Thu, 08 Feb 2018 12:18:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27af2e202a36be2346ec05891a6ee919bb4982bc0f6a244c0a28877d60b59aef`  
		Last Modified: Thu, 26 Oct 2017 05:28:54 GMT  
		Size: 352.1 KB (352102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1645e2e4933650083b673f475fd53e26de40a2bb1ba11b1649841c8b978aed`  
		Last Modified: Thu, 08 Feb 2018 14:20:21 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cc2aacb591108349bcaaf551a8d76cfabaa9de877b3e155fda9970ee27543b`  
		Last Modified: Thu, 08 Feb 2018 14:21:01 GMT  
		Size: 79.0 MB (78954379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eae921c9f2f52057104f016eba8dc630a197cf7d1306414e49d7b5f1bd6b9e4`  
		Last Modified: Thu, 08 Feb 2018 14:20:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a34ccc130895024de9974b1b488cefc0817b5aad49e613abadb9cb8887c719`  
		Last Modified: Thu, 08 Feb 2018 14:20:21 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:f466ee3c3132bdb8ccb9d7b99d6a38064ebd71fdbafb96992a6468c60c3d6fc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78303569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3807e7b63834a18d26b562cae29fb978d8397691ce2f2b71ece15a7f589316b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:11 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 16:57:03 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 16:57:11 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 16:58:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 16:58:43 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 16:58:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 16:58:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 16:58:49 GMT
WORKDIR /go
# Thu, 08 Feb 2018 16:58:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f951deb4811ff8645fd7ee79028995182b6f92402d4390019384cb16bc269c`  
		Last Modified: Thu, 26 Oct 2017 05:18:07 GMT  
		Size: 354.2 KB (354242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96088e01608b7d81639533604157b77c2b93591adfb58382e25eb114e382b50`  
		Last Modified: Thu, 08 Feb 2018 17:06:48 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eb9bbb333ee89b913d330243e29c034bb983dd75b3f5f76e74d2b01e63fcd5`  
		Last Modified: Thu, 08 Feb 2018 17:07:09 GMT  
		Size: 75.9 MB (75937918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7bea070c6185861dba534a2b2b31f4ffec437c21bc12d361e603bfe682382f`  
		Last Modified: Thu, 08 Feb 2018 17:06:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c831d68c1ca3fa124e227cf1e1e59ad63b9e12fae0a4243e596d8062dc207b3c`  
		Last Modified: Thu, 08 Feb 2018 17:06:47 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:d6d770dc15e2cc4acb9537ec2c550fbe3a6934484962359a8e9b2c8ce4cf5ef6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82318319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c8f2e674ffd8b483b28920f36b3926e3b80163804bb588ad1041b938352bdf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:14:09 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 11:43:34 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 11:43:35 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 11:45:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:45:01 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:45:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:45:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:45:02 GMT
WORKDIR /go
# Thu, 08 Feb 2018 11:45:02 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1017b3e1def54de794c0570a5e15d42d1ad5ff41ceb5878918137823395886`  
		Last Modified: Thu, 26 Oct 2017 05:16:32 GMT  
		Size: 352.5 KB (352516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb569169d3cffd2b0bafb3acfc5268f3f58d7cd8b43f286c8ed8b8a475731d4d`  
		Last Modified: Thu, 08 Feb 2018 11:49:53 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34e59673fd2fc769bfdbbdf58519f3f230ba331c295570ff8a094d22e43d735`  
		Last Modified: Thu, 08 Feb 2018 11:50:11 GMT  
		Size: 79.9 MB (79897569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba7e6770b184746914a977c99a519d0a85c6726603d274c591f8047b5576069`  
		Last Modified: Thu, 08 Feb 2018 11:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65cdc9443db8e490131f3d61f4f51a7c723403587309f5d5011d74a48a19ab7`  
		Last Modified: Thu, 08 Feb 2018 11:49:53 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.7`

```console
$ docker pull golang@sha256:566ec2d92f3f2ac0a83b941bacff33a2d3a7d98eddcbc288ada912be969cd5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:6c542ee4f818338ac6b3347b59189a002b4796a5069729e2fae7201e12042231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82634787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6e10bf973b841879e08f77bbc2d2cc4972828c6d5139bdb2c5da93bf8c8937`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 01:20:01 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 01:20:02 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 01:21:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 01:21:07 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 01:21:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 01:21:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 01:21:08 GMT
WORKDIR /go
# Thu, 08 Feb 2018 01:21:09 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e338747c3cafa85cbfc152e6acb53b135fca08b4d9ea3dcff3f24769acefd04`  
		Last Modified: Thu, 08 Feb 2018 02:31:20 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a75aa9cb0c358016b8e4090906642c595b1e4da9d31a2f3c4b76b9386c3791d`  
		Last Modified: Thu, 08 Feb 2018 02:31:45 GMT  
		Size: 80.3 MB (80258639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7cfbabfc25b7589ff025f600e2164ff382d79b4ebbcdfb83a125f656c6fc39`  
		Last Modified: Thu, 08 Feb 2018 02:31:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b7df8cdce79ee391c74e5bf912762f15be3735848a4b65a3d15b2e584d74c3`  
		Last Modified: Thu, 08 Feb 2018 02:31:19 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:6a5d495aa13574d7fa2b5e19fc9f138fa277c183aeb7a941c674e7b396c3e16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79762064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55db487532f176e59ca4b93577015ef345d1c04fccc42867ad9b03b4bd6581a2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 10:46:36 GMT
RUN apk add --no-cache ca-certificates
# Fri, 02 Mar 2018 11:02:28 GMT
ENV GOLANG_VERSION=1.9.4
# Fri, 02 Mar 2018 11:02:30 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 02 Mar 2018 11:14:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 02 Mar 2018 11:14:21 GMT
ENV GOPATH=/go
# Fri, 02 Mar 2018 11:14:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Mar 2018 11:14:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 02 Mar 2018 11:14:27 GMT
WORKDIR /go
# Fri, 02 Mar 2018 11:14:28 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7640e8c51dcd0f620daede5c40f80239a094fba073e3d447a245147e8944bdc1`  
		Last Modified: Fri, 02 Mar 2018 11:28:38 GMT  
		Size: 308.8 KB (308792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca7b866e1214eb3730c8a86403cf1477516178e5a61ab9695fd38b94e5ce4e4`  
		Last Modified: Fri, 02 Mar 2018 11:32:02 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d612f80b02462eecb000bd11362a4695e52aa3f8c770b3d5951bb25940fa787`  
		Last Modified: Fri, 02 Mar 2018 11:33:50 GMT  
		Size: 77.4 MB (77412135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d312235d5c1e02e6c7ecfe8145c57e9a7520f2b1e3207958f0a35cf8f7e12`  
		Last Modified: Fri, 02 Mar 2018 11:32:02 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50549b6e88102ba11cccd801dff4340fd40e95f42e0ba0f081f1d79e761be921`  
		Last Modified: Fri, 02 Mar 2018 11:32:02 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:d17e39f48a1ba5c2bb97f1198a370253d1e67a42c87bd1056d864dd6b0a3f463
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78168156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e7e1435eb52d14bbe96a8536ad086cd35dd2ac7598c6884cdaaf1e6ab797cf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 20:58:56 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 20:58:56 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 21:00:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 21:00:29 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 21:00:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 21:00:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 21:00:31 GMT
WORKDIR /go
# Thu, 08 Feb 2018 21:00:32 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ad570abfc789b9e50e53f47433a29fd77278e10374110e790d5fa83af78cb0`  
		Last Modified: Thu, 08 Feb 2018 21:11:46 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92872e87e788edeafe2207167da27d1abf809017626708547cc4bad83f01c98`  
		Last Modified: Thu, 08 Feb 2018 21:12:17 GMT  
		Size: 75.9 MB (75868314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deac5a272d2cc1bea770a4212e3f2a4aa0ed15b3837367f24d24e2c11b5a60a0`  
		Last Modified: Thu, 08 Feb 2018 21:11:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d14557ae9a81c04535caa514b65fec5b3c37517f7abc320334a59d7a6d18be3`  
		Last Modified: Thu, 08 Feb 2018 21:11:46 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:5d3a1d62735515d65d272eb75e8d54fe326c7087d0339451d49cd15c3f6cb24f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80789394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f59e6980fa371cf43f7ba470e7d01f5e7cf641b874535a4ef296672a6535907`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 11:46:36 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 11:46:36 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 11:48:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:57:57 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:57:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:57:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:57:59 GMT
WORKDIR /go
# Thu, 08 Feb 2018 11:57:59 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a92397a9b9d507e8913e354c4f658d09fd86caa2cb8a3e670b6a3455e8c33d`  
		Last Modified: Thu, 08 Feb 2018 14:01:44 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee0873af4d572d1ef8d8fcb1699ecde3619076a92dc03be8bf12c705bbbf1fa`  
		Last Modified: Thu, 08 Feb 2018 14:02:25 GMT  
		Size: 78.4 MB (78351649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5978e415d1edbb62cf99702f1748844280528493118affc99fe4c5e0e97fbd`  
		Last Modified: Thu, 08 Feb 2018 14:01:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534d234b41ae7df7d7d9178df572838a7e26cd5b29f9a73d5e0be520b3c22ce`  
		Last Modified: Thu, 08 Feb 2018 14:01:44 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:7ceb6720be702ef9127f05be2f69724438138566338a842c03fec30f997a8a91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77279303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23dd3507f9369a543a857ae172ccfadd9acffdb16f508b3fa60ff5d9885e9209`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 16:55:04 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 16:55:06 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 16:56:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 16:56:33 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 16:56:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 16:56:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 16:56:38 GMT
WORKDIR /go
# Thu, 08 Feb 2018 16:56:41 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71daf0727b5bcff7f94d82d24c5663d33704d0510a02aceaf1117e634a01a46`  
		Last Modified: Thu, 08 Feb 2018 17:06:02 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d169915450f61c1615277b196b77874c30d68757ea5633921ac8509ff261f80`  
		Last Modified: Thu, 08 Feb 2018 17:06:21 GMT  
		Size: 74.9 MB (74884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab2877f85917b6279d7a1e469e70901022586d8986a966a20cadf9a3b77a995`  
		Last Modified: Thu, 08 Feb 2018 17:06:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6212d04f9a0197323a0f857a334fc8003f295e3d4f32b5270879aa2e3ce56d7`  
		Last Modified: Thu, 08 Feb 2018 17:06:01 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:277e36a04092d5a69439ac88a9fe55e8d048bb8b2ecfc28379bff4101f09625f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81537728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2068d9070ddf170ef77442221e7303710323174593204c24cfb8328403fdbde`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 11:42:19 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 11:42:20 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Thu, 08 Feb 2018 11:43:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:43:28 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:43:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:43:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:43:29 GMT
WORKDIR /go
# Thu, 08 Feb 2018 11:43:29 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0424b634c75a14906eadc911e3ea71e9359b1ffec2acebd3b234134130845790`  
		Last Modified: Thu, 08 Feb 2018 11:49:23 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021ed90ee0db272149b5110abae4dea5558d0ccba321c831e7b52cac16f5cc87`  
		Last Modified: Thu, 08 Feb 2018 11:49:39 GMT  
		Size: 79.0 MB (79040571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d93de4a320917510199d9cbe7431409b9bb641f1ca682b2313bd74b0df91af9`  
		Last Modified: Thu, 08 Feb 2018 11:49:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850db21668aac7d1c96d8ae57d54471060f65e281bbce03e979e607e7cafe15a`  
		Last Modified: Thu, 08 Feb 2018 11:49:23 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:313e127fc366453d61689ad1cae84e4a112e019cf45f353049b3cead2740e12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c541bde2ab847170e3d4c7ba138a40589441f643c8ef09d4f85001cf79f705c4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.2 MB (517162276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be604c4b4dc8816626b4c4706c39f729d5d56e56fa124b5046cdc85af5a02dc5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 03:14:48 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Mar 2018 03:18:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 03:18:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be3b0e8ebe2f13ba11885eab6576c2c7e1f4a10f2fac411888b5cea5e954c61`  
		Last Modified: Wed, 14 Mar 2018 03:21:11 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3120e47a5daae9a6a95752a2dcedc2351451f6681f1f015ea45e56ff8a66da4`  
		Last Modified: Wed, 14 Mar 2018 03:22:18 GMT  
		Size: 107.6 MB (107615936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682dd01d69afbec9ee47a50ad3fd1e5eb3c14b9292c1affb713a930f13e74bfd`  
		Last Modified: Wed, 14 Mar 2018 03:21:11 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver-sac2016`

```console
$ docker pull golang@sha256:313e127fc366453d61689ad1cae84e4a112e019cf45f353049b3cead2740e12a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.9-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c541bde2ab847170e3d4c7ba138a40589441f643c8ef09d4f85001cf79f705c4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.2 MB (517162276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be604c4b4dc8816626b4c4706c39f729d5d56e56fa124b5046cdc85af5a02dc5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 03:14:48 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Mar 2018 03:18:56 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 03:18:57 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be3b0e8ebe2f13ba11885eab6576c2c7e1f4a10f2fac411888b5cea5e954c61`  
		Last Modified: Wed, 14 Mar 2018 03:21:11 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3120e47a5daae9a6a95752a2dcedc2351451f6681f1f015ea45e56ff8a66da4`  
		Last Modified: Wed, 14 Mar 2018 03:22:18 GMT  
		Size: 107.6 MB (107615936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682dd01d69afbec9ee47a50ad3fd1e5eb3c14b9292c1affb713a930f13e74bfd`  
		Last Modified: Wed, 14 Mar 2018 03:21:11 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:50edc9278a011f6b291d23d7cffa540c6d36da8c14b864feca266757b8fea2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1.9-stretch` - linux; amd64

```console
$ docker pull golang@sha256:f5e77237ecef9f6394aafa9dd6018151001de94ec8ea98ed9afc998c7d299736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273759913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c306bd0b2fde84742e0eaf53225076b7f9fb12b51bb089baf68b41cf50566c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:54 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Mar 2018 04:58:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:58:04 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:58:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:58:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:58:05 GMT
WORKDIR /go
# Thu, 15 Mar 2018 04:58:06 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c503a785f6fd8c959aba671c6e5169d8096618326a2605e31434df24d51fd9c0`  
		Last Modified: Thu, 15 Mar 2018 05:00:22 GMT  
		Size: 105.6 MB (105601870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f90e5cd37cc21a57ccd64145a83a7a920dd4a046a47dece8b29ae2e59dd7faa`  
		Last Modified: Thu, 15 Mar 2018 05:00:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e848f75f6b281aad9ec47829be375fd16cc5a74427a79f2ff9534bb1acd3bc3`  
		Last Modified: Thu, 15 Mar 2018 05:00:06 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:26e1cd04a7a0fa9bf5acf1604775a0459c4cf7003edef4acfb6742c2b7b3367f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238843959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba8d01a7dcfd1bc724fefdc87b88725d1a7048c61fa324fd59bd997a73037ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:17:25 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Mar 2018 16:17:41 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:42 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:44 GMT
WORKDIR /go
# Wed, 14 Mar 2018 16:17:44 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369f691657f3df5d550e263459f2579462a8a9de3bc5f0959cba38c3712468ce`  
		Last Modified: Wed, 14 Mar 2018 16:19:48 GMT  
		Size: 91.0 MB (91007489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453516bc46709b344368916e2da1d2427499368ad15deca74abcb47a38f0abbc`  
		Last Modified: Wed, 14 Mar 2018 16:19:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf59a23e201e648641b1b4af52b7491a1aa511075ffc06f59f2cd42b7c11aa7`  
		Last Modified: Wed, 14 Mar 2018 16:19:22 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:42d3322bc5b7424e87306f28ff89a7300085e2ab7440d8cf177f385bcb183bc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243613579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae423d3e39c9a70552ea1fbc25f14022402018b5a7c21b5f232a94ddadac6afd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:15:06 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Mar 2018 05:15:38 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:15:40 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:15:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:15:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:15:45 GMT
WORKDIR /go
# Thu, 15 Mar 2018 05:15:47 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee43b910283583a997ac43390456e1d1585f026b5d94964dfc72d8b27b988b7`  
		Last Modified: Thu, 15 Mar 2018 05:19:35 GMT  
		Size: 89.6 MB (89608406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd859c4ab64305c862a7b0881750eb1cabb11052af1bee4d9b04de283d9eb3`  
		Last Modified: Thu, 15 Mar 2018 05:19:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69c2f51232a4b9c8d330a9909881bc49649dbb2ea06476ff889402f241a109d`  
		Last Modified: Thu, 15 Mar 2018 05:19:02 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:6be251b139857c61a7aa07e83754a1b5093f1c61e697a27fb6b264a9083060cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.4 MB (268448059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a698d82fd6dc263c4265e5d27c5f8733144292b53fd15f3a22b57f3afb8ba808`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:48:02 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 29 Mar 2018 22:48:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:48:19 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:48:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:48:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:48:20 GMT
WORKDIR /go
# Thu, 29 Mar 2018 22:48:21 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9e7d9b9256cd4f992b7c1b763ba2f5325232577096b019ee1d80829e85ecb`  
		Last Modified: Thu, 29 Mar 2018 23:17:10 GMT  
		Size: 93.3 MB (93262287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b8601d43a5d73577da9503a9ddd631eb44eaada086c8549dd07c9f5aaabf3e`  
		Last Modified: Thu, 29 Mar 2018 23:16:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24009a81c7f83651bed4abb094f349a302be9fe8dce263f84d11ff7ef1d2b9c9`  
		Last Modified: Thu, 29 Mar 2018 23:16:44 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:55ebb54534ebbeca302f943525233efc766959ad32fc893f6884375e555b1ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251895193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6882758881e11945431f6d55ea54a5a2ede58ada1b0e4ece502d986d3f2fdb3f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:29:38 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 15 Mar 2018 09:30:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:30:03 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:30:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:30:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:30:13 GMT
WORKDIR /go
# Thu, 15 Mar 2018 09:30:16 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff123e8d8834e7a034fc1ba3744a76ce8f7c67895ebdfa1337ddd249b2144a`  
		Last Modified: Thu, 15 Mar 2018 09:33:06 GMT  
		Size: 89.1 MB (89122902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8411255ca3479206a1cbc59236f111db7bd07783f3a08e37f3c748bbf7e29a2c`  
		Last Modified: Thu, 15 Mar 2018 09:32:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cff26d1f253e2be6636a8135d44395896d970a9bc45ee70fe8958d85184b61`  
		Last Modified: Thu, 15 Mar 2018 09:32:29 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; s390x

```console
$ docker pull golang@sha256:ec40ac927204dbb563530bb511feb0b95e3ff0f43f3844df7e093cd04f92b6c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245082293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53e13ed7d0374566601a39961206a1a86c02a44f9582e72bc3f355c12500b46`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:40 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Mar 2018 08:17:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:49 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:50 GMT
WORKDIR /go
# Wed, 14 Mar 2018 08:17:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa080bffba84359cb0421529ccd773a93ef85e287a489dd982c0a25ca04bd876`  
		Last Modified: Wed, 14 Mar 2018 08:19:09 GMT  
		Size: 88.8 MB (88771535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8031b7330a79500e051ff421609cd78197c845a05112ca0272d8f6fd727edac2`  
		Last Modified: Wed, 14 Mar 2018 08:18:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e315c108346037ad738b55a80a938055f5ff8d03bd62ffc72615e9688bc7bde`  
		Last Modified: Wed, 14 Mar 2018 08:18:53 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore`

```console
$ docker pull golang@sha256:cf20a7dff0f0248a6d310e7f2c1c6a3bf4ab285fed4c9efe515768682af15d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:1.9-windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:ca81ae85b9d28a69010ca2a8d309b7cfec60b44cbab0fb735d78aa6fa0042b42
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5531992619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2faa933bf49e02d465e7ecaa55a4f2c84b0bcc565ac087a7d50d778e40d28a5a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 03:47:01 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:00:53 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:00:56 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db8cdf5fa0b2d8f5e19d96fd41359f4427f71da6b5177f6b69615c0ef1d7a85`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c821b39e288ba3e4e6db1a0ff34b294b221b6aa09a2b8bdcfea9bd215b7a5`  
		Last Modified: Wed, 14 Feb 2018 04:50:58 GMT  
		Size: 116.2 MB (116178605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be8d97356a1a809f20bf4bd3a22ed153af7bff498e8ed74e95006f01c645ae5`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-windowsservercore` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:9e30f085c4ea21389f86a052407e81c687772deece4318980ec31e4a64844ac7
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3160483854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab8b4dd6bb255689ab42c94c7089a18c174c7f88727730dd13c9b71431aa5ac`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 04:01:12 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:05:52 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:05:54 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a393a09e7a5791befae4ba45ac36b7783e4418c725f0cd7aa6db17eda1e1b0f0`  
		Last Modified: Wed, 14 Feb 2018 04:51:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f052e89efbf5d058139fceefd80be364d729cab6c282af6916e45e93abbead`  
		Last Modified: Wed, 14 Feb 2018 04:52:25 GMT  
		Size: 111.4 MB (111410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6af66d21f751be3300812aa162c9141aa5713a57418f2a816f80d62cc85829`  
		Last Modified: Wed, 14 Feb 2018 04:51:16 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore-1709`

```console
$ docker pull golang@sha256:39c78d06d7dca54b561fdd25012761ec0fa19084ea5238a0f0113012c63a9804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `golang:1.9-windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:9e30f085c4ea21389f86a052407e81c687772deece4318980ec31e4a64844ac7
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3160483854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab8b4dd6bb255689ab42c94c7089a18c174c7f88727730dd13c9b71431aa5ac`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 04:01:12 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:05:52 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:05:54 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a393a09e7a5791befae4ba45ac36b7783e4418c725f0cd7aa6db17eda1e1b0f0`  
		Last Modified: Wed, 14 Feb 2018 04:51:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f052e89efbf5d058139fceefd80be364d729cab6c282af6916e45e93abbead`  
		Last Modified: Wed, 14 Feb 2018 04:52:25 GMT  
		Size: 111.4 MB (111410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6af66d21f751be3300812aa162c9141aa5713a57418f2a816f80d62cc85829`  
		Last Modified: Wed, 14 Feb 2018 04:51:16 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:61d0315049826d14a27dc59c724be9305530f993b12828765f7f73b98be53ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1.9-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:ca81ae85b9d28a69010ca2a8d309b7cfec60b44cbab0fb735d78aa6fa0042b42
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5531992619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2faa933bf49e02d465e7ecaa55a4f2c84b0bcc565ac087a7d50d778e40d28a5a`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 14 Feb 2018 03:47:01 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:00:53 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:00:56 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db8cdf5fa0b2d8f5e19d96fd41359f4427f71da6b5177f6b69615c0ef1d7a85`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c821b39e288ba3e4e6db1a0ff34b294b221b6aa09a2b8bdcfea9bd215b7a5`  
		Last Modified: Wed, 14 Feb 2018 04:50:58 GMT  
		Size: 116.2 MB (116178605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be8d97356a1a809f20bf4bd3a22ed153af7bff498e8ed74e95006f01c645ae5`  
		Last Modified: Wed, 14 Feb 2018 04:49:42 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine`

```console
$ docker pull golang@sha256:3fb74d9a61403acd5f2ce02cdd6570467350b23fcdd191628d4fddaa6523be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:f336d17914ab059ea289f160783845f01ccdff61bb6407d2edb3b7fcd47c15da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115696394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85256d3905e24e6f8cc45bcf93bc5d56c2c0b030cea38693e85c7a78a61d652c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 21:02:53 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 21:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:19:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:19:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:19:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdfb30a4c890bfce4d6f045e585e99f3e8a326cdd6e619a274b01ff348f4e21`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6487ee6212c57a47feb500f1421c38a83cd1ab7def383ffc49804d9d56970cbb`  
		Last Modified: Sat, 17 Feb 2018 21:37:53 GMT  
		Size: 113.3 MB (113322227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074903419fc03f4af1fec141ee7e68396de714ef06f0a60b78b8f8c5e4dcc26f`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:154ba5757ea95844398d679a9fb3f8f246955cac4f77ea84e68bc9b8d10a1098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114240281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7673bd88bdc08c89ef06eaff2516a1d40b9a578e95c01c3b01b61c8e70e7356`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Mar 2018 09:46:22 GMT
ENV GOLANG_VERSION=1.10
# Tue, 27 Mar 2018 09:46:23 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 27 Mar 2018 10:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Mar 2018 10:03:11 GMT
ENV GOPATH=/go
# Tue, 27 Mar 2018 10:03:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Mar 2018 10:03:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Mar 2018 10:03:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b6d71460d7ec042be39de8fca521d36a1109437f0af70d2767a6058f0e117`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c921d57f5e2f016e2167fc4a7bec777ebe24541bfd9381915c0e653512e2cd0`  
		Last Modified: Tue, 27 Mar 2018 10:06:13 GMT  
		Size: 111.9 MB (111921270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338ed84881dd09427d9bb84f34ab8db49992156fa2d0cc7f8499a2595e75eae`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4ee08d87cb2d22c505ad83635b62e63804d986e8e31361efae03cd1bdfca36a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111362211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec883cdc26fdf25d76b6e03a0fa7e73a92467050f35f6f517f9f7efde53723c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 20:54:55 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:56 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 20:57:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:57:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:57:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8569aa5fa4d278f38f6cc0343e9466d5f72fe50fdf3b7b718188bbb79cfd85d9`  
		Last Modified: Sat, 17 Feb 2018 21:00:24 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa9d41ce1fa8f979262115f154b87d701f1ec2a2ded5f91c8cc4b7c43e40f7c`  
		Last Modified: Sat, 17 Feb 2018 21:01:06 GMT  
		Size: 109.1 MB (109064354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce6514b3ea0064acae9bacab64946f16e64276b4378cc6bd2d28ac9f61ed54`  
		Last Modified: Sat, 17 Feb 2018 21:00:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:be2118ef7d91d3855c5f4a6ed6cafa0e9e28be3b6dcbf56d71a72880fffc569d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d705d7556809106cdec951c3b9820d0376e39be39ff4369b4df9be514a96363d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Mon, 19 Feb 2018 15:10:49 GMT
ENV GOLANG_VERSION=1.10
# Mon, 19 Feb 2018 15:10:49 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 19 Feb 2018 15:13:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 19 Feb 2018 15:30:35 GMT
ENV GOPATH=/go
# Mon, 19 Feb 2018 15:30:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 15:30:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Feb 2018 15:32:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ab06be1e1edba3a9c8b65859e1ea7385c1f103eed058df971ae9c6d98ed303`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e27e842ea724dac9c00da76e41789f3e259a744e9386c6eef52d9758b32577`  
		Last Modified: Mon, 19 Feb 2018 16:09:56 GMT  
		Size: 112.7 MB (112702782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb7c6137046a008c727d125a4fb90cd4a14d28cb70d5e1863c1cadb73060ba7`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:e0dc734ce45c634d01b9994c5c481c9833ae69b047b3f163261b790410382996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111454473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66ff6714cba6077295c3b6af8b42bf4ea6e24380eef311e27a8fb21bbdcaf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 16:51:19 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 16:51:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 16:53:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 16:53:18 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 16:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 16:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 16:53:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b77aacf4ed24ef40fa7e5db1a4c0d7e51125cbe7d934c60be31dcf4fbd0011a`  
		Last Modified: Sun, 18 Feb 2018 16:54:50 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74d1b937b0a39ea05756ae57c50b6c604f3db0ba6e448e57239a11ca0ac55d`  
		Last Modified: Sun, 18 Feb 2018 16:55:19 GMT  
		Size: 109.1 MB (109061555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31602a335ba1b71f6f6fe2a12036bc0085a70855d265a86350574eb9f5aea7`  
		Last Modified: Sun, 18 Feb 2018 16:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:670b02d9d1051a0a32ea9100279cd8411afd14646dd2dfb775a741d486079a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115574623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5c13129aadb1e6e785cc4f3fdc1cbb204454545538d69572ea32f66f44d093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 11:39:43 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 11:39:43 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 11:40:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 11:40:50 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 11:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 11:40:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 11:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32465a9f4c50ca5b3bb8ac8f77393a8f3f9e9f8fd7a44d01897c3f7d64b8e3eb`  
		Last Modified: Sun, 18 Feb 2018 11:41:51 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f96b78dc99274d26ecf83de0891db93ad2f6ad5be0f0b8d3f67a8427dba7d`  
		Last Modified: Sun, 18 Feb 2018 11:42:13 GMT  
		Size: 113.1 MB (113079446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebe6f3cc4ec80892821b67c7994f8b5b0fb9c85771d6a9a6a6a395bcb7cfa8`  
		Last Modified: Sun, 18 Feb 2018 11:41:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:3fb74d9a61403acd5f2ce02cdd6570467350b23fcdd191628d4fddaa6523be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:f336d17914ab059ea289f160783845f01ccdff61bb6407d2edb3b7fcd47c15da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115696394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85256d3905e24e6f8cc45bcf93bc5d56c2c0b030cea38693e85c7a78a61d652c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 21:02:53 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 21:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:19:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:19:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:19:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdfb30a4c890bfce4d6f045e585e99f3e8a326cdd6e619a274b01ff348f4e21`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6487ee6212c57a47feb500f1421c38a83cd1ab7def383ffc49804d9d56970cbb`  
		Last Modified: Sat, 17 Feb 2018 21:37:53 GMT  
		Size: 113.3 MB (113322227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074903419fc03f4af1fec141ee7e68396de714ef06f0a60b78b8f8c5e4dcc26f`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:154ba5757ea95844398d679a9fb3f8f246955cac4f77ea84e68bc9b8d10a1098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114240281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7673bd88bdc08c89ef06eaff2516a1d40b9a578e95c01c3b01b61c8e70e7356`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Mar 2018 09:46:22 GMT
ENV GOLANG_VERSION=1.10
# Tue, 27 Mar 2018 09:46:23 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 27 Mar 2018 10:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Mar 2018 10:03:11 GMT
ENV GOPATH=/go
# Tue, 27 Mar 2018 10:03:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Mar 2018 10:03:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Mar 2018 10:03:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b6d71460d7ec042be39de8fca521d36a1109437f0af70d2767a6058f0e117`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c921d57f5e2f016e2167fc4a7bec777ebe24541bfd9381915c0e653512e2cd0`  
		Last Modified: Tue, 27 Mar 2018 10:06:13 GMT  
		Size: 111.9 MB (111921270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338ed84881dd09427d9bb84f34ab8db49992156fa2d0cc7f8499a2595e75eae`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4ee08d87cb2d22c505ad83635b62e63804d986e8e31361efae03cd1bdfca36a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111362211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec883cdc26fdf25d76b6e03a0fa7e73a92467050f35f6f517f9f7efde53723c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 20:54:55 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:56 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 20:57:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:57:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:57:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8569aa5fa4d278f38f6cc0343e9466d5f72fe50fdf3b7b718188bbb79cfd85d9`  
		Last Modified: Sat, 17 Feb 2018 21:00:24 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa9d41ce1fa8f979262115f154b87d701f1ec2a2ded5f91c8cc4b7c43e40f7c`  
		Last Modified: Sat, 17 Feb 2018 21:01:06 GMT  
		Size: 109.1 MB (109064354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce6514b3ea0064acae9bacab64946f16e64276b4378cc6bd2d28ac9f61ed54`  
		Last Modified: Sat, 17 Feb 2018 21:00:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:be2118ef7d91d3855c5f4a6ed6cafa0e9e28be3b6dcbf56d71a72880fffc569d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d705d7556809106cdec951c3b9820d0376e39be39ff4369b4df9be514a96363d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Mon, 19 Feb 2018 15:10:49 GMT
ENV GOLANG_VERSION=1.10
# Mon, 19 Feb 2018 15:10:49 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 19 Feb 2018 15:13:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 19 Feb 2018 15:30:35 GMT
ENV GOPATH=/go
# Mon, 19 Feb 2018 15:30:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 15:30:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Feb 2018 15:32:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ab06be1e1edba3a9c8b65859e1ea7385c1f103eed058df971ae9c6d98ed303`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e27e842ea724dac9c00da76e41789f3e259a744e9386c6eef52d9758b32577`  
		Last Modified: Mon, 19 Feb 2018 16:09:56 GMT  
		Size: 112.7 MB (112702782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb7c6137046a008c727d125a4fb90cd4a14d28cb70d5e1863c1cadb73060ba7`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:e0dc734ce45c634d01b9994c5c481c9833ae69b047b3f163261b790410382996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111454473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66ff6714cba6077295c3b6af8b42bf4ea6e24380eef311e27a8fb21bbdcaf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 16:51:19 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 16:51:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 16:53:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 16:53:18 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 16:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 16:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 16:53:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b77aacf4ed24ef40fa7e5db1a4c0d7e51125cbe7d934c60be31dcf4fbd0011a`  
		Last Modified: Sun, 18 Feb 2018 16:54:50 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74d1b937b0a39ea05756ae57c50b6c604f3db0ba6e448e57239a11ca0ac55d`  
		Last Modified: Sun, 18 Feb 2018 16:55:19 GMT  
		Size: 109.1 MB (109061555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31602a335ba1b71f6f6fe2a12036bc0085a70855d265a86350574eb9f5aea7`  
		Last Modified: Sun, 18 Feb 2018 16:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:670b02d9d1051a0a32ea9100279cd8411afd14646dd2dfb775a741d486079a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115574623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5c13129aadb1e6e785cc4f3fdc1cbb204454545538d69572ea32f66f44d093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 11:39:43 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 11:39:43 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 11:40:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 11:40:50 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 11:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 11:40:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 11:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32465a9f4c50ca5b3bb8ac8f77393a8f3f9e9f8fd7a44d01897c3f7d64b8e3eb`  
		Last Modified: Sun, 18 Feb 2018 11:41:51 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f96b78dc99274d26ecf83de0891db93ad2f6ad5be0f0b8d3f67a8427dba7d`  
		Last Modified: Sun, 18 Feb 2018 11:42:13 GMT  
		Size: 113.1 MB (113079446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebe6f3cc4ec80892821b67c7994f8b5b0fb9c85771d6a9a6a6a395bcb7cfa8`  
		Last Modified: Sun, 18 Feb 2018 11:41:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:8581ac7c9f322872ba1dd69b694b1948e5903449577c790598e5fd9f9d4e1bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c2ac03a14673070343790a3c1e0fd68ddbb10e2578c52ab89372733049815065
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537937736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e9579d9e19c801d721b39f103beb4c5ad2ba69e91688f713c5edd36c7cbef3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 02:35:01 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 02:39:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 02:39:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23413c9b0ceedc4908fe2c1c7b205788a8eb2bc2553b5256005b9167012144df`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f586cc490369cf80d7997e1650c6344711df0775d63cf8db47252165749801f`  
		Last Modified: Wed, 14 Mar 2018 03:20:43 GMT  
		Size: 128.4 MB (128391412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe979190284e865fb5c9f3eebee9cb3d351aff71b41c66c667ffc3d552d425`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:8581ac7c9f322872ba1dd69b694b1948e5903449577c790598e5fd9f9d4e1bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c2ac03a14673070343790a3c1e0fd68ddbb10e2578c52ab89372733049815065
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537937736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e9579d9e19c801d721b39f103beb4c5ad2ba69e91688f713c5edd36c7cbef3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 02:35:01 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 02:39:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 02:39:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23413c9b0ceedc4908fe2c1c7b205788a8eb2bc2553b5256005b9167012144df`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f586cc490369cf80d7997e1650c6344711df0775d63cf8db47252165749801f`  
		Last Modified: Wed, 14 Mar 2018 03:20:43 GMT  
		Size: 128.4 MB (128391412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe979190284e865fb5c9f3eebee9cb3d351aff71b41c66c667ffc3d552d425`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:babf115fbc9c19d81735a70554a89b4eb07d0b871436b5b94a5090fec86b32f0
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
$ docker pull golang@sha256:0c4109858680d4cede075491298de88b5d3df24380c328f7be417d22282acb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288082461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d632bbfe57672c7fd240065c134fc396485a3acf04ec8baacfe1416e0c519d46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 04:57:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:57:33 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:57:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d5c68d1eb2883592bad93d3783537f6de3af29ebbd853fec09ce858c84b04`  
		Last Modified: Thu, 15 Mar 2018 04:58:53 GMT  
		Size: 119.9 MB (119925786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca93091ca51d8418a22f653756ff770e0052496e504ad1ec2d99bcdef710a7`  
		Last Modified: Thu, 15 Mar 2018 04:58:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:7e4554b17f1b8da05062e167d0f95630e6d56aab51e99b8c80360c2318af553a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569ad906c2f0291321396c5a52318936cc6aa003a7e8462c9c614526ce64d738`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:49 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 16:17:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:07 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a82265f2433d4781cb5d6464d9e67dcdb3633ef248540f1c6b44baaf85f06`  
		Last Modified: Wed, 14 Mar 2018 16:18:35 GMT  
		Size: 103.0 MB (102996022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59883716fb60d91ae2f5e75796ffc4bd6b149d39fda990f437bcf799227f4630`  
		Last Modified: Wed, 14 Mar 2018 16:18:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe4c1aa86d7b7a4c4244b7f2f4e56f43af50fdf746139ec89732630b0c70bc96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256481937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf505dcfdf8d77d45f243fd7139949efd96741bda79ff69a9e7a23a41e5ca4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:38 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 05:14:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:14:17 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:14:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:14:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add559507ed05f8a9a9e30cd8868a6ef7d9d19295cb35fd44929f5d16281463`  
		Last Modified: Thu, 15 Mar 2018 05:17:42 GMT  
		Size: 102.5 MB (102478133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934158b556f80c9548884ce26221ec1fb66448357f30b451b0f37ea203e042`  
		Last Modified: Thu, 15 Mar 2018 05:16:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:826eee0133b83be38a83348d49a2f7035e943dd01051b5e2745ff1ab2f2f5e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283480944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead0749bad4e8d92a1a4b5b0532f64347bcc40e3c5fd4468a92cea4de9a4e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:48 GMT
ENV GOLANG_VERSION=1.10
# Thu, 29 Mar 2018 22:35:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:35:06 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:35:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:35:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84b81bdea95840637f19a6dc0c87ca3d61475a09d7c656aef0e4af9f76c3a9`  
		Last Modified: Thu, 29 Mar 2018 22:56:13 GMT  
		Size: 108.3 MB (108296539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b05fee454bc4cabb111e47adc71e0989335ab5600c91daee9fe9f4d94a01c`  
		Last Modified: Thu, 29 Mar 2018 22:55:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d6f59c496067e875a25e108e15273fe9279ff5ee28064ec954127973433201b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264062743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35819e991ae75d84aaec9efd07ff5c2d2b264d2165d5f5159d5f26ee10561c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:31 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 09:29:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:29:07 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:29:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:29:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:29:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93191da9327d1999200956e20b769894e086d742d23bfbf72e2e4bb8f56238`  
		Last Modified: Thu, 15 Mar 2018 09:31:43 GMT  
		Size: 101.3 MB (101291818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350dfecadc8f99b012bcdf53c3d7e122c209d6e4487b50ea9c66445ddaf7059c`  
		Last Modified: Thu, 15 Mar 2018 09:30:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:2302e18de3b3165c098ddb7795c9ec1467a147f812149bf49cf0aca4cf91ccdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256979378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ed2021e7b6de3400c8d187fc209cbc71c629c4ef4954bc9208ca720ef647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:15 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 08:17:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:25 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de495ad8c2161cb5d2b52fee9744ebc2e2d8adc4073855b51275183bd3d1e21`  
		Last Modified: Wed, 14 Mar 2018 08:18:31 GMT  
		Size: 100.7 MB (100669986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a016b89872e057e449edfee3b2a0cecae3454155f7e626ec8a832edcb276d5`  
		Last Modified: Wed, 14 Mar 2018 08:18:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore`

```console
$ docker pull golang@sha256:f73e06dcbcf9fca45867d951ce0da8b6d9bcff94d41ff38f117c2dbe0251ad7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:1-windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-windowsservercore` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-1709`

```console
$ docker pull golang@sha256:d53e6a7d90efaf2a1ff102345185ba603b07aae5b847ee1cd9be889a08fd1c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `golang:1-windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:fbaa2deef1c92ea228745852bf562c0475937fb448976fe0b1c2bdd398fc12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:3fb74d9a61403acd5f2ce02cdd6570467350b23fcdd191628d4fddaa6523be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:f336d17914ab059ea289f160783845f01ccdff61bb6407d2edb3b7fcd47c15da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115696394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85256d3905e24e6f8cc45bcf93bc5d56c2c0b030cea38693e85c7a78a61d652c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 21:02:53 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 21:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:19:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:19:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:19:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdfb30a4c890bfce4d6f045e585e99f3e8a326cdd6e619a274b01ff348f4e21`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6487ee6212c57a47feb500f1421c38a83cd1ab7def383ffc49804d9d56970cbb`  
		Last Modified: Sat, 17 Feb 2018 21:37:53 GMT  
		Size: 113.3 MB (113322227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074903419fc03f4af1fec141ee7e68396de714ef06f0a60b78b8f8c5e4dcc26f`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:154ba5757ea95844398d679a9fb3f8f246955cac4f77ea84e68bc9b8d10a1098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114240281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7673bd88bdc08c89ef06eaff2516a1d40b9a578e95c01c3b01b61c8e70e7356`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Mar 2018 09:46:22 GMT
ENV GOLANG_VERSION=1.10
# Tue, 27 Mar 2018 09:46:23 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 27 Mar 2018 10:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Mar 2018 10:03:11 GMT
ENV GOPATH=/go
# Tue, 27 Mar 2018 10:03:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Mar 2018 10:03:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Mar 2018 10:03:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b6d71460d7ec042be39de8fca521d36a1109437f0af70d2767a6058f0e117`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c921d57f5e2f016e2167fc4a7bec777ebe24541bfd9381915c0e653512e2cd0`  
		Last Modified: Tue, 27 Mar 2018 10:06:13 GMT  
		Size: 111.9 MB (111921270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338ed84881dd09427d9bb84f34ab8db49992156fa2d0cc7f8499a2595e75eae`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4ee08d87cb2d22c505ad83635b62e63804d986e8e31361efae03cd1bdfca36a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111362211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec883cdc26fdf25d76b6e03a0fa7e73a92467050f35f6f517f9f7efde53723c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 20:54:55 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:56 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 20:57:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:57:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:57:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8569aa5fa4d278f38f6cc0343e9466d5f72fe50fdf3b7b718188bbb79cfd85d9`  
		Last Modified: Sat, 17 Feb 2018 21:00:24 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa9d41ce1fa8f979262115f154b87d701f1ec2a2ded5f91c8cc4b7c43e40f7c`  
		Last Modified: Sat, 17 Feb 2018 21:01:06 GMT  
		Size: 109.1 MB (109064354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce6514b3ea0064acae9bacab64946f16e64276b4378cc6bd2d28ac9f61ed54`  
		Last Modified: Sat, 17 Feb 2018 21:00:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:be2118ef7d91d3855c5f4a6ed6cafa0e9e28be3b6dcbf56d71a72880fffc569d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d705d7556809106cdec951c3b9820d0376e39be39ff4369b4df9be514a96363d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Mon, 19 Feb 2018 15:10:49 GMT
ENV GOLANG_VERSION=1.10
# Mon, 19 Feb 2018 15:10:49 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 19 Feb 2018 15:13:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 19 Feb 2018 15:30:35 GMT
ENV GOPATH=/go
# Mon, 19 Feb 2018 15:30:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 15:30:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Feb 2018 15:32:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ab06be1e1edba3a9c8b65859e1ea7385c1f103eed058df971ae9c6d98ed303`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e27e842ea724dac9c00da76e41789f3e259a744e9386c6eef52d9758b32577`  
		Last Modified: Mon, 19 Feb 2018 16:09:56 GMT  
		Size: 112.7 MB (112702782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb7c6137046a008c727d125a4fb90cd4a14d28cb70d5e1863c1cadb73060ba7`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:e0dc734ce45c634d01b9994c5c481c9833ae69b047b3f163261b790410382996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111454473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66ff6714cba6077295c3b6af8b42bf4ea6e24380eef311e27a8fb21bbdcaf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 16:51:19 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 16:51:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 16:53:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 16:53:18 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 16:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 16:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 16:53:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b77aacf4ed24ef40fa7e5db1a4c0d7e51125cbe7d934c60be31dcf4fbd0011a`  
		Last Modified: Sun, 18 Feb 2018 16:54:50 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74d1b937b0a39ea05756ae57c50b6c604f3db0ba6e448e57239a11ca0ac55d`  
		Last Modified: Sun, 18 Feb 2018 16:55:19 GMT  
		Size: 109.1 MB (109061555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31602a335ba1b71f6f6fe2a12036bc0085a70855d265a86350574eb9f5aea7`  
		Last Modified: Sun, 18 Feb 2018 16:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:670b02d9d1051a0a32ea9100279cd8411afd14646dd2dfb775a741d486079a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115574623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5c13129aadb1e6e785cc4f3fdc1cbb204454545538d69572ea32f66f44d093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 11:39:43 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 11:39:43 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 11:40:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 11:40:50 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 11:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 11:40:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 11:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32465a9f4c50ca5b3bb8ac8f77393a8f3f9e9f8fd7a44d01897c3f7d64b8e3eb`  
		Last Modified: Sun, 18 Feb 2018 11:41:51 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f96b78dc99274d26ecf83de0891db93ad2f6ad5be0f0b8d3f67a8427dba7d`  
		Last Modified: Sun, 18 Feb 2018 11:42:13 GMT  
		Size: 113.1 MB (113079446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebe6f3cc4ec80892821b67c7994f8b5b0fb9c85771d6a9a6a6a395bcb7cfa8`  
		Last Modified: Sun, 18 Feb 2018 11:41:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.7`

```console
$ docker pull golang@sha256:3fb74d9a61403acd5f2ce02cdd6570467350b23fcdd191628d4fddaa6523be02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:f336d17914ab059ea289f160783845f01ccdff61bb6407d2edb3b7fcd47c15da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115696394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85256d3905e24e6f8cc45bcf93bc5d56c2c0b030cea38693e85c7a78a61d652c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 21:02:53 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 21:02:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 21:04:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 21:19:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 21:19:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:19:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 21:19:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32d2ea7337847f228582ff9da53aa97c2a76ec1cbdb95f355fdd31ce5d26c9a`  
		Last Modified: Tue, 09 Jan 2018 22:49:09 GMT  
		Size: 308.0 KB (308009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdfb30a4c890bfce4d6f045e585e99f3e8a326cdd6e619a274b01ff348f4e21`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6487ee6212c57a47feb500f1421c38a83cd1ab7def383ffc49804d9d56970cbb`  
		Last Modified: Sat, 17 Feb 2018 21:37:53 GMT  
		Size: 113.3 MB (113322227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074903419fc03f4af1fec141ee7e68396de714ef06f0a60b78b8f8c5e4dcc26f`  
		Last Modified: Sat, 17 Feb 2018 21:37:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:154ba5757ea95844398d679a9fb3f8f246955cac4f77ea84e68bc9b8d10a1098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114240281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7673bd88bdc08c89ef06eaff2516a1d40b9a578e95c01c3b01b61c8e70e7356`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Fri, 02 Mar 2018 11:14:52 GMT
RUN apk add --no-cache ca-certificates
# Tue, 27 Mar 2018 09:46:22 GMT
ENV GOLANG_VERSION=1.10
# Tue, 27 Mar 2018 09:46:23 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Tue, 27 Mar 2018 10:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 27 Mar 2018 10:03:11 GMT
ENV GOPATH=/go
# Tue, 27 Mar 2018 10:03:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Mar 2018 10:03:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 27 Mar 2018 10:03:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69629e4798bd12bfbc7e519cf2ed0e349a3fcd0bb345144d51f7d976aa9fb7c`  
		Last Modified: Fri, 02 Mar 2018 11:34:06 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9b6d71460d7ec042be39de8fca521d36a1109437f0af70d2767a6058f0e117`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c921d57f5e2f016e2167fc4a7bec777ebe24541bfd9381915c0e653512e2cd0`  
		Last Modified: Tue, 27 Mar 2018 10:06:13 GMT  
		Size: 111.9 MB (111921270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338ed84881dd09427d9bb84f34ab8db49992156fa2d0cc7f8499a2595e75eae`  
		Last Modified: Tue, 27 Mar 2018 10:03:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4ee08d87cb2d22c505ad83635b62e63804d986e8e31361efae03cd1bdfca36a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111362211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec883cdc26fdf25d76b6e03a0fa7e73a92467050f35f6f517f9f7efde53723c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 08 Dec 2017 20:56:00 GMT
RUN apk add --no-cache ca-certificates
# Sat, 17 Feb 2018 20:54:55 GMT
ENV GOLANG_VERSION=1.10
# Sat, 17 Feb 2018 20:54:56 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sat, 17 Feb 2018 20:57:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 17 Feb 2018 20:57:22 GMT
ENV GOPATH=/go
# Sat, 17 Feb 2018 20:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 20:57:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 17 Feb 2018 20:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660093e5ae1b303373dac44a518743db0a535330a44f561a0b1c66c666b88102`  
		Last Modified: Fri, 08 Dec 2017 21:02:00 GMT  
		Size: 308.2 KB (308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8569aa5fa4d278f38f6cc0343e9466d5f72fe50fdf3b7b718188bbb79cfd85d9`  
		Last Modified: Sat, 17 Feb 2018 21:00:24 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa9d41ce1fa8f979262115f154b87d701f1ec2a2ded5f91c8cc4b7c43e40f7c`  
		Last Modified: Sat, 17 Feb 2018 21:01:06 GMT  
		Size: 109.1 MB (109064354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ce6514b3ea0064acae9bacab64946f16e64276b4378cc6bd2d28ac9f61ed54`  
		Last Modified: Sat, 17 Feb 2018 21:00:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:be2118ef7d91d3855c5f4a6ed6cafa0e9e28be3b6dcbf56d71a72880fffc569d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115138546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d705d7556809106cdec951c3b9820d0376e39be39ff4369b4df9be514a96363d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 06:31:45 GMT
RUN apk add --no-cache ca-certificates
# Mon, 19 Feb 2018 15:10:49 GMT
ENV GOLANG_VERSION=1.10
# Mon, 19 Feb 2018 15:10:49 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 19 Feb 2018 15:13:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 19 Feb 2018 15:30:35 GMT
ENV GOPATH=/go
# Mon, 19 Feb 2018 15:30:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 15:30:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 19 Feb 2018 15:32:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0ae4e806e0bcf689aa4fc0b9db5412643bb52ddb2b64550bcb9b7577363a0c`  
		Last Modified: Sat, 09 Dec 2017 06:48:38 GMT  
		Size: 308.8 KB (308750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ab06be1e1edba3a9c8b65859e1ea7385c1f103eed058df971ae9c6d98ed303`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e27e842ea724dac9c00da76e41789f3e259a744e9386c6eef52d9758b32577`  
		Last Modified: Mon, 19 Feb 2018 16:09:56 GMT  
		Size: 112.7 MB (112702782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb7c6137046a008c727d125a4fb90cd4a14d28cb70d5e1863c1cadb73060ba7`  
		Last Modified: Mon, 19 Feb 2018 16:09:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:e0dc734ce45c634d01b9994c5c481c9833ae69b047b3f163261b790410382996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111454473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66ff6714cba6077295c3b6af8b42bf4ea6e24380eef311e27a8fb21bbdcaf93`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 16:52:07 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 16:51:19 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 16:51:21 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 16:53:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 16:53:18 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 16:53:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 16:53:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 16:53:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20001eec33ea080aaab05de3968f72c84928f760210406a0ad2e86b0361055`  
		Last Modified: Sat, 09 Dec 2017 16:56:43 GMT  
		Size: 310.6 KB (310597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b77aacf4ed24ef40fa7e5db1a4c0d7e51125cbe7d934c60be31dcf4fbd0011a`  
		Last Modified: Sun, 18 Feb 2018 16:54:50 GMT  
		Size: 520.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74d1b937b0a39ea05756ae57c50b6c604f3db0ba6e448e57239a11ca0ac55d`  
		Last Modified: Sun, 18 Feb 2018 16:55:19 GMT  
		Size: 109.1 MB (109061555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d31602a335ba1b71f6f6fe2a12036bc0085a70855d265a86350574eb9f5aea7`  
		Last Modified: Sun, 18 Feb 2018 16:54:51 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:670b02d9d1051a0a32ea9100279cd8411afd14646dd2dfb775a741d486079a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115574623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5c13129aadb1e6e785cc4f3fdc1cbb204454545538d69572ea32f66f44d093`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Dec 2017 11:40:24 GMT
RUN apk add --no-cache ca-certificates
# Sun, 18 Feb 2018 11:39:43 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 11:39:43 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Sun, 18 Feb 2018 11:40:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sun, 18 Feb 2018 11:40:50 GMT
ENV GOPATH=/go
# Sun, 18 Feb 2018 11:40:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 11:40:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sun, 18 Feb 2018 11:40:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5208e5c258aa1ae009c142f81433bc2d33f2abab9ecb59aebee081866124af5`  
		Last Modified: Sat, 09 Dec 2017 11:43:03 GMT  
		Size: 309.2 KB (309151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32465a9f4c50ca5b3bb8ac8f77393a8f3f9e9f8fd7a44d01897c3f7d64b8e3eb`  
		Last Modified: Sun, 18 Feb 2018 11:41:51 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1f96b78dc99274d26ecf83de0891db93ad2f6ad5be0f0b8d3f67a8427dba7d`  
		Last Modified: Sun, 18 Feb 2018 11:42:13 GMT  
		Size: 113.1 MB (113079446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebe6f3cc4ec80892821b67c7994f8b5b0fb9c85771d6a9a6a6a395bcb7cfa8`  
		Last Modified: Sun, 18 Feb 2018 11:41:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:ce70a7c27659bd714b63e7439ba0ae4a9f5a111fea16bd87575ddcfb0d0ef0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:0c4109858680d4cede075491298de88b5d3df24380c328f7be417d22282acb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288082461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d632bbfe57672c7fd240065c134fc396485a3acf04ec8baacfe1416e0c519d46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 04:57:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:57:33 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:57:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d5c68d1eb2883592bad93d3783537f6de3af29ebbd853fec09ce858c84b04`  
		Last Modified: Thu, 15 Mar 2018 04:58:53 GMT  
		Size: 119.9 MB (119925786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca93091ca51d8418a22f653756ff770e0052496e504ad1ec2d99bcdef710a7`  
		Last Modified: Thu, 15 Mar 2018 04:58:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:7e4554b17f1b8da05062e167d0f95630e6d56aab51e99b8c80360c2318af553a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569ad906c2f0291321396c5a52318936cc6aa003a7e8462c9c614526ce64d738`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:49 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 16:17:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:07 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a82265f2433d4781cb5d6464d9e67dcdb3633ef248540f1c6b44baaf85f06`  
		Last Modified: Wed, 14 Mar 2018 16:18:35 GMT  
		Size: 103.0 MB (102996022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59883716fb60d91ae2f5e75796ffc4bd6b149d39fda990f437bcf799227f4630`  
		Last Modified: Wed, 14 Mar 2018 16:18:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe4c1aa86d7b7a4c4244b7f2f4e56f43af50fdf746139ec89732630b0c70bc96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256481937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf505dcfdf8d77d45f243fd7139949efd96741bda79ff69a9e7a23a41e5ca4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:38 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 05:14:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:14:17 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:14:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:14:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add559507ed05f8a9a9e30cd8868a6ef7d9d19295cb35fd44929f5d16281463`  
		Last Modified: Thu, 15 Mar 2018 05:17:42 GMT  
		Size: 102.5 MB (102478133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934158b556f80c9548884ce26221ec1fb66448357f30b451b0f37ea203e042`  
		Last Modified: Thu, 15 Mar 2018 05:16:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:826eee0133b83be38a83348d49a2f7035e943dd01051b5e2745ff1ab2f2f5e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283480944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead0749bad4e8d92a1a4b5b0532f64347bcc40e3c5fd4468a92cea4de9a4e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:48 GMT
ENV GOLANG_VERSION=1.10
# Thu, 29 Mar 2018 22:35:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:35:06 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:35:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:35:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84b81bdea95840637f19a6dc0c87ca3d61475a09d7c656aef0e4af9f76c3a9`  
		Last Modified: Thu, 29 Mar 2018 22:56:13 GMT  
		Size: 108.3 MB (108296539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b05fee454bc4cabb111e47adc71e0989335ab5600c91daee9fe9f4d94a01c`  
		Last Modified: Thu, 29 Mar 2018 22:55:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:d6f59c496067e875a25e108e15273fe9279ff5ee28064ec954127973433201b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264062743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35819e991ae75d84aaec9efd07ff5c2d2b264d2165d5f5159d5f26ee10561c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:31 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 09:29:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:29:07 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:29:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:29:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:29:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93191da9327d1999200956e20b769894e086d742d23bfbf72e2e4bb8f56238`  
		Last Modified: Thu, 15 Mar 2018 09:31:43 GMT  
		Size: 101.3 MB (101291818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350dfecadc8f99b012bcdf53c3d7e122c209d6e4487b50ea9c66445ddaf7059c`  
		Last Modified: Thu, 15 Mar 2018 09:30:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:2302e18de3b3165c098ddb7795c9ec1467a147f812149bf49cf0aca4cf91ccdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256979378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ed2021e7b6de3400c8d187fc209cbc71c629c4ef4954bc9208ca720ef647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:15 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 08:17:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:25 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de495ad8c2161cb5d2b52fee9744ebc2e2d8adc4073855b51275183bd3d1e21`  
		Last Modified: Wed, 14 Mar 2018 08:18:31 GMT  
		Size: 100.7 MB (100669986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a016b89872e057e449edfee3b2a0cecae3454155f7e626ec8a832edcb276d5`  
		Last Modified: Wed, 14 Mar 2018 08:18:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:8581ac7c9f322872ba1dd69b694b1948e5903449577c790598e5fd9f9d4e1bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c2ac03a14673070343790a3c1e0fd68ddbb10e2578c52ab89372733049815065
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537937736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e9579d9e19c801d721b39f103beb4c5ad2ba69e91688f713c5edd36c7cbef3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 02:35:01 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 02:39:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 02:39:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23413c9b0ceedc4908fe2c1c7b205788a8eb2bc2553b5256005b9167012144df`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f586cc490369cf80d7997e1650c6344711df0775d63cf8db47252165749801f`  
		Last Modified: Wed, 14 Mar 2018 03:20:43 GMT  
		Size: 128.4 MB (128391412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe979190284e865fb5c9f3eebee9cb3d351aff71b41c66c667ffc3d552d425`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver-sac2016`

```console
$ docker pull golang@sha256:8581ac7c9f322872ba1dd69b694b1948e5903449577c790598e5fd9f9d4e1bce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:c2ac03a14673070343790a3c1e0fd68ddbb10e2578c52ab89372733049815065
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.9 MB (537937736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e9579d9e19c801d721b39f103beb4c5ad2ba69e91688f713c5edd36c7cbef3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:33:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 02:33:58 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Mar 2018 02:35:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Mar 2018 02:35:01 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 02:39:29 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Mar 2018 02:39:31 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8507e814effc58490d3a8051fc4843317f2e72683de995e8b9bd420fd387a5c5`  
		Last Modified: Wed, 14 Mar 2018 03:19:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff765a0eefd3ecc7b4b39e6316c7aa3087223e40b261dd66acc9418bc6a240`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28b5f174762908f8af0027e53f0bbb0d2895181cc906b27e3fc48b9c6e4bbd9`  
		Last Modified: Wed, 14 Mar 2018 03:19:26 GMT  
		Size: 848.0 KB (848029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23413c9b0ceedc4908fe2c1c7b205788a8eb2bc2553b5256005b9167012144df`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f586cc490369cf80d7997e1650c6344711df0775d63cf8db47252165749801f`  
		Last Modified: Wed, 14 Mar 2018 03:20:43 GMT  
		Size: 128.4 MB (128391412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfe979190284e865fb5c9f3eebee9cb3d351aff71b41c66c667ffc3d552d425`  
		Last Modified: Wed, 14 Mar 2018 03:19:25 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:babf115fbc9c19d81735a70554a89b4eb07d0b871436b5b94a5090fec86b32f0
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
$ docker pull golang@sha256:0c4109858680d4cede075491298de88b5d3df24380c328f7be417d22282acb8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288082461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d632bbfe57672c7fd240065c134fc396485a3acf04ec8baacfe1416e0c519d46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 04:57:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 04:57:33 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 04:57:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 04:57:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 04:57:34 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5d5c68d1eb2883592bad93d3783537f6de3af29ebbd853fec09ce858c84b04`  
		Last Modified: Thu, 15 Mar 2018 04:58:53 GMT  
		Size: 119.9 MB (119925786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca93091ca51d8418a22f653756ff770e0052496e504ad1ec2d99bcdef710a7`  
		Last Modified: Thu, 15 Mar 2018 04:58:34 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:7e4554b17f1b8da05062e167d0f95630e6d56aab51e99b8c80360c2318af553a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569ad906c2f0291321396c5a52318936cc6aa003a7e8462c9c614526ce64d738`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 16:16:49 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 16:17:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 16:17:07 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 16:17:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 16:17:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 16:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397cc0ade5ea7b2621b829913376f8c421662acb370154a3d29538c8e1598c90`  
		Last Modified: Wed, 14 Mar 2018 13:30:57 GMT  
		Size: 46.3 MB (46346263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45538672a80314ae675c50e35dcbc57eb252134eb75382672bced4efc0908163`  
		Last Modified: Wed, 14 Mar 2018 16:18:17 GMT  
		Size: 45.9 MB (45893820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a82265f2433d4781cb5d6464d9e67dcdb3633ef248540f1c6b44baaf85f06`  
		Last Modified: Wed, 14 Mar 2018 16:18:35 GMT  
		Size: 103.0 MB (102996022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59883716fb60d91ae2f5e75796ffc4bd6b149d39fda990f437bcf799227f4630`  
		Last Modified: Wed, 14 Mar 2018 16:18:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:fe4c1aa86d7b7a4c4244b7f2f4e56f43af50fdf746139ec89732630b0c70bc96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256481937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf505dcfdf8d77d45f243fd7139949efd96741bda79ff69a9e7a23a41e5ca4d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:13:38 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 05:14:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 05:14:17 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 05:14:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 05:14:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 05:14:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d347d8b1cf0e5e44efc946e168812b756706e1ae04089babac994e94c5a53`  
		Last Modified: Thu, 15 Mar 2018 05:17:19 GMT  
		Size: 49.0 MB (48958440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0add559507ed05f8a9a9e30cd8868a6ef7d9d19295cb35fd44929f5d16281463`  
		Last Modified: Thu, 15 Mar 2018 05:17:42 GMT  
		Size: 102.5 MB (102478133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e934158b556f80c9548884ce26221ec1fb66448357f30b451b0f37ea203e042`  
		Last Modified: Thu, 15 Mar 2018 05:16:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:826eee0133b83be38a83348d49a2f7035e943dd01051b5e2745ff1ab2f2f5e4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283480944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead0749bad4e8d92a1a4b5b0532f64347bcc40e3c5fd4468a92cea4de9a4e46`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 09:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 09:21:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 09:30:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 22:34:48 GMT
ENV GOLANG_VERSION=1.10
# Thu, 29 Mar 2018 22:35:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 29 Mar 2018 22:35:06 GMT
ENV GOPATH=/go
# Thu, 29 Mar 2018 22:35:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 22:35:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 29 Mar 2018 22:35:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf06195c2218190a73a69ea8e401fa5ac51b04a5b9935d94aeadee71ab0e7`  
		Last Modified: Wed, 28 Mar 2018 11:30:49 GMT  
		Size: 11.2 MB (11151280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dd95505cc0406437d77f89d014d8dac0994dd6010617639963daa11a551f5b`  
		Last Modified: Wed, 28 Mar 2018 11:30:47 GMT  
		Size: 4.6 MB (4554727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbf93f54b8200acdcdfa6872b18096425d61aefa305c7777a8bbd6a36e24f49`  
		Last Modified: Wed, 28 Mar 2018 11:43:40 GMT  
		Size: 51.6 MB (51554292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998b3cbdf92c5b78904eda0e5a74608119dc5032a45d5b99aec0af09c2b5e34b`  
		Last Modified: Thu, 29 Mar 2018 22:56:00 GMT  
		Size: 62.1 MB (62080560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f84b81bdea95840637f19a6dc0c87ca3d61475a09d7c656aef0e4af9f76c3a9`  
		Last Modified: Thu, 29 Mar 2018 22:56:13 GMT  
		Size: 108.3 MB (108296539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b05fee454bc4cabb111e47adc71e0989335ab5600c91daee9fe9f4d94a01c`  
		Last Modified: Thu, 29 Mar 2018 22:55:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:d6f59c496067e875a25e108e15273fe9279ff5ee28064ec954127973433201b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264062743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e35819e991ae75d84aaec9efd07ff5c2d2b264d2165d5f5159d5f26ee10561c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 09:28:31 GMT
ENV GOLANG_VERSION=1.10
# Thu, 15 Mar 2018 09:29:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Mar 2018 09:29:07 GMT
ENV GOPATH=/go
# Thu, 15 Mar 2018 09:29:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 09:29:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Mar 2018 09:29:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049df49e5e11dd14d61326827bbbdfdb458ae77725ce5c5675806e54a14f746c`  
		Last Modified: Thu, 15 Mar 2018 09:31:21 GMT  
		Size: 52.7 MB (52735327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93191da9327d1999200956e20b769894e086d742d23bfbf72e2e4bb8f56238`  
		Last Modified: Thu, 15 Mar 2018 09:31:43 GMT  
		Size: 101.3 MB (101291818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350dfecadc8f99b012bcdf53c3d7e122c209d6e4487b50ea9c66445ddaf7059c`  
		Last Modified: Thu, 15 Mar 2018 09:30:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:2302e18de3b3165c098ddb7795c9ec1467a147f812149bf49cf0aca4cf91ccdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256979378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ed2021e7b6de3400c8d187fc209cbc71c629c4ef4954bc9208ca720ef647`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 08:17:15 GMT
ENV GOLANG_VERSION=1.10
# Wed, 14 Mar 2018 08:17:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='b5a64335f1490277b585832d1f6c7f8c6c11206cba5cd3f771dcb87b98ad1a33' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='6ff665a9ab61240cf9f11a07e03e6819e452a618a32ea05bbb2c80182f838f4f' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='efb47e5c0e020b180291379ab625c6ec1c2e9e9b289336bc7169e6aa1da43fd8' ;; 		i386) goRelArch='linux-386'; goRelSha256='2d26a9f41fd80eeb445cc454c2ba6b3d0db2fc732c53d7d0427a9f605bfc55a1' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='a1e22e2fbcb3e551e0bf59d0f8aeb4b3f2df86714f09d2acd260c6597c43beee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='71cde197e50afe17f097f81153edb450f880267699f22453272d184e0f4681d7' ;; 		*) goRelArch='src'; goRelSha256='f3de49289405fda5fd1483a8fe6bd2fa5469e005fd567df64485c4fa000c7f24'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 14 Mar 2018 08:17:25 GMT
ENV GOPATH=/go
# Wed, 14 Mar 2018 08:17:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 08:17:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 14 Mar 2018 08:17:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f738d53429c1c9ea6d045141f02d845c22848230ea6aef9963f790ca0f8e94`  
		Last Modified: Wed, 14 Mar 2018 06:01:07 GMT  
		Size: 50.4 MB (50447603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54c7db55a82c2a16fd443204b8af6347e1410db9db3461949a625bca666eaeb`  
		Last Modified: Wed, 14 Mar 2018 08:18:21 GMT  
		Size: 45.8 MB (45849661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de495ad8c2161cb5d2b52fee9744ebc2e2d8adc4073855b51275183bd3d1e21`  
		Last Modified: Wed, 14 Mar 2018 08:18:31 GMT  
		Size: 100.7 MB (100669986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a016b89872e057e449edfee3b2a0cecae3454155f7e626ec8a832edcb276d5`  
		Last Modified: Wed, 14 Mar 2018 08:18:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore`

```console
$ docker pull golang@sha256:f73e06dcbcf9fca45867d951ce0da8b6d9bcff94d41ff38f117c2dbe0251ad7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-1709`

```console
$ docker pull golang@sha256:d53e6a7d90efaf2a1ff102345185ba603b07aae5b847ee1cd9be889a08fd1c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.248; amd64

### `golang:windowsservercore-1709` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:fbaa2deef1c92ea228745852bf562c0475937fb448976fe0b1c2bdd398fc12b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

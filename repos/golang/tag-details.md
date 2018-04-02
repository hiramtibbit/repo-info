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
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10`

```console
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1`

```console
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10.1` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-alpine`

```console
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10.1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-alpine3.7`

```console
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10.1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-nanoserver`

**does not exist** (yet?)

## `golang:1.10.1-nanoserver-sac2016`

**does not exist** (yet?)

## `golang:1.10.1-stretch`

```console
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10.1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-windowsservercore`

**does not exist** (yet?)

## `golang:1.10.1-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.10.1-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.10-alpine`

```console
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10-alpine` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-alpine3.7`

```console
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
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
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.10-stretch` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
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
$ docker pull golang@sha256:7d4bfa2b4456b8a7c533c5e43e171e6a94180bee830a71b583b8ac3b00f78507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9` - linux; amd64

```console
$ docker pull golang@sha256:139c8a00b71101774f7dbd5853781c375ac560051f930475811402eff44b0ddf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273872885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465fb154d13523d7ff719717e0bcf56d9c4fa0f0e6f1265d67c8d8d77e518fa`
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
# Fri, 30 Mar 2018 22:14:09 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:14:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:14:23 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:14:24 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:14:25 GMT
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
	-	`sha256:c368dcc533d668d2d87f3302dc8154a35665472a2afabda866b68367e8cfb2c8`  
		Last Modified: Sat, 31 Mar 2018 00:21:02 GMT  
		Size: 105.7 MB (105714843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037d23043c59bf1bc9bd056ba2c811677102f88fb41d74c773e0a432d8683a`  
		Last Modified: Sat, 31 Mar 2018 00:20:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64db6c96f106fb04d4dc3630dea5d43a78af77d9546d69dfe13677814d1985b`  
		Last Modified: Sat, 31 Mar 2018 00:20:37 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5`

```console
$ docker pull golang@sha256:7d4bfa2b4456b8a7c533c5e43e171e6a94180bee830a71b583b8ac3b00f78507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.5` - linux; amd64

```console
$ docker pull golang@sha256:139c8a00b71101774f7dbd5853781c375ac560051f930475811402eff44b0ddf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273872885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465fb154d13523d7ff719717e0bcf56d9c4fa0f0e6f1265d67c8d8d77e518fa`
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
# Fri, 30 Mar 2018 22:14:09 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:14:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:14:23 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:14:24 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:14:25 GMT
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
	-	`sha256:c368dcc533d668d2d87f3302dc8154a35665472a2afabda866b68367e8cfb2c8`  
		Last Modified: Sat, 31 Mar 2018 00:21:02 GMT  
		Size: 105.7 MB (105714843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037d23043c59bf1bc9bd056ba2c811677102f88fb41d74c773e0a432d8683a`  
		Last Modified: Sat, 31 Mar 2018 00:20:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64db6c96f106fb04d4dc3630dea5d43a78af77d9546d69dfe13677814d1985b`  
		Last Modified: Sat, 31 Mar 2018 00:20:37 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-alpine`

```console
$ docker pull golang@sha256:e80d321af9b2ee3d5761c2442a6fbe79272d392c22f6df3cfcd8dc9f72d3ce2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.5-alpine` - linux; amd64

```console
$ docker pull golang@sha256:72683ff26be3c8029d416647c461bd99a55f370620d6b298dc37a38864555cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82632553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4288aa641f14100430872daf0bc4c4dfdba01e01c5329844e5eea483861c6fa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:41:32 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:41:33 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 30 Mar 2018 22:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:42:30 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:42:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:42:31 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:42:32 GMT
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
	-	`sha256:9abb15dfc23d5c085c21bf409d5dd677156ec2d7d5a715867ffb423bb1f5a02a`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef5960a5e15328bc7a5495b473e34ebd9e5d47eb8ec0e18a36c26b0edffe374`  
		Last Modified: Sat, 31 Mar 2018 00:37:12 GMT  
		Size: 80.3 MB (80287215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca15e438ee39d493b41678bd038d3bf2a2ccf43231e33082c11c6ce98f32cb7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e4136cfdc3a0ff6f86347b6c1476debc7b8eae944fad48f9d0020d02c85c7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-alpine3.6`

```console
$ docker pull golang@sha256:e80d321af9b2ee3d5761c2442a6fbe79272d392c22f6df3cfcd8dc9f72d3ce2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.5-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:72683ff26be3c8029d416647c461bd99a55f370620d6b298dc37a38864555cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82632553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4288aa641f14100430872daf0bc4c4dfdba01e01c5329844e5eea483861c6fa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:41:32 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:41:33 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 30 Mar 2018 22:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:42:30 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:42:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:42:31 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:42:32 GMT
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
	-	`sha256:9abb15dfc23d5c085c21bf409d5dd677156ec2d7d5a715867ffb423bb1f5a02a`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef5960a5e15328bc7a5495b473e34ebd9e5d47eb8ec0e18a36c26b0edffe374`  
		Last Modified: Sat, 31 Mar 2018 00:37:12 GMT  
		Size: 80.3 MB (80287215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca15e438ee39d493b41678bd038d3bf2a2ccf43231e33082c11c6ce98f32cb7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e4136cfdc3a0ff6f86347b6c1476debc7b8eae944fad48f9d0020d02c85c7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-alpine3.7`

```console
$ docker pull golang@sha256:74f5de3943fb8481d268ab581823caacfad96615e4aee9be72a00ed4f6ed1d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.5-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:4522f0f62c442f0a26c7d4271c657d500b68769fb1d9b017c22dba2460d83960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82656646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c58bc3e6fb5f4a214069f1281321a8e9c05272c6acf016e690b0bf2b6e5e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:28:28 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:28:29 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 30 Mar 2018 22:29:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:29:25 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:29:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:29:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:29:26 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:29:26 GMT
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
	-	`sha256:9c23169dc53276c43c4895e4f80374cf2c1391103ebb47516b6f1e1bfd5eca71`  
		Last Modified: Sat, 31 Mar 2018 00:27:09 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c54490c43118a0f2c234217b360f2054bc2b1e24762017cd1c4ef95bf5b73b`  
		Last Modified: Sat, 31 Mar 2018 00:27:34 GMT  
		Size: 80.3 MB (80280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c382c51888ff78e0ca85fc1e58f5898713dc5911800cd94bb4f16a3cc2cec`  
		Last Modified: Sat, 31 Mar 2018 00:27:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4883e18ca246132fc72868fb73d0a0b9b1798718db020ad7be7e38f9ff9b4522`  
		Last Modified: Sat, 31 Mar 2018 00:27:08 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-nanoserver`

**does not exist** (yet?)

## `golang:1.9.5-nanoserver-sac2016`

**does not exist** (yet?)

## `golang:1.9.5-stretch`

```console
$ docker pull golang@sha256:7d4bfa2b4456b8a7c533c5e43e171e6a94180bee830a71b583b8ac3b00f78507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9.5-stretch` - linux; amd64

```console
$ docker pull golang@sha256:139c8a00b71101774f7dbd5853781c375ac560051f930475811402eff44b0ddf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273872885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465fb154d13523d7ff719717e0bcf56d9c4fa0f0e6f1265d67c8d8d77e518fa`
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
# Fri, 30 Mar 2018 22:14:09 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:14:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:14:23 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:14:24 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:14:25 GMT
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
	-	`sha256:c368dcc533d668d2d87f3302dc8154a35665472a2afabda866b68367e8cfb2c8`  
		Last Modified: Sat, 31 Mar 2018 00:21:02 GMT  
		Size: 105.7 MB (105714843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037d23043c59bf1bc9bd056ba2c811677102f88fb41d74c773e0a432d8683a`  
		Last Modified: Sat, 31 Mar 2018 00:20:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64db6c96f106fb04d4dc3630dea5d43a78af77d9546d69dfe13677814d1985b`  
		Last Modified: Sat, 31 Mar 2018 00:20:37 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-windowsservercore`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:e80d321af9b2ee3d5761c2442a6fbe79272d392c22f6df3cfcd8dc9f72d3ce2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine` - linux; amd64

```console
$ docker pull golang@sha256:72683ff26be3c8029d416647c461bd99a55f370620d6b298dc37a38864555cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82632553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4288aa641f14100430872daf0bc4c4dfdba01e01c5329844e5eea483861c6fa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:41:32 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:41:33 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 30 Mar 2018 22:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:42:30 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:42:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:42:31 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:42:32 GMT
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
	-	`sha256:9abb15dfc23d5c085c21bf409d5dd677156ec2d7d5a715867ffb423bb1f5a02a`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef5960a5e15328bc7a5495b473e34ebd9e5d47eb8ec0e18a36c26b0edffe374`  
		Last Modified: Sat, 31 Mar 2018 00:37:12 GMT  
		Size: 80.3 MB (80287215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca15e438ee39d493b41678bd038d3bf2a2ccf43231e33082c11c6ce98f32cb7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e4136cfdc3a0ff6f86347b6c1476debc7b8eae944fad48f9d0020d02c85c7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:e80d321af9b2ee3d5761c2442a6fbe79272d392c22f6df3cfcd8dc9f72d3ce2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine3.6` - linux; amd64

```console
$ docker pull golang@sha256:72683ff26be3c8029d416647c461bd99a55f370620d6b298dc37a38864555cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82632553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4288aa641f14100430872daf0bc4c4dfdba01e01c5329844e5eea483861c6fa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:26:52 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:41:32 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:41:33 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 30 Mar 2018 22:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:42:30 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:42:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:42:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:42:31 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:42:32 GMT
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
	-	`sha256:9abb15dfc23d5c085c21bf409d5dd677156ec2d7d5a715867ffb423bb1f5a02a`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef5960a5e15328bc7a5495b473e34ebd9e5d47eb8ec0e18a36c26b0edffe374`  
		Last Modified: Sat, 31 Mar 2018 00:37:12 GMT  
		Size: 80.3 MB (80287215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca15e438ee39d493b41678bd038d3bf2a2ccf43231e33082c11c6ce98f32cb7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e4136cfdc3a0ff6f86347b6c1476debc7b8eae944fad48f9d0020d02c85c7`  
		Last Modified: Sat, 31 Mar 2018 00:36:46 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.7`

```console
$ docker pull golang@sha256:74f5de3943fb8481d268ab581823caacfad96615e4aee9be72a00ed4f6ed1d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:4522f0f62c442f0a26c7d4271c657d500b68769fb1d9b017c22dba2460d83960
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82656646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93c58bc3e6fb5f4a214069f1281321a8e9c05272c6acf016e690b0bf2b6e5e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 22:28:28 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:28:29 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Fri, 30 Mar 2018 22:29:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:29:25 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:29:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:29:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:29:26 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:29:26 GMT
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
	-	`sha256:9c23169dc53276c43c4895e4f80374cf2c1391103ebb47516b6f1e1bfd5eca71`  
		Last Modified: Sat, 31 Mar 2018 00:27:09 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c54490c43118a0f2c234217b360f2054bc2b1e24762017cd1c4ef95bf5b73b`  
		Last Modified: Sat, 31 Mar 2018 00:27:34 GMT  
		Size: 80.3 MB (80280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c382c51888ff78e0ca85fc1e58f5898713dc5911800cd94bb4f16a3cc2cec`  
		Last Modified: Sat, 31 Mar 2018 00:27:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4883e18ca246132fc72868fb73d0a0b9b1798718db020ad7be7e38f9ff9b4522`  
		Last Modified: Sat, 31 Mar 2018 00:27:08 GMT  
		Size: 1.4 KB (1356 bytes)  
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
$ docker pull golang@sha256:7d4bfa2b4456b8a7c533c5e43e171e6a94180bee830a71b583b8ac3b00f78507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1.9-stretch` - linux; amd64

```console
$ docker pull golang@sha256:139c8a00b71101774f7dbd5853781c375ac560051f930475811402eff44b0ddf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273872885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465fb154d13523d7ff719717e0bcf56d9c4fa0f0e6f1265d67c8d8d77e518fa`
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
# Fri, 30 Mar 2018 22:14:09 GMT
ENV GOLANG_VERSION=1.9.5
# Fri, 30 Mar 2018 22:14:23 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 22:14:23 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 22:14:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 22:14:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 22:14:24 GMT
WORKDIR /go
# Fri, 30 Mar 2018 22:14:25 GMT
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
	-	`sha256:c368dcc533d668d2d87f3302dc8154a35665472a2afabda866b68367e8cfb2c8`  
		Last Modified: Sat, 31 Mar 2018 00:21:02 GMT  
		Size: 105.7 MB (105714843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0037d23043c59bf1bc9bd056ba2c811677102f88fb41d74c773e0a432d8683a`  
		Last Modified: Sat, 31 Mar 2018 00:20:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64db6c96f106fb04d4dc3630dea5d43a78af77d9546d69dfe13677814d1985b`  
		Last Modified: Sat, 31 Mar 2018 00:20:37 GMT  
		Size: 1.4 KB (1366 bytes)  
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
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
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
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
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
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.7`

```console
$ docker pull golang@sha256:699e3adaf721758459dbfe48ea4ccc49eafb2e2fdf48554f23ad5fe08b937d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:bf4a9f2651c7101a4f5b4b13f0c980423fe517b179b32d4c30d2227aff968855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41bf3e9b9f3ce366afca4945c6a5336fd250f6b9a0a42426d6b5ea6e691de9b1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 30 Mar 2018 21:54:51 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:54:52 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Fri, 30 Mar 2018 21:56:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:56:15 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:56:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:56:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:56:16 GMT
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
	-	`sha256:dbfec4c268d3046f0d8c7366de7c2d507b6cc1f0cf84e490e20243b0c83df4e1`  
		Last Modified: Fri, 30 Mar 2018 23:27:34 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8bf0ccb1e4cb70011989041e65137fdabcb324cf23b3399c3eb50e487ed4b2`  
		Last Modified: Fri, 30 Mar 2018 23:28:06 GMT  
		Size: 113.3 MB (113261835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd3f01de64aed1b8b18c9583a6d837d41f282c8714683a6ed732d93aee5a229`  
		Last Modified: Fri, 30 Mar 2018 23:27:35 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
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
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
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
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
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
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
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

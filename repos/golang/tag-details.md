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
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.10` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.10.1` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-alpine`

```console
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.10.1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-alpine3.7`

```console
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.10.1-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-nanoserver`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.10.1-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.10.1-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10.1-stretch`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.10.1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-stretch` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10.1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
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
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
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

### `golang:1.10-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-alpine3.7`

```console
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
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

### `golang:1.10-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.10-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-nanoserver-sac2016`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.10-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.10-stretch`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
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

### `golang:1.10-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.10-stretch` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
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
$ docker pull golang@sha256:60acff4ca0f1699deab4717cae52bd6c8163cc0e86e9322e1aed5cb70f718081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:3ccf0feceaa0e8da6a8ede079ede67741f93ee75a262b93098672f444e634e1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238929524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3c79840e5c73d95447d506f2fa31d269d6c46eb434ccbb89e6c61b4be02ded`
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
# Mon, 02 Apr 2018 16:28:18 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:28:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:35 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:37 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:28:38 GMT
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
	-	`sha256:c92877ca4cc43cd41bed0a8b677aa3151e951c768fbb5d2995bee0ed10acd0bd`  
		Last Modified: Mon, 02 Apr 2018 16:30:12 GMT  
		Size: 91.1 MB (91093053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd917267efc0cb060c319b6b68df60a38085d2c9c36d077079728d8a7a1e9231`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f48fbc5c670ba23cb08da7ef3efd441b8938ed487082df66c29f231c49182`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4012b04dbc9dcdf1e6b144440cbba2f4446bbe90d30daace9a44bdd7b04f355c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243703465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405d732a7d995d8359c9c136474121a53c875d8b566320420867c321ccfa0b35`
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
# Mon, 02 Apr 2018 16:43:33 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:43:55 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:43:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:43:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:44:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:44:18 GMT
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
	-	`sha256:46d5b57ac5d9ebb1d972197485b19aaaa548f4b9cde09847f8c548511d5dde3c`  
		Last Modified: Mon, 02 Apr 2018 16:56:00 GMT  
		Size: 89.7 MB (89698290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf8c7e65aa7aecd16f7b34794321470d5dd8b5575fcec7c5cf780c3bb58a013`  
		Last Modified: Mon, 02 Apr 2018 16:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d031563d893877fbebe443db85d78e3f3d04192aba9eaf6c7a633c8c35e2f31d`  
		Last Modified: Mon, 02 Apr 2018 16:55:29 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; 386

```console
$ docker pull golang@sha256:e63e6f8d8bd17349df676d4398f3e7127151d5346fa165064fbaa653bf8a8432
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268534439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4dbf979b3961b55da4797fbc5fb33ef0365b792f37f81b308b4f8d255402538`
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
# Wed, 04 Apr 2018 05:23:01 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:23:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:23:17 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:23:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:23:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:23:19 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:23:20 GMT
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
	-	`sha256:dc26b5dcc93bea451fbfc34db880c9c6af796dd1cefb00c11072a2c0852147a1`  
		Last Modified: Wed, 04 Apr 2018 07:58:58 GMT  
		Size: 93.3 MB (93348662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51799262fbc63833a4ddb2149e8ddee122dfb7824085eca41bcba5f6d9fe5dc`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebf7c906857d3d150d908fbf69b89d4eeae60a67c5b35174df94a7fdfe60c7e`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; ppc64le

```console
$ docker pull golang@sha256:e592b734d09c555e3faffa85c8e1b4c36d649ed5aef55322f05361022a3c05b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251971769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad986b924dff1a0c5ac7691d48f57203257727765adc368a91095ddbe7d29c3`
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
# Mon, 02 Apr 2018 16:40:51 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:41:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:10 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:22 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:41:23 GMT
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
	-	`sha256:6a7bf5b560bb3338298553645504e963f85449da60070ccc645d5cb555b49d72`  
		Last Modified: Mon, 02 Apr 2018 16:49:19 GMT  
		Size: 89.2 MB (89199474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6b97b24ddf0382c54d2a7bdedc0dcf7438cccb923ad11ed9a77380ffa5cf65`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c85e6c65e8526d70eafb238cc83b63034d06a023311f28bd9989866080ef1`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9` - linux; s390x

```console
$ docker pull golang@sha256:dae4ad46a60c0996913b2a36c0250e8e982d7052c833173f0c95cc4ba1b07094
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245171183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f7b386daa6262a59f366f7ac203cfd9a5d1b610ac6b69a10e096a14b93097`
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
# Mon, 02 Apr 2018 16:45:16 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:33 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:34 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:34 GMT
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
	-	`sha256:0b8c7bc2281060a4ff5b768e0bcc6f304129c57bed90812b1156580246f5fc42`  
		Last Modified: Mon, 02 Apr 2018 16:52:54 GMT  
		Size: 88.9 MB (88860421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c8feada569f51ad48510e74cc5fa98527663e92038187646886c7d99067bc1`  
		Last Modified: Mon, 02 Apr 2018 16:52:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5c901bb734b222bca3127a09a40081f3d525a4d5f119513208508314a789b0`  
		Last Modified: Mon, 02 Apr 2018 16:52:30 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5`

```console
$ docker pull golang@sha256:60acff4ca0f1699deab4717cae52bd6c8163cc0e86e9322e1aed5cb70f718081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.9.5` - linux; arm variant v7

```console
$ docker pull golang@sha256:3ccf0feceaa0e8da6a8ede079ede67741f93ee75a262b93098672f444e634e1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238929524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3c79840e5c73d95447d506f2fa31d269d6c46eb434ccbb89e6c61b4be02ded`
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
# Mon, 02 Apr 2018 16:28:18 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:28:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:35 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:37 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:28:38 GMT
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
	-	`sha256:c92877ca4cc43cd41bed0a8b677aa3151e951c768fbb5d2995bee0ed10acd0bd`  
		Last Modified: Mon, 02 Apr 2018 16:30:12 GMT  
		Size: 91.1 MB (91093053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd917267efc0cb060c319b6b68df60a38085d2c9c36d077079728d8a7a1e9231`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f48fbc5c670ba23cb08da7ef3efd441b8938ed487082df66c29f231c49182`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4012b04dbc9dcdf1e6b144440cbba2f4446bbe90d30daace9a44bdd7b04f355c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243703465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405d732a7d995d8359c9c136474121a53c875d8b566320420867c321ccfa0b35`
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
# Mon, 02 Apr 2018 16:43:33 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:43:55 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:43:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:43:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:44:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:44:18 GMT
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
	-	`sha256:46d5b57ac5d9ebb1d972197485b19aaaa548f4b9cde09847f8c548511d5dde3c`  
		Last Modified: Mon, 02 Apr 2018 16:56:00 GMT  
		Size: 89.7 MB (89698290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf8c7e65aa7aecd16f7b34794321470d5dd8b5575fcec7c5cf780c3bb58a013`  
		Last Modified: Mon, 02 Apr 2018 16:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d031563d893877fbebe443db85d78e3f3d04192aba9eaf6c7a633c8c35e2f31d`  
		Last Modified: Mon, 02 Apr 2018 16:55:29 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5` - linux; 386

```console
$ docker pull golang@sha256:e63e6f8d8bd17349df676d4398f3e7127151d5346fa165064fbaa653bf8a8432
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268534439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4dbf979b3961b55da4797fbc5fb33ef0365b792f37f81b308b4f8d255402538`
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
# Wed, 04 Apr 2018 05:23:01 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:23:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:23:17 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:23:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:23:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:23:19 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:23:20 GMT
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
	-	`sha256:dc26b5dcc93bea451fbfc34db880c9c6af796dd1cefb00c11072a2c0852147a1`  
		Last Modified: Wed, 04 Apr 2018 07:58:58 GMT  
		Size: 93.3 MB (93348662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51799262fbc63833a4ddb2149e8ddee122dfb7824085eca41bcba5f6d9fe5dc`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebf7c906857d3d150d908fbf69b89d4eeae60a67c5b35174df94a7fdfe60c7e`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5` - linux; ppc64le

```console
$ docker pull golang@sha256:e592b734d09c555e3faffa85c8e1b4c36d649ed5aef55322f05361022a3c05b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251971769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad986b924dff1a0c5ac7691d48f57203257727765adc368a91095ddbe7d29c3`
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
# Mon, 02 Apr 2018 16:40:51 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:41:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:10 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:22 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:41:23 GMT
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
	-	`sha256:6a7bf5b560bb3338298553645504e963f85449da60070ccc645d5cb555b49d72`  
		Last Modified: Mon, 02 Apr 2018 16:49:19 GMT  
		Size: 89.2 MB (89199474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6b97b24ddf0382c54d2a7bdedc0dcf7438cccb923ad11ed9a77380ffa5cf65`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c85e6c65e8526d70eafb238cc83b63034d06a023311f28bd9989866080ef1`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5` - linux; s390x

```console
$ docker pull golang@sha256:dae4ad46a60c0996913b2a36c0250e8e982d7052c833173f0c95cc4ba1b07094
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245171183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f7b386daa6262a59f366f7ac203cfd9a5d1b610ac6b69a10e096a14b93097`
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
# Mon, 02 Apr 2018 16:45:16 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:33 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:34 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:34 GMT
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
	-	`sha256:0b8c7bc2281060a4ff5b768e0bcc6f304129c57bed90812b1156580246f5fc42`  
		Last Modified: Mon, 02 Apr 2018 16:52:54 GMT  
		Size: 88.9 MB (88860421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c8feada569f51ad48510e74cc5fa98527663e92038187646886c7d99067bc1`  
		Last Modified: Mon, 02 Apr 2018 16:52:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5c901bb734b222bca3127a09a40081f3d525a4d5f119513208508314a789b0`  
		Last Modified: Mon, 02 Apr 2018 16:52:30 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-alpine`

```console
$ docker pull golang@sha256:ecfe0c8480a72593a99160ddb2dec3764bb9edecb458e2be5eaccbf8ad633ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.9.5-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:2287f9e42a6d3182b9989b2d080ef9fc5b2af24b14e32b2448d80bc7323e1838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80411201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a4b956336db431705df091ba5befeebd08953fa4098a6ade900f75dbb0bc11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:11:42 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 17:11:43 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:11:45 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 17:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 17:25:40 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 17:25:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:25:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 17:25:48 GMT
WORKDIR /go
# Mon, 02 Apr 2018 17:25:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891ff73b3f10067032881bf89c7e694dfe2ad3a86edcf8a008585fdc0892f47`  
		Last Modified: Mon, 02 Apr 2018 17:31:53 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5818a2aa2badd839dfc176c204016cb2f3db2302f20dd124c65ffa91ae915bf`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec0a870a1a7041ca1c02a4c63a24f6ad254afc7334864245c0cb7bd416e76e9`  
		Last Modified: Mon, 02 Apr 2018 17:33:38 GMT  
		Size: 78.1 MB (78090212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e543702a6f7cb287d1349f9ebece3dc1dbc5a37e933d9c431aaa72566a53af6`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7146624189d2ce0e83fbf7bf1663c9a9d162bf231edb6889e3fe66b88eaec163`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c6bf9c52154204c93515d97c878e37f59852cf21b854f482f98b95469dc9dfcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d87e4849680946851b813ec7247e88925c7459053f355a9cf63ef8fc9a9140`
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
# Mon, 02 Apr 2018 16:47:19 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:20 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:18 GMT
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
	-	`sha256:050f2c0557297c3e21327173ea7480b7f03a11d947738af5d5134898ebd102e0`  
		Last Modified: Mon, 02 Apr 2018 16:58:22 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fe928e77e9b22f122dd8da25ab96dede1947dab17587f73a9938154080d778`  
		Last Modified: Mon, 02 Apr 2018 16:58:53 GMT  
		Size: 76.5 MB (76478260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f971b6750dbf80cc371c92df6795d9572153e30dc7fe0c3460a4118c047c831d`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b8fefb30d41744ef6a45c674641ebdeeb4fec764ca3eb1b6c763ab265fe587`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine` - linux; 386

```console
$ docker pull golang@sha256:49553c346b8f87bd57a847662f8441de7181e0d5a318d758cb73ec30f868ccb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81358794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a200de6e4ee7b51f6d23b9ee1bb8f0ee62ae1dbada1ba48128d1f0ba866f9b43`
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
# Wed, 04 Apr 2018 05:51:23 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:51:24 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:53:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:53:07 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:53:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:53:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:53:09 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:53:09 GMT
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
	-	`sha256:7a0089145cc5db4e50473f03657382f42088f3fa0f8f091fb5ae538057284834`  
		Last Modified: Wed, 04 Apr 2018 08:34:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2655b1789c65e92adefff3ebac84be2de23b107c6175541bfdad290dff6e3b`  
		Last Modified: Wed, 04 Apr 2018 08:35:16 GMT  
		Size: 79.0 MB (78958326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d18fe4f0f31d8586ec765adbc56e951e426236d04d09d1b1c366a0085b33a3`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b555d9c2f62b543319f1929f0f00b5f68877fb1b9fafc86f40b6f0284ce329`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:62a2a5c1865b3d72c11c2964f48f2bef7ac32f77a1959a13990f663ccc0da802
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78320414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cfd6a06819b2b8189fdc5636b52d6e2839923d99eab7942b02e276ed904d86`
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
# Mon, 02 Apr 2018 16:44:08 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:44:11 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:45:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:43 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:50 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:52 GMT
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
	-	`sha256:e884f4723eb4969d3cdf77d87912439aa0e27f1b0bfc1abff5acbf4cb6de927e`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f673700977237f84e0949c3c97ae355332a3f813d8fe0c715dac2a449a84ae9`  
		Last Modified: Mon, 02 Apr 2018 16:50:44 GMT  
		Size: 76.0 MB (75954759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a5fd6830ff4df38b4edbedf05f30c8935902335edbc893354ebe5f8af9238f`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a8f2e185fdc9dc1306ed61050bc140623d735df48bf314583fa02b88968494`  
		Last Modified: Mon, 02 Apr 2018 16:50:24 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine` - linux; s390x

```console
$ docker pull golang@sha256:0ddbd7b806e880f9f2facdd5903f37914be622ae0de1d5929016c9658f3d6ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82324895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f44691196926357056ffafc225b2e3e2760463373dec19ab6588dea39f08a6`
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
# Mon, 02 Apr 2018 16:47:35 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:36 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:30 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:31 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:31 GMT
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
	-	`sha256:42dc9b1df29faec691b5b8118cd847f42509e7b1482dc9fb08401d819556ea0e`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45cd4fc8c1c434f5b97681b9e4f152abd4dfd96b26047eb82cfdb7d758758b`  
		Last Modified: Mon, 02 Apr 2018 16:54:21 GMT  
		Size: 79.9 MB (79904146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c96458c44f1205911112b7d9cab1c3671a1605be4c00484aa7e2944fa433c0`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096e9d462e0ba90688bf7790e10a125f98e1c62cdc636ed1d5d505c0619a654`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-alpine3.6`

```console
$ docker pull golang@sha256:ecfe0c8480a72593a99160ddb2dec3764bb9edecb458e2be5eaccbf8ad633ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.9.5-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2287f9e42a6d3182b9989b2d080ef9fc5b2af24b14e32b2448d80bc7323e1838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80411201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a4b956336db431705df091ba5befeebd08953fa4098a6ade900f75dbb0bc11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:11:42 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 17:11:43 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:11:45 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 17:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 17:25:40 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 17:25:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:25:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 17:25:48 GMT
WORKDIR /go
# Mon, 02 Apr 2018 17:25:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891ff73b3f10067032881bf89c7e694dfe2ad3a86edcf8a008585fdc0892f47`  
		Last Modified: Mon, 02 Apr 2018 17:31:53 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5818a2aa2badd839dfc176c204016cb2f3db2302f20dd124c65ffa91ae915bf`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec0a870a1a7041ca1c02a4c63a24f6ad254afc7334864245c0cb7bd416e76e9`  
		Last Modified: Mon, 02 Apr 2018 17:33:38 GMT  
		Size: 78.1 MB (78090212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e543702a6f7cb287d1349f9ebece3dc1dbc5a37e933d9c431aaa72566a53af6`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7146624189d2ce0e83fbf7bf1663c9a9d162bf231edb6889e3fe66b88eaec163`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c6bf9c52154204c93515d97c878e37f59852cf21b854f482f98b95469dc9dfcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d87e4849680946851b813ec7247e88925c7459053f355a9cf63ef8fc9a9140`
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
# Mon, 02 Apr 2018 16:47:19 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:20 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:18 GMT
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
	-	`sha256:050f2c0557297c3e21327173ea7480b7f03a11d947738af5d5134898ebd102e0`  
		Last Modified: Mon, 02 Apr 2018 16:58:22 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fe928e77e9b22f122dd8da25ab96dede1947dab17587f73a9938154080d778`  
		Last Modified: Mon, 02 Apr 2018 16:58:53 GMT  
		Size: 76.5 MB (76478260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f971b6750dbf80cc371c92df6795d9572153e30dc7fe0c3460a4118c047c831d`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b8fefb30d41744ef6a45c674641ebdeeb4fec764ca3eb1b6c763ab265fe587`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:49553c346b8f87bd57a847662f8441de7181e0d5a318d758cb73ec30f868ccb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81358794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a200de6e4ee7b51f6d23b9ee1bb8f0ee62ae1dbada1ba48128d1f0ba866f9b43`
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
# Wed, 04 Apr 2018 05:51:23 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:51:24 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:53:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:53:07 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:53:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:53:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:53:09 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:53:09 GMT
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
	-	`sha256:7a0089145cc5db4e50473f03657382f42088f3fa0f8f091fb5ae538057284834`  
		Last Modified: Wed, 04 Apr 2018 08:34:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2655b1789c65e92adefff3ebac84be2de23b107c6175541bfdad290dff6e3b`  
		Last Modified: Wed, 04 Apr 2018 08:35:16 GMT  
		Size: 79.0 MB (78958326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d18fe4f0f31d8586ec765adbc56e951e426236d04d09d1b1c366a0085b33a3`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b555d9c2f62b543319f1929f0f00b5f68877fb1b9fafc86f40b6f0284ce329`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:62a2a5c1865b3d72c11c2964f48f2bef7ac32f77a1959a13990f663ccc0da802
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78320414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cfd6a06819b2b8189fdc5636b52d6e2839923d99eab7942b02e276ed904d86`
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
# Mon, 02 Apr 2018 16:44:08 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:44:11 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:45:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:43 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:50 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:52 GMT
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
	-	`sha256:e884f4723eb4969d3cdf77d87912439aa0e27f1b0bfc1abff5acbf4cb6de927e`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f673700977237f84e0949c3c97ae355332a3f813d8fe0c715dac2a449a84ae9`  
		Last Modified: Mon, 02 Apr 2018 16:50:44 GMT  
		Size: 76.0 MB (75954759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a5fd6830ff4df38b4edbedf05f30c8935902335edbc893354ebe5f8af9238f`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a8f2e185fdc9dc1306ed61050bc140623d735df48bf314583fa02b88968494`  
		Last Modified: Mon, 02 Apr 2018 16:50:24 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:0ddbd7b806e880f9f2facdd5903f37914be622ae0de1d5929016c9658f3d6ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82324895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f44691196926357056ffafc225b2e3e2760463373dec19ab6588dea39f08a6`
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
# Mon, 02 Apr 2018 16:47:35 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:36 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:30 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:31 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:31 GMT
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
	-	`sha256:42dc9b1df29faec691b5b8118cd847f42509e7b1482dc9fb08401d819556ea0e`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45cd4fc8c1c434f5b97681b9e4f152abd4dfd96b26047eb82cfdb7d758758b`  
		Last Modified: Mon, 02 Apr 2018 16:54:21 GMT  
		Size: 79.9 MB (79904146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c96458c44f1205911112b7d9cab1c3671a1605be4c00484aa7e2944fa433c0`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096e9d462e0ba90688bf7790e10a125f98e1c62cdc636ed1d5d505c0619a654`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-alpine3.7`

```console
$ docker pull golang@sha256:08062987b8e4fba1d65d2e7def917b2268fcafda1d4b1d8f013bb1e6d993caf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.9.5-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:ed8a755c871598c34e97f6ab32b6096568869c1ba76c485c170b4c263daed1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79789159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569cf9fae4aa14d1a5c76dd172b45e99cb5546ce2c0621529d245711d747f784`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:58:47 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:58:49 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 17:11:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 17:11:09 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 17:11:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:11:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 17:11:14 GMT
WORKDIR /go
# Mon, 02 Apr 2018 17:11:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c99d08fc94ee6b058f9a23e4cd419a4017fed0c9fb609b866d316e4301d5b5f`  
		Last Modified: Mon, 02 Apr 2018 17:29:44 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7362df7fcdaa368d0816b1c6e46262f243bd7d003b06f6a5000e033bf6e496f0`  
		Last Modified: Mon, 02 Apr 2018 17:31:35 GMT  
		Size: 77.4 MB (77439114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef8eeead651a3b3c1c34bc5193dda91c15cc7c5f81c50329aadf67f0d4b11d7`  
		Last Modified: Mon, 02 Apr 2018 17:29:43 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8bd5f54072da521558698f2f24c778f66a9945398f4e5121a26174843420f3`  
		Last Modified: Mon, 02 Apr 2018 17:29:43 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:3b58c7c268ab16467d1a91a9a0a08243a7be35f8d5cf0df45debaaef3571b36c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78173766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0850bf9a62d7ec32c68c25a73cd09e64467bfc5a68fa09ea3f10bf8183976d`
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
# Mon, 02 Apr 2018 16:45:01 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:02 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:46:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:46:43 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:46:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:46:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:46:46 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:46:47 GMT
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
	-	`sha256:d33525319e9566641c64a7b6aae568e0beec12d33437327f501fc43cbb706f0e`  
		Last Modified: Mon, 02 Apr 2018 16:56:48 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dc22f6b8785323986573b0df892ac128565f68cfaeb6c6ea4b8aa216eb3a26`  
		Last Modified: Mon, 02 Apr 2018 16:57:20 GMT  
		Size: 75.9 MB (75873922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12552c21a94f4dbae78013076c5e3349e1868cb7cd36977cdbcc4d5018646307`  
		Last Modified: Mon, 02 Apr 2018 16:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e45925b9fdfccc892ee66f7fc08b2554fbd200485ab7c92f82e34cd75300666`  
		Last Modified: Mon, 02 Apr 2018 16:56:48 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:e10adfa6597441a0846358bb78a94a0007bbf0488ff7be70a0b8733bc9efe84f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80795740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909f237acba8e2bad9e4c81c78eb364c0b6ba477fbea4a3c8815bd6b9393aad1`
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
# Wed, 04 Apr 2018 05:36:25 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:36:25 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:37:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:37:51 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:37:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:37:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:37:52 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:37:52 GMT
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
	-	`sha256:3ee6543993e28c5158074c05423fe24a01cdd895566023f46423a75352bfaa4b`  
		Last Modified: Wed, 04 Apr 2018 08:18:23 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f02179ab595bf5c4dde24590efd73170fbb4091483fad3044e49c63b017dd4`  
		Last Modified: Wed, 04 Apr 2018 08:18:52 GMT  
		Size: 78.4 MB (78358002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e6544799912f31c9531b187c3db96c23cab03815a776d52d93841e62794c7c`  
		Last Modified: Wed, 04 Apr 2018 08:18:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23188cfe28d8144a00568ff80b6769bb00130a8a293f3e04227279404fda467`  
		Last Modified: Wed, 04 Apr 2018 08:18:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:e40c2c837f3c30bcd3a5c9d8b015fd9a40c6f58b0ce4adaea809c253852379d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77715544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be3d836779b89d5766a56902591469ac9725c8a001de102f3fc065826f9ef254`
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
# Mon, 02 Apr 2018 16:41:37 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:41:41 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:43:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:43:33 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:43:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:43:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:43:51 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:43:53 GMT
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
	-	`sha256:41e695efc1e9b4d63acd3897bb9abb25e8c00affb91caa462396ade698eb8196`  
		Last Modified: Mon, 02 Apr 2018 16:49:41 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44be99b48a613f4fadbaa51316decf7fe7834b3fd777a9ce2de4c6712886ef`  
		Last Modified: Mon, 02 Apr 2018 16:50:02 GMT  
		Size: 75.3 MB (75320639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e04afa31d99d29765092f356e1cb089c0650461356bdcb8215c7a842f3584f`  
		Last Modified: Mon, 02 Apr 2018 16:49:41 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c0e859016db349e592719a4ea2cd4e8a56a761d0323ac6ff8dd191e3d96c11`  
		Last Modified: Mon, 02 Apr 2018 16:49:41 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:2dc2670c51e21198dfdb844982ba81622ed67317275d48c044564e333e8fb470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81965579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f4e557d61c54bb9793d329cb4a1a73b5e7c87d52273f1f792ea220f8490bc`
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
# Mon, 02 Apr 2018 16:45:41 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:42 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:47:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:47:21 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:47:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:47:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:47:23 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:47:24 GMT
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
	-	`sha256:040734f132ae44b29a8c263067ee31220b22c276b54c96621a4c0fe86847eafe`  
		Last Modified: Mon, 02 Apr 2018 16:53:11 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a133951ed712cebd38f93f4ab7ca676a5c43f22c0a444d930777d20ba911726`  
		Last Modified: Mon, 02 Apr 2018 16:53:36 GMT  
		Size: 79.5 MB (79468420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9035e0a7ac956f4768d6a6e98094cff106f28de1e1b5e20bad5835925efb6c76`  
		Last Modified: Mon, 02 Apr 2018 16:53:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6fb0ec3945dc891c53e6ea4b9eb3717d21ab8e12871162a4424e6d7e3c8e1`  
		Last Modified: Mon, 02 Apr 2018 16:53:11 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-nanoserver`

```console
$ docker pull golang@sha256:96978509c841313dfae10601e1832532ee8ecc00ba0b0ebe6f1c2df4d76faf48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.9.5-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:7373ea1e37d75672035ff81cb6785547c57e13e29c4e6559fe64a4382dce7933
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.3 MB (517272229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb02e32ecdd3ed1c8918b3dd5ae8179447b5fb98890b90d0cb0c76ebefac53d2`
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
# Mon, 02 Apr 2018 17:00:14 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:04:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 17:04:17 GMT
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
	-	`sha256:86600c9895e90806a04de4e14109d3cd1d4d65919cd54f5e6e34d7cacddbbfec`  
		Last Modified: Mon, 02 Apr 2018 17:06:18 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa4959d51c28f3f486a56c63e826443973ace2df76b4e5b5ebef837ee5c630`  
		Last Modified: Mon, 02 Apr 2018 17:07:28 GMT  
		Size: 107.7 MB (107725901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9240df7199e56cdc0a1fcf80f7f912d72c8c309c9353a8997cc23d6f8b3a055`  
		Last Modified: Mon, 02 Apr 2018 17:06:17 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-nanoserver-sac2016`

```console
$ docker pull golang@sha256:96978509c841313dfae10601e1832532ee8ecc00ba0b0ebe6f1c2df4d76faf48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.9.5-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:7373ea1e37d75672035ff81cb6785547c57e13e29c4e6559fe64a4382dce7933
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.3 MB (517272229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb02e32ecdd3ed1c8918b3dd5ae8179447b5fb98890b90d0cb0c76ebefac53d2`
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
# Mon, 02 Apr 2018 17:00:14 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:04:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 17:04:17 GMT
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
	-	`sha256:86600c9895e90806a04de4e14109d3cd1d4d65919cd54f5e6e34d7cacddbbfec`  
		Last Modified: Mon, 02 Apr 2018 17:06:18 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa4959d51c28f3f486a56c63e826443973ace2df76b4e5b5ebef837ee5c630`  
		Last Modified: Mon, 02 Apr 2018 17:07:28 GMT  
		Size: 107.7 MB (107725901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9240df7199e56cdc0a1fcf80f7f912d72c8c309c9353a8997cc23d6f8b3a055`  
		Last Modified: Mon, 02 Apr 2018 17:06:17 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-stretch`

```console
$ docker pull golang@sha256:60acff4ca0f1699deab4717cae52bd6c8163cc0e86e9322e1aed5cb70f718081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:1.9.5-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:3ccf0feceaa0e8da6a8ede079ede67741f93ee75a262b93098672f444e634e1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238929524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3c79840e5c73d95447d506f2fa31d269d6c46eb434ccbb89e6c61b4be02ded`
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
# Mon, 02 Apr 2018 16:28:18 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:28:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:35 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:37 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:28:38 GMT
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
	-	`sha256:c92877ca4cc43cd41bed0a8b677aa3151e951c768fbb5d2995bee0ed10acd0bd`  
		Last Modified: Mon, 02 Apr 2018 16:30:12 GMT  
		Size: 91.1 MB (91093053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd917267efc0cb060c319b6b68df60a38085d2c9c36d077079728d8a7a1e9231`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f48fbc5c670ba23cb08da7ef3efd441b8938ed487082df66c29f231c49182`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4012b04dbc9dcdf1e6b144440cbba2f4446bbe90d30daace9a44bdd7b04f355c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243703465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405d732a7d995d8359c9c136474121a53c875d8b566320420867c321ccfa0b35`
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
# Mon, 02 Apr 2018 16:43:33 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:43:55 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:43:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:43:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:44:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:44:18 GMT
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
	-	`sha256:46d5b57ac5d9ebb1d972197485b19aaaa548f4b9cde09847f8c548511d5dde3c`  
		Last Modified: Mon, 02 Apr 2018 16:56:00 GMT  
		Size: 89.7 MB (89698290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf8c7e65aa7aecd16f7b34794321470d5dd8b5575fcec7c5cf780c3bb58a013`  
		Last Modified: Mon, 02 Apr 2018 16:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d031563d893877fbebe443db85d78e3f3d04192aba9eaf6c7a633c8c35e2f31d`  
		Last Modified: Mon, 02 Apr 2018 16:55:29 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-stretch` - linux; 386

```console
$ docker pull golang@sha256:e63e6f8d8bd17349df676d4398f3e7127151d5346fa165064fbaa653bf8a8432
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268534439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4dbf979b3961b55da4797fbc5fb33ef0365b792f37f81b308b4f8d255402538`
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
# Wed, 04 Apr 2018 05:23:01 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:23:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:23:17 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:23:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:23:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:23:19 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:23:20 GMT
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
	-	`sha256:dc26b5dcc93bea451fbfc34db880c9c6af796dd1cefb00c11072a2c0852147a1`  
		Last Modified: Wed, 04 Apr 2018 07:58:58 GMT  
		Size: 93.3 MB (93348662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51799262fbc63833a4ddb2149e8ddee122dfb7824085eca41bcba5f6d9fe5dc`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebf7c906857d3d150d908fbf69b89d4eeae60a67c5b35174df94a7fdfe60c7e`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:e592b734d09c555e3faffa85c8e1b4c36d649ed5aef55322f05361022a3c05b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251971769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad986b924dff1a0c5ac7691d48f57203257727765adc368a91095ddbe7d29c3`
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
# Mon, 02 Apr 2018 16:40:51 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:41:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:10 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:22 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:41:23 GMT
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
	-	`sha256:6a7bf5b560bb3338298553645504e963f85449da60070ccc645d5cb555b49d72`  
		Last Modified: Mon, 02 Apr 2018 16:49:19 GMT  
		Size: 89.2 MB (89199474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6b97b24ddf0382c54d2a7bdedc0dcf7438cccb923ad11ed9a77380ffa5cf65`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c85e6c65e8526d70eafb238cc83b63034d06a023311f28bd9989866080ef1`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9.5-stretch` - linux; s390x

```console
$ docker pull golang@sha256:dae4ad46a60c0996913b2a36c0250e8e982d7052c833173f0c95cc4ba1b07094
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245171183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f7b386daa6262a59f366f7ac203cfd9a5d1b610ac6b69a10e096a14b93097`
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
# Mon, 02 Apr 2018 16:45:16 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:33 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:34 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:34 GMT
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
	-	`sha256:0b8c7bc2281060a4ff5b768e0bcc6f304129c57bed90812b1156580246f5fc42`  
		Last Modified: Mon, 02 Apr 2018 16:52:54 GMT  
		Size: 88.9 MB (88860421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c8feada569f51ad48510e74cc5fa98527663e92038187646886c7d99067bc1`  
		Last Modified: Mon, 02 Apr 2018 16:52:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5c901bb734b222bca3127a09a40081f3d525a4d5f119513208508314a789b0`  
		Last Modified: Mon, 02 Apr 2018 16:52:30 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9.5-windowsservercore`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore-1709`

**does not exist** (yet?)

## `golang:1.9.5-windowsservercore-ltsc2016`

**does not exist** (yet?)

## `golang:1.9-alpine`

```console
$ docker pull golang@sha256:ecfe0c8480a72593a99160ddb2dec3764bb9edecb458e2be5eaccbf8ad633ac4
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

### `golang:1.9-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:2287f9e42a6d3182b9989b2d080ef9fc5b2af24b14e32b2448d80bc7323e1838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80411201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a4b956336db431705df091ba5befeebd08953fa4098a6ade900f75dbb0bc11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:11:42 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 17:11:43 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:11:45 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 17:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 17:25:40 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 17:25:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:25:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 17:25:48 GMT
WORKDIR /go
# Mon, 02 Apr 2018 17:25:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891ff73b3f10067032881bf89c7e694dfe2ad3a86edcf8a008585fdc0892f47`  
		Last Modified: Mon, 02 Apr 2018 17:31:53 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5818a2aa2badd839dfc176c204016cb2f3db2302f20dd124c65ffa91ae915bf`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec0a870a1a7041ca1c02a4c63a24f6ad254afc7334864245c0cb7bd416e76e9`  
		Last Modified: Mon, 02 Apr 2018 17:33:38 GMT  
		Size: 78.1 MB (78090212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e543702a6f7cb287d1349f9ebece3dc1dbc5a37e933d9c431aaa72566a53af6`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7146624189d2ce0e83fbf7bf1663c9a9d162bf231edb6889e3fe66b88eaec163`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c6bf9c52154204c93515d97c878e37f59852cf21b854f482f98b95469dc9dfcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d87e4849680946851b813ec7247e88925c7459053f355a9cf63ef8fc9a9140`
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
# Mon, 02 Apr 2018 16:47:19 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:20 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:18 GMT
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
	-	`sha256:050f2c0557297c3e21327173ea7480b7f03a11d947738af5d5134898ebd102e0`  
		Last Modified: Mon, 02 Apr 2018 16:58:22 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fe928e77e9b22f122dd8da25ab96dede1947dab17587f73a9938154080d778`  
		Last Modified: Mon, 02 Apr 2018 16:58:53 GMT  
		Size: 76.5 MB (76478260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f971b6750dbf80cc371c92df6795d9572153e30dc7fe0c3460a4118c047c831d`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b8fefb30d41744ef6a45c674641ebdeeb4fec764ca3eb1b6c763ab265fe587`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; 386

```console
$ docker pull golang@sha256:49553c346b8f87bd57a847662f8441de7181e0d5a318d758cb73ec30f868ccb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81358794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a200de6e4ee7b51f6d23b9ee1bb8f0ee62ae1dbada1ba48128d1f0ba866f9b43`
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
# Wed, 04 Apr 2018 05:51:23 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:51:24 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:53:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:53:07 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:53:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:53:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:53:09 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:53:09 GMT
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
	-	`sha256:7a0089145cc5db4e50473f03657382f42088f3fa0f8f091fb5ae538057284834`  
		Last Modified: Wed, 04 Apr 2018 08:34:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2655b1789c65e92adefff3ebac84be2de23b107c6175541bfdad290dff6e3b`  
		Last Modified: Wed, 04 Apr 2018 08:35:16 GMT  
		Size: 79.0 MB (78958326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d18fe4f0f31d8586ec765adbc56e951e426236d04d09d1b1c366a0085b33a3`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b555d9c2f62b543319f1929f0f00b5f68877fb1b9fafc86f40b6f0284ce329`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:62a2a5c1865b3d72c11c2964f48f2bef7ac32f77a1959a13990f663ccc0da802
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78320414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cfd6a06819b2b8189fdc5636b52d6e2839923d99eab7942b02e276ed904d86`
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
# Mon, 02 Apr 2018 16:44:08 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:44:11 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:45:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:43 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:50 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:52 GMT
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
	-	`sha256:e884f4723eb4969d3cdf77d87912439aa0e27f1b0bfc1abff5acbf4cb6de927e`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f673700977237f84e0949c3c97ae355332a3f813d8fe0c715dac2a449a84ae9`  
		Last Modified: Mon, 02 Apr 2018 16:50:44 GMT  
		Size: 76.0 MB (75954759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a5fd6830ff4df38b4edbedf05f30c8935902335edbc893354ebe5f8af9238f`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a8f2e185fdc9dc1306ed61050bc140623d735df48bf314583fa02b88968494`  
		Last Modified: Mon, 02 Apr 2018 16:50:24 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine` - linux; s390x

```console
$ docker pull golang@sha256:0ddbd7b806e880f9f2facdd5903f37914be622ae0de1d5929016c9658f3d6ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82324895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f44691196926357056ffafc225b2e3e2760463373dec19ab6588dea39f08a6`
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
# Mon, 02 Apr 2018 16:47:35 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:36 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:30 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:31 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:31 GMT
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
	-	`sha256:42dc9b1df29faec691b5b8118cd847f42509e7b1482dc9fb08401d819556ea0e`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45cd4fc8c1c434f5b97681b9e4f152abd4dfd96b26047eb82cfdb7d758758b`  
		Last Modified: Mon, 02 Apr 2018 16:54:21 GMT  
		Size: 79.9 MB (79904146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c96458c44f1205911112b7d9cab1c3671a1605be4c00484aa7e2944fa433c0`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096e9d462e0ba90688bf7790e10a125f98e1c62cdc636ed1d5d505c0619a654`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.6`

```console
$ docker pull golang@sha256:ecfe0c8480a72593a99160ddb2dec3764bb9edecb458e2be5eaccbf8ad633ac4
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

### `golang:1.9-alpine3.6` - linux; arm variant v6

```console
$ docker pull golang@sha256:2287f9e42a6d3182b9989b2d080ef9fc5b2af24b14e32b2448d80bc7323e1838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80411201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a4b956336db431705df091ba5befeebd08953fa4098a6ade900f75dbb0bc11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:11:42 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 17:11:43 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:11:45 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 17:25:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 17:25:40 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 17:25:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:25:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 17:25:48 GMT
WORKDIR /go
# Mon, 02 Apr 2018 17:25:50 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891ff73b3f10067032881bf89c7e694dfe2ad3a86edcf8a008585fdc0892f47`  
		Last Modified: Mon, 02 Apr 2018 17:31:53 GMT  
		Size: 352.2 KB (352171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5818a2aa2badd839dfc176c204016cb2f3db2302f20dd124c65ffa91ae915bf`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec0a870a1a7041ca1c02a4c63a24f6ad254afc7334864245c0cb7bd416e76e9`  
		Last Modified: Mon, 02 Apr 2018 17:33:38 GMT  
		Size: 78.1 MB (78090212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e543702a6f7cb287d1349f9ebece3dc1dbc5a37e933d9c431aaa72566a53af6`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7146624189d2ce0e83fbf7bf1663c9a9d162bf231edb6889e3fe66b88eaec163`  
		Last Modified: Mon, 02 Apr 2018 17:31:52 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c6bf9c52154204c93515d97c878e37f59852cf21b854f482f98b95469dc9dfcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.7 MB (78747280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d87e4849680946851b813ec7247e88925c7459053f355a9cf63ef8fc9a9140`
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
# Mon, 02 Apr 2018 16:47:19 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:20 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:17 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:18 GMT
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
	-	`sha256:050f2c0557297c3e21327173ea7480b7f03a11d947738af5d5134898ebd102e0`  
		Last Modified: Mon, 02 Apr 2018 16:58:22 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fe928e77e9b22f122dd8da25ab96dede1947dab17587f73a9938154080d778`  
		Last Modified: Mon, 02 Apr 2018 16:58:53 GMT  
		Size: 76.5 MB (76478260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f971b6750dbf80cc371c92df6795d9572153e30dc7fe0c3460a4118c047c831d`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b8fefb30d41744ef6a45c674641ebdeeb4fec764ca3eb1b6c763ab265fe587`  
		Last Modified: Mon, 02 Apr 2018 16:58:21 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; 386

```console
$ docker pull golang@sha256:49553c346b8f87bd57a847662f8441de7181e0d5a318d758cb73ec30f868ccb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81358794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a200de6e4ee7b51f6d23b9ee1bb8f0ee62ae1dbada1ba48128d1f0ba866f9b43`
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
# Wed, 04 Apr 2018 05:51:23 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:51:24 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:53:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:53:07 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:53:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:53:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:53:09 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:53:09 GMT
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
	-	`sha256:7a0089145cc5db4e50473f03657382f42088f3fa0f8f091fb5ae538057284834`  
		Last Modified: Wed, 04 Apr 2018 08:34:46 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2655b1789c65e92adefff3ebac84be2de23b107c6175541bfdad290dff6e3b`  
		Last Modified: Wed, 04 Apr 2018 08:35:16 GMT  
		Size: 79.0 MB (78958326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d18fe4f0f31d8586ec765adbc56e951e426236d04d09d1b1c366a0085b33a3`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b555d9c2f62b543319f1929f0f00b5f68877fb1b9fafc86f40b6f0284ce329`  
		Last Modified: Wed, 04 Apr 2018 08:34:45 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; ppc64le

```console
$ docker pull golang@sha256:62a2a5c1865b3d72c11c2964f48f2bef7ac32f77a1959a13990f663ccc0da802
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78320414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8cfd6a06819b2b8189fdc5636b52d6e2839923d99eab7942b02e276ed904d86`
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
# Mon, 02 Apr 2018 16:44:08 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:44:11 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:45:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:43 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:50 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:52 GMT
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
	-	`sha256:e884f4723eb4969d3cdf77d87912439aa0e27f1b0bfc1abff5acbf4cb6de927e`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f673700977237f84e0949c3c97ae355332a3f813d8fe0c715dac2a449a84ae9`  
		Last Modified: Mon, 02 Apr 2018 16:50:44 GMT  
		Size: 76.0 MB (75954759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a5fd6830ff4df38b4edbedf05f30c8935902335edbc893354ebe5f8af9238f`  
		Last Modified: Mon, 02 Apr 2018 16:50:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a8f2e185fdc9dc1306ed61050bc140623d735df48bf314583fa02b88968494`  
		Last Modified: Mon, 02 Apr 2018 16:50:24 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.6` - linux; s390x

```console
$ docker pull golang@sha256:0ddbd7b806e880f9f2facdd5903f37914be622ae0de1d5929016c9658f3d6ce3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82324895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f44691196926357056ffafc225b2e3e2760463373dec19ab6588dea39f08a6`
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
# Mon, 02 Apr 2018 16:47:35 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:47:36 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:49:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:49:30 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:49:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:49:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:49:31 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:49:31 GMT
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
	-	`sha256:42dc9b1df29faec691b5b8118cd847f42509e7b1482dc9fb08401d819556ea0e`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b45cd4fc8c1c434f5b97681b9e4f152abd4dfd96b26047eb82cfdb7d758758b`  
		Last Modified: Mon, 02 Apr 2018 16:54:21 GMT  
		Size: 79.9 MB (79904146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c96458c44f1205911112b7d9cab1c3671a1605be4c00484aa7e2944fa433c0`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096e9d462e0ba90688bf7790e10a125f98e1c62cdc636ed1d5d505c0619a654`  
		Last Modified: Mon, 02 Apr 2018 16:53:57 GMT  
		Size: 1.4 KB (1355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-alpine3.7`

```console
$ docker pull golang@sha256:08062987b8e4fba1d65d2e7def917b2268fcafda1d4b1d8f013bb1e6d993caf0
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

### `golang:1.9-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:ed8a755c871598c34e97f6ab32b6096568869c1ba76c485c170b4c263daed1f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79789159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569cf9fae4aa14d1a5c76dd172b45e99cb5546ce2c0621529d245711d747f784`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:58:47 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:58:49 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 17:11:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 17:11:09 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 17:11:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:11:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 17:11:14 GMT
WORKDIR /go
# Mon, 02 Apr 2018 17:11:15 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c99d08fc94ee6b058f9a23e4cd419a4017fed0c9fb609b866d316e4301d5b5f`  
		Last Modified: Mon, 02 Apr 2018 17:29:44 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7362df7fcdaa368d0816b1c6e46262f243bd7d003b06f6a5000e033bf6e496f0`  
		Last Modified: Mon, 02 Apr 2018 17:31:35 GMT  
		Size: 77.4 MB (77439114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef8eeead651a3b3c1c34bc5193dda91c15cc7c5f81c50329aadf67f0d4b11d7`  
		Last Modified: Mon, 02 Apr 2018 17:29:43 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8bd5f54072da521558698f2f24c778f66a9945398f4e5121a26174843420f3`  
		Last Modified: Mon, 02 Apr 2018 17:29:43 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:3b58c7c268ab16467d1a91a9a0a08243a7be35f8d5cf0df45debaaef3571b36c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78173766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0850bf9a62d7ec32c68c25a73cd09e64467bfc5a68fa09ea3f10bf8183976d`
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
# Mon, 02 Apr 2018 16:45:01 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:02 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:46:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:46:43 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:46:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:46:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:46:46 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:46:47 GMT
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
	-	`sha256:d33525319e9566641c64a7b6aae568e0beec12d33437327f501fc43cbb706f0e`  
		Last Modified: Mon, 02 Apr 2018 16:56:48 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dc22f6b8785323986573b0df892ac128565f68cfaeb6c6ea4b8aa216eb3a26`  
		Last Modified: Mon, 02 Apr 2018 16:57:20 GMT  
		Size: 75.9 MB (75873922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12552c21a94f4dbae78013076c5e3349e1868cb7cd36977cdbcc4d5018646307`  
		Last Modified: Mon, 02 Apr 2018 16:56:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e45925b9fdfccc892ee66f7fc08b2554fbd200485ab7c92f82e34cd75300666`  
		Last Modified: Mon, 02 Apr 2018 16:56:48 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:e10adfa6597441a0846358bb78a94a0007bbf0488ff7be70a0b8733bc9efe84f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80795740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909f237acba8e2bad9e4c81c78eb364c0b6ba477fbea4a3c8815bd6b9393aad1`
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
# Wed, 04 Apr 2018 05:36:25 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:36:25 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:37:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:37:51 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:37:51 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:37:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:37:52 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:37:52 GMT
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
	-	`sha256:3ee6543993e28c5158074c05423fe24a01cdd895566023f46423a75352bfaa4b`  
		Last Modified: Wed, 04 Apr 2018 08:18:23 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f02179ab595bf5c4dde24590efd73170fbb4091483fad3044e49c63b017dd4`  
		Last Modified: Wed, 04 Apr 2018 08:18:52 GMT  
		Size: 78.4 MB (78358002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e6544799912f31c9531b187c3db96c23cab03815a776d52d93841e62794c7c`  
		Last Modified: Wed, 04 Apr 2018 08:18:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23188cfe28d8144a00568ff80b6769bb00130a8a293f3e04227279404fda467`  
		Last Modified: Wed, 04 Apr 2018 08:18:23 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:e40c2c837f3c30bcd3a5c9d8b015fd9a40c6f58b0ce4adaea809c253852379d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77715544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be3d836779b89d5766a56902591469ac9725c8a001de102f3fc065826f9ef254`
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
# Mon, 02 Apr 2018 16:41:37 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:41:41 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:43:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:43:33 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:43:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:43:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:43:51 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:43:53 GMT
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
	-	`sha256:41e695efc1e9b4d63acd3897bb9abb25e8c00affb91caa462396ade698eb8196`  
		Last Modified: Mon, 02 Apr 2018 16:49:41 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44be99b48a613f4fadbaa51316decf7fe7834b3fd777a9ce2de4c6712886ef`  
		Last Modified: Mon, 02 Apr 2018 16:50:02 GMT  
		Size: 75.3 MB (75320639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e04afa31d99d29765092f356e1cb089c0650461356bdcb8215c7a842f3584f`  
		Last Modified: Mon, 02 Apr 2018 16:49:41 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c0e859016db349e592719a4ea2cd4e8a56a761d0323ac6ff8dd191e3d96c11`  
		Last Modified: Mon, 02 Apr 2018 16:49:41 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:2dc2670c51e21198dfdb844982ba81622ed67317275d48c044564e333e8fb470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81965579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f4e557d61c54bb9793d329cb4a1a73b5e7c87d52273f1f792ea220f8490bc`
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
# Mon, 02 Apr 2018 16:45:41 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:42 GMT
COPY multi:5340852d126c59a835fc30c4253b181919d512298cbb0226c1562e4ec4eba94c in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:47:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:47:21 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:47:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:47:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:47:23 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:47:24 GMT
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
	-	`sha256:040734f132ae44b29a8c263067ee31220b22c276b54c96621a4c0fe86847eafe`  
		Last Modified: Mon, 02 Apr 2018 16:53:11 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a133951ed712cebd38f93f4ab7ca676a5c43f22c0a444d930777d20ba911726`  
		Last Modified: Mon, 02 Apr 2018 16:53:36 GMT  
		Size: 79.5 MB (79468420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9035e0a7ac956f4768d6a6e98094cff106f28de1e1b5e20bad5835925efb6c76`  
		Last Modified: Mon, 02 Apr 2018 16:53:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6fb0ec3945dc891c53e6ea4b9eb3717d21ab8e12871162a4424e6d7e3c8e1`  
		Last Modified: Mon, 02 Apr 2018 16:53:11 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver`

```console
$ docker pull golang@sha256:96978509c841313dfae10601e1832532ee8ecc00ba0b0ebe6f1c2df4d76faf48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.9-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:7373ea1e37d75672035ff81cb6785547c57e13e29c4e6559fe64a4382dce7933
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.3 MB (517272229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb02e32ecdd3ed1c8918b3dd5ae8179447b5fb98890b90d0cb0c76ebefac53d2`
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
# Mon, 02 Apr 2018 17:00:14 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:04:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 17:04:17 GMT
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
	-	`sha256:86600c9895e90806a04de4e14109d3cd1d4d65919cd54f5e6e34d7cacddbbfec`  
		Last Modified: Mon, 02 Apr 2018 17:06:18 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa4959d51c28f3f486a56c63e826443973ace2df76b4e5b5ebef837ee5c630`  
		Last Modified: Mon, 02 Apr 2018 17:07:28 GMT  
		Size: 107.7 MB (107725901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9240df7199e56cdc0a1fcf80f7f912d72c8c309c9353a8997cc23d6f8b3a055`  
		Last Modified: Mon, 02 Apr 2018 17:06:17 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-nanoserver-sac2016`

```console
$ docker pull golang@sha256:96978509c841313dfae10601e1832532ee8ecc00ba0b0ebe6f1c2df4d76faf48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1.9-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:7373ea1e37d75672035ff81cb6785547c57e13e29c4e6559fe64a4382dce7933
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.3 MB (517272229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb02e32ecdd3ed1c8918b3dd5ae8179447b5fb98890b90d0cb0c76ebefac53d2`
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
# Mon, 02 Apr 2018 17:00:14 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 17:04:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6c3ef0e069c0edb0b5e8575f0efca806f69354a7b808f9846b89046f46a260c2'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 17:04:17 GMT
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
	-	`sha256:86600c9895e90806a04de4e14109d3cd1d4d65919cd54f5e6e34d7cacddbbfec`  
		Last Modified: Mon, 02 Apr 2018 17:06:18 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efa4959d51c28f3f486a56c63e826443973ace2df76b4e5b5ebef837ee5c630`  
		Last Modified: Mon, 02 Apr 2018 17:07:28 GMT  
		Size: 107.7 MB (107725901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9240df7199e56cdc0a1fcf80f7f912d72c8c309c9353a8997cc23d6f8b3a055`  
		Last Modified: Mon, 02 Apr 2018 17:06:17 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1.9-stretch`

```console
$ docker pull golang@sha256:60acff4ca0f1699deab4717cae52bd6c8163cc0e86e9322e1aed5cb70f718081
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

### `golang:1.9-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:3ccf0feceaa0e8da6a8ede079ede67741f93ee75a262b93098672f444e634e1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238929524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3c79840e5c73d95447d506f2fa31d269d6c46eb434ccbb89e6c61b4be02ded`
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
# Mon, 02 Apr 2018 16:28:18 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:28:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:35 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:37 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:28:38 GMT
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
	-	`sha256:c92877ca4cc43cd41bed0a8b677aa3151e951c768fbb5d2995bee0ed10acd0bd`  
		Last Modified: Mon, 02 Apr 2018 16:30:12 GMT  
		Size: 91.1 MB (91093053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd917267efc0cb060c319b6b68df60a38085d2c9c36d077079728d8a7a1e9231`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2f48fbc5c670ba23cb08da7ef3efd441b8938ed487082df66c29f231c49182`  
		Last Modified: Mon, 02 Apr 2018 16:29:45 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4012b04dbc9dcdf1e6b144440cbba2f4446bbe90d30daace9a44bdd7b04f355c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243703465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405d732a7d995d8359c9c136474121a53c875d8b566320420867c321ccfa0b35`
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
# Mon, 02 Apr 2018 16:43:33 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:43:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:43:55 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:43:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:43:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:44:17 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:44:18 GMT
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
	-	`sha256:46d5b57ac5d9ebb1d972197485b19aaaa548f4b9cde09847f8c548511d5dde3c`  
		Last Modified: Mon, 02 Apr 2018 16:56:00 GMT  
		Size: 89.7 MB (89698290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf8c7e65aa7aecd16f7b34794321470d5dd8b5575fcec7c5cf780c3bb58a013`  
		Last Modified: Mon, 02 Apr 2018 16:55:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d031563d893877fbebe443db85d78e3f3d04192aba9eaf6c7a633c8c35e2f31d`  
		Last Modified: Mon, 02 Apr 2018 16:55:29 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; 386

```console
$ docker pull golang@sha256:e63e6f8d8bd17349df676d4398f3e7127151d5346fa165064fbaa653bf8a8432
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268534439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4dbf979b3961b55da4797fbc5fb33ef0365b792f37f81b308b4f8d255402538`
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
# Wed, 04 Apr 2018 05:23:01 GMT
ENV GOLANG_VERSION=1.9.5
# Wed, 04 Apr 2018 05:23:17 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:23:17 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:23:18 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:23:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:23:19 GMT
WORKDIR /go
# Wed, 04 Apr 2018 05:23:20 GMT
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
	-	`sha256:dc26b5dcc93bea451fbfc34db880c9c6af796dd1cefb00c11072a2c0852147a1`  
		Last Modified: Wed, 04 Apr 2018 07:58:58 GMT  
		Size: 93.3 MB (93348662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51799262fbc63833a4ddb2149e8ddee122dfb7824085eca41bcba5f6d9fe5dc`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebf7c906857d3d150d908fbf69b89d4eeae60a67c5b35174df94a7fdfe60c7e`  
		Last Modified: Wed, 04 Apr 2018 07:58:28 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:e592b734d09c555e3faffa85c8e1b4c36d649ed5aef55322f05361022a3c05b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251971769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad986b924dff1a0c5ac7691d48f57203257727765adc368a91095ddbe7d29c3`
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
# Mon, 02 Apr 2018 16:40:51 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:41:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:10 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:22 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:41:23 GMT
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
	-	`sha256:6a7bf5b560bb3338298553645504e963f85449da60070ccc645d5cb555b49d72`  
		Last Modified: Mon, 02 Apr 2018 16:49:19 GMT  
		Size: 89.2 MB (89199474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6b97b24ddf0382c54d2a7bdedc0dcf7438cccb923ad11ed9a77380ffa5cf65`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c85e6c65e8526d70eafb238cc83b63034d06a023311f28bd9989866080ef1`  
		Last Modified: Mon, 02 Apr 2018 16:48:57 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1.9-stretch` - linux; s390x

```console
$ docker pull golang@sha256:dae4ad46a60c0996913b2a36c0250e8e982d7052c833173f0c95cc4ba1b07094
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245171183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f7b386daa6262a59f366f7ac203cfd9a5d1b610ac6b69a10e096a14b93097`
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
# Mon, 02 Apr 2018 16:45:16 GMT
ENV GOLANG_VERSION=1.9.5
# Mon, 02 Apr 2018 16:45:32 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d21bdabf4272c2248c41b45cec606844bdc5c7c04240899bde36c01a28c51ee7' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e9b6f0cbd95ff3077ddeaec1958be77d9675f0cf5652a67152d28d84707a4e9e' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d0bb265559cd8613882e6bbd197a80ed7090684117c6fc6900aa58dea2463715' ;; 		i386) goRelArch='linux-386'; goRelSha256='52e0e3421ac4d9b8d8c89121ea93e5e3180a26679a8ea64ecbeb3657251634a3' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='dfd928ab818f72b801273c669d86e6c05626f2c2addc1c7178bb715fc608daf2' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='82c86885c8cc4d62ff81f828529c72cacd0ca8b02d442dc659858c6738363775' ;; 		*) goRelArch='src'; goRelSha256='f1c2bb7f32bbd8fa7a19cc1608e0d06582df32ff5f0340967d83fb0017c49fbc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:45:33 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:45:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:34 GMT
WORKDIR /go
# Mon, 02 Apr 2018 16:45:34 GMT
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
	-	`sha256:0b8c7bc2281060a4ff5b768e0bcc6f304129c57bed90812b1156580246f5fc42`  
		Last Modified: Mon, 02 Apr 2018 16:52:54 GMT  
		Size: 88.9 MB (88860421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c8feada569f51ad48510e74cc5fa98527663e92038187646886c7d99067bc1`  
		Last Modified: Mon, 02 Apr 2018 16:52:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5c901bb734b222bca3127a09a40081f3d525a4d5f119513208508314a789b0`  
		Last Modified: Mon, 02 Apr 2018 16:52:30 GMT  
		Size: 1.4 KB (1369 bytes)  
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
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
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

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
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

### `golang:1-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:1-nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-stretch`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
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

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
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
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
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

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine3.7`

```console
$ docker pull golang@sha256:6412ddf2b1c52b81809c6e93c862c8d00eca6a0aead26a4514eab446ed546eb2
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

### `golang:alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:9214dd8d35b15c935f626ef50ca740cc344d074e958339ba73723b17db95dfa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113546801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bd38db0056dd31fd48795761333419ede752fdcf6a11e942402c9eb3cdac83`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 16:42:22 GMT
RUN apk add --no-cache ca-certificates
# Mon, 02 Apr 2018 16:42:23 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:42:24 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:58:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:58:32 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:58:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:58:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bbf490f4d65ed14dff59b8ccc1d2f3f5e186d2e4fa77d8bb3190eed9dec514`  
		Last Modified: Mon, 02 Apr 2018 17:26:15 GMT  
		Size: 308.9 KB (308909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aae05c6b8b1793edd37a9f1e7efcc6a61e1f3d3e05d145daf63fd857ca205b6`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feef2992e523dfa4973bffecdbf53ea1f2edd46a562dfb7d5d92930677a790a9`  
		Last Modified: Mon, 02 Apr 2018 17:28:48 GMT  
		Size: 111.2 MB (111198742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640a40f4d46f7a6e20f8524e4198b889f6fc945588ecc5f371bef46d2fc7d182`  
		Last Modified: Mon, 02 Apr 2018 17:26:14 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ff2296751188bed052d56b6e5ae4c8fa86f812c7e29cdb14dbab9fc2bbd18fd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111316429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c89a5e18770094f41e48e6cc4b6af8f7bf0f7446c512f055e095ef1793c40`
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
# Mon, 02 Apr 2018 16:39:43 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:39:44 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:42:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:42:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:42:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:42:34 GMT
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
	-	`sha256:e8a7908d7c13becb3e6e98f46b1f4081814c9bedebd26e85a800ddb5a3772e60`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5522948e3b709bcacd6aadb5608f5f46a817a2cf037684ce06a8eb4b32cfe7`  
		Last Modified: Mon, 02 Apr 2018 16:52:42 GMT  
		Size: 109.0 MB (109018566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ce1d4b64320d4d37cb99f74fb28b1e64a05edf89c21defa4f6787f38669186`  
		Last Modified: Mon, 02 Apr 2018 16:51:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:8aa01baf37ce885c80da2e3137442470a89f608f703d2437d7a85b46479aaf7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115044390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f331da0bee567948ddd134c703fd7876baa7846eee0edc024c2a97fcf8d444bf`
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
# Wed, 04 Apr 2018 05:07:45 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 05:07:45 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Wed, 04 Apr 2018 05:09:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 05:09:27 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 05:09:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 05:09:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 05:09:29 GMT
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
	-	`sha256:fb95cb77e6bac24c2bf69bf91c92c0b379f6a1b2f951f5de8ae2ca2ead96ba51`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafcc2619f737a02e3a9cecebbf45b4b1eecadde96513c33646c98367e2a248a`  
		Last Modified: Wed, 04 Apr 2018 06:46:12 GMT  
		Size: 112.6 MB (112608627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867c18a693a589b284f3a96942ed13303d712ebab413db64e1b35d0a326fd82e`  
		Last Modified: Wed, 04 Apr 2018 06:45:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:f05b355610fb5f3243d43bb03e999177b5ab4ed33774b73b85d53afd530e588d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111397057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834c4e005a3a10c75fcfd9adac221cbed2b5bc9b0c2cf7f1eeb891cb816b0504`
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
# Mon, 02 Apr 2018 16:38:06 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:09 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:40:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:40:18 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:40:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:40:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:40:31 GMT
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
	-	`sha256:a00051ece2aeb43194f6e15ad978dadf3139cb9442e44e9fe40970ce3219f389`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 521.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e22c0dc3dea475910f93fa429a90a2610e0e633dd35cf19fc6e679d5279c5c0`  
		Last Modified: Mon, 02 Apr 2018 16:47:53 GMT  
		Size: 109.0 MB (109004138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f037428a689a67877ee829cf6a0b16f0af97db6d01c9c06c84bd213f0ff40`  
		Last Modified: Mon, 02 Apr 2018 16:47:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:52b9d1fba6045df9c5fdb085eaba4df3f0bb9d7343eb76f1f140f86b84540431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115940673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3680b04e8eaf815b752c1164dd17231199cbdb610fec20d0454fd5b0e173615`
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
# Mon, 02 Apr 2018 16:41:21 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:22 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Mon, 02 Apr 2018 16:44:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:44:59 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:44:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:45:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:45:01 GMT
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
	-	`sha256:104455f359778e62c754d3d3c8746d6cad95a11f0700a696f05e2f560ddb3ee5`  
		Last Modified: Mon, 02 Apr 2018 16:50:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d6367647d4e2ee13434f82152d0ea0da95f6eb27033e6a15645989e5de003`  
		Last Modified: Mon, 02 Apr 2018 16:51:23 GMT  
		Size: 113.4 MB (113445499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b12bb02824a4d2bea1f997d033dff50f35447c158014226d5f2c390d556f24`  
		Last Modified: Mon, 02 Apr 2018 16:50:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:latest`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:nanoserver` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:nanoserver-sac2016`

```console
$ docker pull golang@sha256:0dce3e666e96c956f6d682f19a5e76192e2bc2a8fda6848037cb1211daf6b852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `golang:nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull golang@sha256:edec32183738be1c2cb9935a7b8a7340ed4210f9fc3115233eb370fa46c23bef
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531524619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629cd7837559048ea2ac12320d8c529e7e1de7db8a84b822a481b8889e579e73`
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
# Mon, 02 Apr 2018 16:49:14 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:54:10 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Mon, 02 Apr 2018 16:54:12 GMT
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
	-	`sha256:420d24598f6afad08135eef1dadb0abf6e3be9469f8b3bc84ec1b988e16e9bc7`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8453b5081751b6049a3757f0965fec0028235eb94bcd2f41b4b55f88eedef0`  
		Last Modified: Mon, 02 Apr 2018 17:05:57 GMT  
		Size: 122.0 MB (121978297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed240568d81e413fb7782dcd8847b7ff5535502eb31b7942da5dc266910b3e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:39 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:stretch`

```console
$ docker pull golang@sha256:62b42efa7bbd7efe429c43e4a1901f26fe3728b4603cb802248fff0a898b4825
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

### `golang:stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:0c758967bf87a807507ff6393372b14a32cec75c0119530f84cf74fcf9f201fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250831806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a14379a5612c832a075ba34273064544d395b1e6335542e53ac26ee9512b48`
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
# Mon, 02 Apr 2018 16:27:47 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:28:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:28:07 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:28:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:28:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:28:09 GMT
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
	-	`sha256:4e1fcc24ea3e97819b204e240cee96e5e7f5eb906fb2efb95130ee78dee7295d`  
		Last Modified: Mon, 02 Apr 2018 16:29:25 GMT  
		Size: 103.0 MB (102996703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24dd91d999785df59c065cc07e48e66feba19aef5588e5477d4fca3f4149a19`  
		Last Modified: Mon, 02 Apr 2018 16:28:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:6dfbdfdc087d8770069192ed8129426aa2b5c1532edab6c38e769dbf251f9192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256488156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e713cbd92a126eabb30043fd87c72a58caa82a50066aa48af48a7464d03990`
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
# Mon, 02 Apr 2018 16:38:30 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:38:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:38:56 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:38:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:38:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:38:59 GMT
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
	-	`sha256:7d797b8faa217b9f8f7b630ebb2696c1668ffd5f6e7ed68c9431d67a70bc87f7`  
		Last Modified: Mon, 02 Apr 2018 16:50:30 GMT  
		Size: 102.5 MB (102484351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e53707bfe96e92127591e7c5c22ee65dc46e3b10eed5c775e23524a13d60044`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; 386

```console
$ docker pull golang@sha256:a636938fad35a30ca5996c31e5224e5888cb070a4ab6ce10a34bbd1b259efb5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283473869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7d889bd7155007874878460723b2221b46009027a4e07086e2c803176e5a93`
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
# Wed, 04 Apr 2018 04:54:31 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 04 Apr 2018 04:54:48 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 04 Apr 2018 04:54:48 GMT
ENV GOPATH=/go
# Wed, 04 Apr 2018 04:54:49 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Apr 2018 04:54:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 04 Apr 2018 04:54:50 GMT
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
	-	`sha256:ebe6d98c018ea7b7a881ebe1e9a62e5867c2747633c6255d6c260b7ed4841636`  
		Last Modified: Wed, 04 Apr 2018 06:07:43 GMT  
		Size: 108.3 MB (108289465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f9f7c7a238029ec14979ea88036b5a4387398caad2cb96821329336cff8ef7`  
		Last Modified: Wed, 04 Apr 2018 06:07:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:9a93fb33098b6e54945712da20d911272b30c305d6263c72d0fa04abf8962482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264051426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fc05321fcdde027fe1dcc27a5c2dc38478ea9dad5155506e49558695f8386e`
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
# Mon, 02 Apr 2018 16:37:05 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:37:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:37:31 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:37:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:37:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:37:48 GMT
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
	-	`sha256:0d37ff2095d0ed0cbeebc56d064693b3a5bb3c8bb48055603d4fa51ab5413102`  
		Last Modified: Mon, 02 Apr 2018 16:46:46 GMT  
		Size: 101.3 MB (101280502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614465d2c8c919611b5fe716c1eb2ae3c5e0bcc693c6db33bc797f5799717d03`  
		Last Modified: Mon, 02 Apr 2018 16:46:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:stretch` - linux; s390x

```console
$ docker pull golang@sha256:8b0d4e91c337459a0c49e0e426927b0777dc4d49904a033549699b17520f0e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256988871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24fb8116708f4835a4102505705b0c8f7f5d84626b382fecbef16ef3056c96e`
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
# Mon, 02 Apr 2018 16:41:01 GMT
ENV GOLANG_VERSION=1.10.1
# Mon, 02 Apr 2018 16:41:11 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Mon, 02 Apr 2018 16:41:11 GMT
ENV GOPATH=/go
# Mon, 02 Apr 2018 16:41:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:41:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Mon, 02 Apr 2018 16:41:12 GMT
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
	-	`sha256:ccb4373756ed0edfc855fa107c12ffd57adb8aedfe182262d5b8464bf513e935`  
		Last Modified: Mon, 02 Apr 2018 16:50:21 GMT  
		Size: 100.7 MB (100679478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d57d73de0e0204dc988b286e8e5d854eba1dfb04eab5ab9f4c5f788fbc633d2`  
		Last Modified: Mon, 02 Apr 2018 16:49:53 GMT  
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

## `golang:latest`

```console
$ docker pull golang@sha256:9242df7a95915f516960b78b5a7e08db12fabd053f890409390f6e426f2b3ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:e03ed489934627bed040325b9796fc1c3e2428ac8de762ad9c985952be95db07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294623980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf428bade773ace47b37d9e3e0881613d0a8cb17b621fcf7ad05ed9ec2a7f74`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Dec 2018 22:54:58 GMT
ENV GOLANG_VERSION=1.11.3
# Thu, 13 Dec 2018 22:55:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d20a4869ffb13cee0f7ee777bf18c7b9b67ef0375f93fac1298519e0c227a07f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='384933e6e97b74c5125011c8f0539362bbed5a015978a34e441d7333d8e519b9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='723c54cb081dd629a44d620197e4a789dccdfe6dee7f8b4ad7a6659f76952056' ;; 		i386) goRelArch='linux-386'; goRelSha256='c3fadf7f8652c060e18b7907fb8e15b853955b25aa661dbd991f6d6bc581d7a9' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='57c89a047ef4f539580af4cadebf1364a906891b065afa0664592e72a034b0ee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='183258709c051ceb2900dee5ee681abb0bc440624c8f657374bde2a5658bef27' ;; 		*) goRelArch='src'; goRelSha256='7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 13 Dec 2018 22:55:10 GMT
ENV GOPATH=/go
# Thu, 13 Dec 2018 22:55:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 22:55:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 13 Dec 2018 22:55:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368dba6a3315fbefd58fb50f420c76196944fa28cd330ddd7af0b7bad292223`  
		Last Modified: Sat, 17 Nov 2018 04:07:53 GMT  
		Size: 57.6 MB (57618422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ffff7c9ff9a505349d7a21f96e5f32c1a8db1923e1b59881779f0da9f8313d`  
		Last Modified: Thu, 13 Dec 2018 23:04:22 GMT  
		Size: 126.5 MB (126541677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2613ffabce6c456c05aeb4c17626565a60d0717b13b1a2fe37ecd9673330cf6d`  
		Last Modified: Thu, 13 Dec 2018 23:04:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm variant v7

```console
$ docker pull golang@sha256:e224d80d087ab267e513d0b44090fec9a9c16cbedeeac27cbd37378ee50b722c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248716988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfefb8e504980ae0b03ed7dd34c253c1f92b92a99f0223cdf5b56df367cdb5e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:18:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:50:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Dec 2018 12:57:41 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 12:58:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d20a4869ffb13cee0f7ee777bf18c7b9b67ef0375f93fac1298519e0c227a07f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='384933e6e97b74c5125011c8f0539362bbed5a015978a34e441d7333d8e519b9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='723c54cb081dd629a44d620197e4a789dccdfe6dee7f8b4ad7a6659f76952056' ;; 		i386) goRelArch='linux-386'; goRelSha256='c3fadf7f8652c060e18b7907fb8e15b853955b25aa661dbd991f6d6bc581d7a9' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='57c89a047ef4f539580af4cadebf1364a906891b065afa0664592e72a034b0ee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='183258709c051ceb2900dee5ee681abb0bc440624c8f657374bde2a5658bef27' ;; 		*) goRelArch='src'; goRelSha256='7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 14 Dec 2018 12:58:02 GMT
ENV GOPATH=/go
# Fri, 14 Dec 2018 12:58:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 12:58:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 14 Dec 2018 12:58:17 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ce4c93c1cd23dba26163faf2c97ba7d2ff4a19e9ec4f18fd0d9dbf3c3491d`  
		Last Modified: Fri, 16 Nov 2018 18:32:16 GMT  
		Size: 46.4 MB (46379290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda4add5024ad1b83e70e156bfc6418754f8a256e506c676d27bc4030a40e27f`  
		Last Modified: Fri, 16 Nov 2018 22:53:11 GMT  
		Size: 46.0 MB (45955196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a3ed0d3229a3885952c317e1f435ab2f242ef414b44ef3df4bbc50e10c2917`  
		Last Modified: Fri, 14 Dec 2018 12:59:39 GMT  
		Size: 100.9 MB (100947333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f3e22130b072358320cecd85fcd786c3daadb6feeaa1ecce5f8b89c87b655`  
		Last Modified: Fri, 14 Dec 2018 12:59:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f604f9b26eb73340dbb81d7acf1e3d3711e515b9bd6af403692bc718128b3ff3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254063751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db7dab93005d848b7a814dc385276c50c749073bcfa39475832474fb42be2d8b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 17:08:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Dec 2018 09:42:29 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 09:42:55 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d20a4869ffb13cee0f7ee777bf18c7b9b67ef0375f93fac1298519e0c227a07f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='384933e6e97b74c5125011c8f0539362bbed5a015978a34e441d7333d8e519b9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='723c54cb081dd629a44d620197e4a789dccdfe6dee7f8b4ad7a6659f76952056' ;; 		i386) goRelArch='linux-386'; goRelSha256='c3fadf7f8652c060e18b7907fb8e15b853955b25aa661dbd991f6d6bc581d7a9' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='57c89a047ef4f539580af4cadebf1364a906891b065afa0664592e72a034b0ee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='183258709c051ceb2900dee5ee681abb0bc440624c8f657374bde2a5658bef27' ;; 		*) goRelArch='src'; goRelSha256='7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 14 Dec 2018 09:42:56 GMT
ENV GOPATH=/go
# Fri, 14 Dec 2018 09:42:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 09:42:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 14 Dec 2018 09:42:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3681e096a338a349b77c8333fb6f6f2b4877b86734a75c8645efb9da7394c939`  
		Last Modified: Sat, 17 Nov 2018 17:10:57 GMT  
		Size: 49.0 MB (49018741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30427bf992805e8b68986ff9e2640737458f9a7c0e0ff07318e0f35f6a7aea70`  
		Last Modified: Fri, 14 Dec 2018 09:56:18 GMT  
		Size: 100.1 MB (100139776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e898fefcf1498714dafcf31067430ced5626eed781ace66bda281d2e4b34e377`  
		Last Modified: Fri, 14 Dec 2018 09:55:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:f86d666a30eab5136ba910fe516105b6edd30897d4a71ac685d72c72798e61c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284785268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:980c131d58059326364fe3065d24820b41848eabdea8bc7150968ee54d77ae6c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sun, 18 Nov 2018 01:38:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Dec 2018 11:39:17 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 11:39:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d20a4869ffb13cee0f7ee777bf18c7b9b67ef0375f93fac1298519e0c227a07f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='384933e6e97b74c5125011c8f0539362bbed5a015978a34e441d7333d8e519b9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='723c54cb081dd629a44d620197e4a789dccdfe6dee7f8b4ad7a6659f76952056' ;; 		i386) goRelArch='linux-386'; goRelSha256='c3fadf7f8652c060e18b7907fb8e15b853955b25aa661dbd991f6d6bc581d7a9' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='57c89a047ef4f539580af4cadebf1364a906891b065afa0664592e72a034b0ee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='183258709c051ceb2900dee5ee681abb0bc440624c8f657374bde2a5658bef27' ;; 		*) goRelArch='src'; goRelSha256='7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 14 Dec 2018 11:39:29 GMT
ENV GOPATH=/go
# Fri, 14 Dec 2018 11:39:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 11:39:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 14 Dec 2018 11:39:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d52d8a98da9ee8e0e320f8715e61c1fef9865ebe1f84d274fd16bd1209f3a5`  
		Last Modified: Sun, 18 Nov 2018 01:40:28 GMT  
		Size: 62.1 MB (62139467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524ad97623015814a030651862873465ffe4bc67c68890947b0c07d127090c40`  
		Last Modified: Fri, 14 Dec 2018 11:50:22 GMT  
		Size: 109.7 MB (109685192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a93e8cdc6b3532c772d08903f73f4fed92186f1adbb858c3058642e2cb2eac`  
		Last Modified: Fri, 14 Dec 2018 11:50:00 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:f775f60f30329a4404c75b0f27b340a57a92ae6d8a99233f54babac733abbdc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261580095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdd86aa50cdc24376e7d3aa9f18d2d15c188594f9f249392e4bbfba98bf5698`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:01:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Dec 2018 09:32:59 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 09:33:16 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d20a4869ffb13cee0f7ee777bf18c7b9b67ef0375f93fac1298519e0c227a07f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='384933e6e97b74c5125011c8f0539362bbed5a015978a34e441d7333d8e519b9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='723c54cb081dd629a44d620197e4a789dccdfe6dee7f8b4ad7a6659f76952056' ;; 		i386) goRelArch='linux-386'; goRelSha256='c3fadf7f8652c060e18b7907fb8e15b853955b25aa661dbd991f6d6bc581d7a9' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='57c89a047ef4f539580af4cadebf1364a906891b065afa0664592e72a034b0ee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='183258709c051ceb2900dee5ee681abb0bc440624c8f657374bde2a5658bef27' ;; 		*) goRelArch='src'; goRelSha256='7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 14 Dec 2018 09:33:17 GMT
ENV GOPATH=/go
# Fri, 14 Dec 2018 09:33:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 09:33:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 14 Dec 2018 09:33:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed5eea210efd6721d72351fba002614595dfaeb086799bb6810038c38f191ee`  
		Last Modified: Sat, 17 Nov 2018 02:03:43 GMT  
		Size: 52.8 MB (52787022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4416bb2f0d0390a7af97e7ddb1291fe5201be323626e4c281a297ff22ec1bfd`  
		Last Modified: Fri, 14 Dec 2018 10:02:14 GMT  
		Size: 98.9 MB (98876413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb915f6f91c35e111f56e9dc1220fbfb28c69459865c4a76e952e4ab995a43b3`  
		Last Modified: Fri, 14 Dec 2018 10:01:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; s390x

```console
$ docker pull golang@sha256:3ea1d39bd82f7ae67c7a6a057603fa7269a9e2466f7ceb2b1f542a2c4dc99939
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255894922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db74b0505e81b061073cc26e12828fd3fd5192b8bb06355e6dc6b1278bfaa773`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:04:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Dec 2018 12:41:37 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 12:41:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d20a4869ffb13cee0f7ee777bf18c7b9b67ef0375f93fac1298519e0c227a07f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='384933e6e97b74c5125011c8f0539362bbed5a015978a34e441d7333d8e519b9' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='723c54cb081dd629a44d620197e4a789dccdfe6dee7f8b4ad7a6659f76952056' ;; 		i386) goRelArch='linux-386'; goRelSha256='c3fadf7f8652c060e18b7907fb8e15b853955b25aa661dbd991f6d6bc581d7a9' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='57c89a047ef4f539580af4cadebf1364a906891b065afa0664592e72a034b0ee' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='183258709c051ceb2900dee5ee681abb0bc440624c8f657374bde2a5658bef27' ;; 		*) goRelArch='src'; goRelSha256='7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 14 Dec 2018 12:41:57 GMT
ENV GOPATH=/go
# Fri, 14 Dec 2018 12:41:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 12:41:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 14 Dec 2018 12:41:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6ad52af4fdc34f5b07382209a188db5a7b743eb7195cff73875a04a6608793`  
		Last Modified: Sat, 17 Nov 2018 04:05:43 GMT  
		Size: 45.9 MB (45895433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d78d08c93d5fcfa2398c9aee298d7ab1ff32b290519b5c63bcbf1b77b1495aa`  
		Last Modified: Fri, 14 Dec 2018 12:54:07 GMT  
		Size: 99.7 MB (99670525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1471f0f85af26a65c5584777b67fe389d077100958327bad87565387ea8bc325`  
		Last Modified: Fri, 14 Dec 2018 12:53:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2665; amd64

```console
$ docker pull golang@sha256:3bb61c349d553774ab3b1e2199d42bd93136df012da803c4dd03d6f43f972b1c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5809189285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1faeb4e7cf7f409ff53b30a656792517c90ef2197060139206962633f1548f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 10:44:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 10:44:33 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 10:44:33 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 10:44:34 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 10:46:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:46:40 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 10:47:53 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 14 Dec 2018 10:47:54 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 10:54:34 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bc168207115eb0686e226ed3708337b161946c1acb0437603e1221e94f2e1f0f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:54:36 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3006c41e55a11b667d262aadd2a29e30fe128f834afe3fd57e9a7bd0bc1560`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608723e251a6da4000b8bbdac22288e7e7fd5486061c74730d2e46ef05600001`  
		Last Modified: Fri, 14 Dec 2018 11:43:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad996465c71ae7e0edaabb7da954dca8c7cf05dade88b4099d711c7d21a72b2`  
		Last Modified: Fri, 14 Dec 2018 11:43:30 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728947df61e1427e9eeb7a2202adf5e05be086dc7590369d0297eeb624b04b5d`  
		Last Modified: Fri, 14 Dec 2018 11:43:30 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049e3b8cc855f729ab3502a86df86fea866ef4a865faf9a085e14fe7f9e6a260`  
		Last Modified: Fri, 14 Dec 2018 11:43:44 GMT  
		Size: 29.6 MB (29634807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ce25bb6d2170ad9a0fc91e77ec673923f7f8817bee87e92fde49ce4e27f855`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc37d38119a1ea5fc1808aafb7256b8e748e0ba7b86be4553519c3b5dd41aafa`  
		Last Modified: Fri, 14 Dec 2018 11:43:29 GMT  
		Size: 5.2 MB (5184867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7148d0e4b125423e692f0fe9f8d077cb9e10db05c836ddf494c089bd6ff7eab`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b883865ba40e3fbb1c897b6f26930a058c466ab709b2f53d5252a49dde199f9`  
		Last Modified: Fri, 14 Dec 2018 11:45:17 GMT  
		Size: 139.6 MB (139632700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967e72f34fda272f9e357673683664033a1a0db65d2f65f269fbcd652e81332a`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.846; amd64

```console
$ docker pull golang@sha256:84bbc765fd4e5a36d6c400eb3bc6ed2a702def14d9ecc608d762cc0dea5f5a4e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3320797006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efa9da64496e766ca3203d65d0efca5878cb560a1307be5a40031ea9d24e162`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 10:54:53 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 10:54:54 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 10:54:55 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 10:54:56 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 10:56:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:56:43 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 10:57:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 14 Dec 2018 10:57:35 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 11:03:49 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bc168207115eb0686e226ed3708337b161946c1acb0437603e1221e94f2e1f0f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 11:03:51 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e20bf42689611acc614bb3803edb7b99fb1a5eaf4eaa11ce704fb221e4d17bf`  
		Last Modified: Fri, 14 Dec 2018 11:45:44 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e311246f562dd7df15c62bbb0186aafb57884d244fb7c10ad58818d9f1a4f45f`  
		Last Modified: Fri, 14 Dec 2018 11:45:44 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3706b0af9bfc6f655e961735719d7603d14d97612ae518d2c2ff5b7aa5a5172`  
		Last Modified: Fri, 14 Dec 2018 11:45:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa59c053ebeb9b3021bcf43c0d8aac0639d567fe1a13d0d81d2ed44f7afabc7a`  
		Last Modified: Fri, 14 Dec 2018 11:45:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c86f1cdd5b5db4f9321631e38cd2e2682b9bb846cb24f3fb2fc491a8ce79e4b`  
		Last Modified: Fri, 14 Dec 2018 11:45:54 GMT  
		Size: 29.2 MB (29198890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a3d37098c5d476102a9ac6055b6ef1c803a9f8faf128fa9068d4ece0115ad5`  
		Last Modified: Fri, 14 Dec 2018 11:45:38 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75842b557c663fc06d58bafb66475fb30399dc7b579d7a8b824bab8b6b80735b`  
		Last Modified: Fri, 14 Dec 2018 11:45:40 GMT  
		Size: 4.8 MB (4753547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbc3d982796a210c6677508bc6ec15e0435101f2a6b087a8a62f11b4a9751c3`  
		Last Modified: Fri, 14 Dec 2018 11:45:38 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef2646cd3759d91da08d0c5817e33260c9432b908e0a00f42917ddc3ac9e79a`  
		Last Modified: Fri, 14 Dec 2018 11:47:22 GMT  
		Size: 134.7 MB (134697247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1a3a3ad4055524bd99bc3d9413f13e12884a00905778b94df644e165f0bc9f`  
		Last Modified: Fri, 14 Dec 2018 11:45:38 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17134.469; amd64

```console
$ docker pull golang@sha256:6f2b5850f2c00c7efc335b94e1df4809a2f53e6f740b33cee262dd6ed8fd6751
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2403299994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4d38b42c87ac47aa09dd7e5aafeb084994aa7b1cca329175acb68c8de38d65`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 11:04:07 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 11:04:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 11:04:09 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 11:04:10 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 11:05:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 11:05:49 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 11:06:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 14 Dec 2018 11:06:41 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 11:12:48 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bc168207115eb0686e226ed3708337b161946c1acb0437603e1221e94f2e1f0f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 11:12:50 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4757ae2c8dac21c9d1c951288f88f2f1ae151d5384c87410eac015056510e7`  
		Last Modified: Fri, 14 Dec 2018 11:47:49 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0252e2ef8870156b05fbe5dc15e179768309c8eac36ac36ef5875f6f943f2760`  
		Last Modified: Fri, 14 Dec 2018 11:47:47 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8974ee51534e5f3ed1e697b6ba66df8e06d04811c2692e0ebc1381a46a48f507`  
		Last Modified: Fri, 14 Dec 2018 11:47:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7914918b0f0abd08786b36aab3efdcb24938f3c295dfd66d1037a14e9ab16`  
		Last Modified: Fri, 14 Dec 2018 11:47:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a59f4aa044e215ee1f4bde311dfc3b302100bd41d975196db2fe524ac859a`  
		Last Modified: Fri, 14 Dec 2018 11:47:58 GMT  
		Size: 29.1 MB (29110623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e937512e6cb0cec3584a3be4b3bbdafcc200bfb4ef366ed05034b9c5e38e15`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3f9686c7c0b0c50e76f87f0159a8edd837b887f4087bbcdcfab379d84e880f`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 318.0 KB (317954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7ca3d6cba79ca616bb5828737c49e80bc30b1be9d0c5af047fefba020bca3f`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e5df425f36f37abfd4be2a78a51cd1d9518ca0612806d678850e1a6fa89e5`  
		Last Modified: Fri, 14 Dec 2018 11:49:23 GMT  
		Size: 130.3 MB (130274644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c270fe17bd927a340ec80549cb8611a6fea01c59775f7a122c404bcc54056ba8`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

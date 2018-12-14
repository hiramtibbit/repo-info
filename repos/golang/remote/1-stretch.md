## `golang:1-stretch`

```console
$ docker pull golang@sha256:e95a8c7aea3bfff81b4f359e46270df64c146c866acfa91ada82c0224f6c0e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `golang:1-stretch` - linux; amd64

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

### `golang:1-stretch` - linux; arm64 variant v8

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

### `golang:1-stretch` - linux; 386

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

### `golang:1-stretch` - linux; ppc64le

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

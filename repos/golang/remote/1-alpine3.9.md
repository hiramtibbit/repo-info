## `golang:1-alpine3.9`

```console
$ docker pull golang@sha256:370a975abe4226d21562acdc851d5d51745c0d07a6a922d659a308daab5f01e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:3139f3bb2b55147eefd442ec628a1c3272fbf2fdac09466e761a2eea855b884a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128326511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821acdc20eb83a20431cba6a32782f174d7fa9f54582fe3bdebccecb77fd76b0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 02:03:40 GMT
ENV GOLANG_VERSION=1.12.3
# Wed, 10 Apr 2019 02:08:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 Apr 2019 02:08:25 GMT
ENV GOPATH=/go
# Wed, 10 Apr 2019 02:08:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 02:08:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 Apr 2019 02:08:27 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fc5905660758bc9ed54ba2f92288b9364fec66412856229aad42680842b4af`  
		Last Modified: Wed, 10 Apr 2019 02:14:24 GMT  
		Size: 125.3 MB (125267349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53f6727338a286b50152f2950451f2965fcad5470097a611854921e0a453b40`  
		Last Modified: Wed, 10 Apr 2019 02:13:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:6d4208568d7ed521206f3ee808526d7676f74fb1001274df3f1ab51630720836
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124190264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142628c08e49bd02438c665c4ea90b2f1b5b8cf703cb89e8e5ebc90bce26cb82`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 08:39:07 GMT
ENV GOLANG_VERSION=1.12.3
# Wed, 10 Apr 2019 08:41:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 Apr 2019 08:41:58 GMT
ENV GOPATH=/go
# Wed, 10 Apr 2019 08:41:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 08:42:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 Apr 2019 08:42:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4b8700752b92782b02a0ba3eac76848f17d02a602926afeee63e8e764d9963`  
		Last Modified: Wed, 10 Apr 2019 08:46:02 GMT  
		Size: 121.3 MB (121344413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b03e2e09b80e253ca8cf13341ac79cb31712d16a53454033c28278db1ad581`  
		Last Modified: Wed, 10 Apr 2019 08:45:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:6440fdc7809c8ea09994a9c8eb1cd570842b06b4cac6ae045d4181f296033b5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123661503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d175f550862975cd63e48de6483172a3940fca551f2b5ab5a6402e66dbb66f66`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:36:38 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 12:36:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 12:36:39 GMT
ENV GOLANG_VERSION=1.12.3
# Wed, 10 Apr 2019 12:38:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 Apr 2019 12:38:52 GMT
ENV GOPATH=/go
# Wed, 10 Apr 2019 12:38:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 12:38:55 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 Apr 2019 12:38:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61912a55c4015fdbde8dfe297540a2aaa429fc1293fe6c07650cc12069d87bbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 301.0 KB (301011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38eec8ecc12484e7fbc91473d071873f9e1c850c3518bd7ef96e88e4b0dea86`  
		Last Modified: Wed, 10 Apr 2019 12:41:39 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b12b7198169a62f227df3590fc1fb31cb9e8b1b9232a2a239203d70a91986`  
		Last Modified: Wed, 10 Apr 2019 12:42:16 GMT  
		Size: 121.0 MB (121009426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829e52981fc55a43b40e90c2eb24d5b2e5fbae77cb090d9ade9fcf127b0d4fbd`  
		Last Modified: Wed, 10 Apr 2019 12:41:38 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8555d54e9227ba86703cda6133ef02dc32f4d48bf73ff585825e6482245e2739
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122409189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a71f23f93485861f14eef1d9146c524ef6f70c042f1277b8a696fda4cc0e69`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 08:40:52 GMT
ENV GOLANG_VERSION=1.12.3
# Tue, 09 Apr 2019 08:44:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 09 Apr 2019 08:44:08 GMT
ENV GOPATH=/go
# Tue, 09 Apr 2019 08:44:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Apr 2019 08:44:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 09 Apr 2019 08:44:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527a375ca2e35f4589fe0e2acc48b53fb5697ea45922b83ab151fb8bc0f0e968`  
		Last Modified: Tue, 09 Apr 2019 08:53:32 GMT  
		Size: 119.4 MB (119418654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9be1b0335bd41c7b50ee58648e5b0b45b41bd544bf8916993d8a5705318e7a`  
		Last Modified: Tue, 09 Apr 2019 08:52:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:291a09e0acfc2cca630192b3c60a458128e88050fa73ea07128732c4db01519a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128077135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cd121fe8bcad6842313b92d493847f787e774726b05491de0c805516c34ad2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:54:51 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 10:54:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 10:54:52 GMT
ENV GOLANG_VERSION=1.12.3
# Wed, 10 Apr 2019 10:57:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 Apr 2019 10:57:27 GMT
ENV GOPATH=/go
# Wed, 10 Apr 2019 10:57:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 10:57:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 Apr 2019 10:57:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9bbcb14fb7a0f27b754a26cc5b63fb9ba206b7655c96a66c8e93573581339b`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 302.4 KB (302440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cf69cf8ffe43f2fe6979289b0e1ad7da8880c939c93cd623040a285b724a83`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e84d1c8ce76c4869caa7c78aba50176210149ac6502ace0c2469b92c5c5717`  
		Last Modified: Wed, 10 Apr 2019 11:00:44 GMT  
		Size: 125.0 MB (125022253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76401a4af46c57883201dedd50bfc9677ede9b5feb34119565c768226bc29cc4`  
		Last Modified: Wed, 10 Apr 2019 11:00:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:780bc24c94a2e92d93341f201e3473c2e15b5f2b7bc771045ddef5f07884609b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121784487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c25446859317680183dbd2fd2c00e07ca94fdb2f5b61adeba09b9a126f82a27`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:28:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:28:15 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 10:15:00 GMT
ENV GOLANG_VERSION=1.12.3
# Wed, 10 Apr 2019 10:17:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 Apr 2019 10:17:25 GMT
ENV GOPATH=/go
# Wed, 10 Apr 2019 10:17:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 10:17:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 Apr 2019 10:17:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd81da627a2fc8e5f329652d893e10d970fac227e0e39d2f29339efc51da70d`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8460b7f63dc9691e56b2a5fabe82c9d41ff5330c3e958ea95c6720a8828a430`  
		Last Modified: Wed, 10 Apr 2019 08:31:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8659cdbc111623997ad4c0b05bc0b6d4cb55e5c2b14bf6f450dd426c8a22b4`  
		Last Modified: Wed, 10 Apr 2019 10:21:13 GMT  
		Size: 118.7 MB (118698619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfd0ff7308c53f7612f20951caabfd5d77c2bdc900a0122b3e1726d621c02c5`  
		Last Modified: Wed, 10 Apr 2019 10:20:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:4a666335c47b89229c0cb73b91caa38795b71733f623adacf467980cd0991a22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128617220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50242b81ca06e6f12cf5b5f772c23a11892fec63172c5eb77a67c71027ad3c64`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 11:42:36 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 11:42:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 12:07:02 GMT
ENV GOLANG_VERSION=1.12.3
# Wed, 10 Apr 2019 12:10:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5c507abe8818429d74ebb650a4155d36bc3f9a725e59e76f5d6aca9690be2373 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 10 Apr 2019 12:10:31 GMT
ENV GOPATH=/go
# Wed, 10 Apr 2019 12:10:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 12:10:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 10 Apr 2019 12:10:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49aa6253a2d0e3217c71a9c57dc7718d80f75ac929f92954e4d2382814e9acd`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 302.4 KB (302415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53c77e30da45978119236891768fc32b0ed182ffe6816dc9aef638c4827bdec`  
		Last Modified: Wed, 10 Apr 2019 11:44:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b574e33f772cf8292e52be618bacd64bbb1272466c086a56ace4751cb1cb9a5`  
		Last Modified: Wed, 10 Apr 2019 12:16:42 GMT  
		Size: 125.8 MB (125771200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cbf4ba2d072c369b790033d51fb6dea9952517d99bf8a953c210ddcf1eeb9c`  
		Last Modified: Wed, 10 Apr 2019 12:16:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

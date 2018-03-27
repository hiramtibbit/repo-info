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

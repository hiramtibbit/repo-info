## `golang:rc-alpine`

```console
$ docker pull golang@sha256:cc6855aa90650e6b5f4dd71e8554a4980b29a776add387166c3f3f25478ebd60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `golang:rc-alpine` - linux; amd64

```console
$ docker pull golang@sha256:abdf69f7bde4117559bc3af7e2a4857177c93af8c3cf53e98e315d2de9678bc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115679355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20bf8def75d652f2fa97162c69beaa7bdbe72166afbce1a814a6e9ee5a4295e4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:08:22 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 01:10:32 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 01:10:32 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Thu, 08 Feb 2018 01:11:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 01:14:49 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 01:14:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 01:14:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 01:14:51 GMT
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
	-	`sha256:ad8f2d7e5320d4b02f9f1a29e28e90e95d247bd4e46b54f952d12b973873da77`  
		Last Modified: Thu, 08 Feb 2018 02:26:55 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76eb1d35e1abf1254ecf1d61fa4e95cc2e662f1bdf51fe793a2158dc1a8cf2f`  
		Last Modified: Thu, 08 Feb 2018 02:27:30 GMT  
		Size: 113.3 MB (113305187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4098c6dcb9ee3e628ea8852f17c852054c6445e1aa6fa7b967741c126b42b0a5`  
		Last Modified: Thu, 08 Feb 2018 02:26:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:c521826e2058c90f7d7b35cf56b0113c5386ca1926dc8658563e316cac7fb9cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113602377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c2288456433cbfe9299aaf549d974e75f626d9e89a71f455caf15387696a4d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 23:25:37 GMT
RUN apk add --no-cache ca-certificates
# Thu, 08 Feb 2018 10:46:24 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 10:46:25 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Thu, 08 Feb 2018 11:02:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:02:21 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:02:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:02:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:02:26 GMT
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
	-	`sha256:770a0c6809b3d19f3e5652a04af63df39131ea6934d8c819c88e439591b8ebcc`  
		Last Modified: Sat, 20 Jan 2018 00:32:04 GMT  
		Size: 308.8 KB (308751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58bdcdf66f9406be53575c0414b717e8b671d295d2b1511588d26893a20355d`  
		Last Modified: Thu, 08 Feb 2018 11:41:56 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a03ff55a91c7c96acc511e9fc533899b7ee8e4e4743a635ddca39075f3364b`  
		Last Modified: Thu, 08 Feb 2018 11:44:35 GMT  
		Size: 111.3 MB (111254476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e107a8a5bf4534a061e2470d4f8480f069faa45151f99262cb964ee5598e90`  
		Last Modified: Thu, 08 Feb 2018 11:41:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine` - linux; s390x

```console
$ docker pull golang@sha256:6b28ef0da5a671447e7cbe02149087562c1a9862a932c11cef60292de5952a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115577295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc7154b68e63622bb7f9946db86bf3181389f057f66fa3da25c780a394c7be3`
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
# Thu, 08 Feb 2018 11:39:53 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 11:39:54 GMT
COPY file:05dc434ec17d0f39e5733c78e8250d0f8fb6dddc1c65ff8d43a8a82f38272d32 in /go-alpine-patches/ 
# Thu, 08 Feb 2018 11:41:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:41:41 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:41:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:41:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:41:42 GMT
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
	-	`sha256:e6b85616907975b3f888cce96b9503236a5aa31043d86552de4dfeead4f449ad`  
		Last Modified: Thu, 08 Feb 2018 11:48:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b766786468ac752cffad1edd4ff90cc04dd183fcf33460cecd634da11cc05c9`  
		Last Modified: Thu, 08 Feb 2018 11:48:32 GMT  
		Size: 113.1 MB (113082121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cf24158e5e59a7942c5ae6c0fcc3a7dccda533036f8a95df6103f4173175210`  
		Last Modified: Thu, 08 Feb 2018 11:48:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

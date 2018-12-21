## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:ed15b00e2bd4fbb15f7f4ed8ac8efce4a866ba194a25dd54bfa02627fbbcc164
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
$ docker pull golang@sha256:85f4b38a3ff6da01e00b7d8bf2bf133807a1d8168432229d170c21a9c1133306
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112491185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eea6b1e32f18569774a28c937f65f0082d9f6ba0b0a8e6dc04bd56cfad3d436`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:10:06 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 04:10:08 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:10:08 GMT
ENV GOLANG_VERSION=1.11.4
# Fri, 21 Dec 2018 04:12:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 21 Dec 2018 04:12:29 GMT
ENV GOPATH=/go
# Fri, 21 Dec 2018 04:12:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 04:12:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 21 Dec 2018 04:12:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cffe44344cfc591249de0c7d4608b57771ca0484f5e611e063258a0da21fe`  
		Last Modified: Fri, 21 Dec 2018 04:18:33 GMT  
		Size: 308.5 KB (308480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3441e0c2a082f780d65776aefed38beae40277df79962873ed19dd73cf2e1456`  
		Last Modified: Fri, 21 Dec 2018 04:18:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f0c82cef86c522e64595872a7a01024c8fef7eb8efb2b5a18de52865b002e3`  
		Last Modified: Fri, 21 Dec 2018 04:18:54 GMT  
		Size: 110.1 MB (110075273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235fc68d35f9b164e067fa056a5533c82b5de1561742f06d9ebf3637bf2664fe`  
		Last Modified: Fri, 21 Dec 2018 04:18:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm variant v6

```console
$ docker pull golang@sha256:f0936e49c9c7c84123cba11f42aaeb52d28ff56c0fccdcdfa80773be629a857b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108579728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ce7888c16a3e568fd328319f7e133d46d38814216472b27e64dccc6b3efff2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:33:02 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 14:33:07 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 09:11:52 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 09:33:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 09:33:53 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 09:33:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:34:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 09:34:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8201de5aff5b5115b5024e2f4ee682e96f65ff443ddd682323b7aa19e93e97b`  
		Last Modified: Wed, 12 Sep 2018 15:33:21 GMT  
		Size: 309.1 KB (309096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e900382208434531b1a9723e57f1c198a24b81081953075dfe5a3ac0460c9a4`  
		Last Modified: Wed, 12 Sep 2018 15:33:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd0ff9a7565ea51250095ac71990bb901999533e688858010a24e8801bd19fe`  
		Last Modified: Tue, 18 Dec 2018 10:16:11 GMT  
		Size: 106.2 MB (106219050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2785a37f08aaa11dd7f8aea5e173500a70f28c3b1d3f6030cbfe2a861c3a28`  
		Last Modified: Tue, 18 Dec 2018 10:14:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:050d20928eead1fbc14d211af0ace208706cebfe1a5673e42e002ad20e451182
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106379573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dcbde7c0f840c543cabce8d173cc3c54d6d92dc518827ad75f3c52e7674d14c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:55:02 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 03 Oct 2018 08:55:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 09:58:55 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 10:01:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 10:01:48 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 10:01:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 10:01:52 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 10:01:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3f4a1391079d7961eba2ea9cc2ce5e09a95517414bbb1dc7f40e72ca90c916`  
		Last Modified: Wed, 03 Oct 2018 09:09:45 GMT  
		Size: 308.5 KB (308549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bca2a75d67cfa50b1190b48b46fc51c5ff41026856301f450959c56e584737`  
		Last Modified: Wed, 03 Oct 2018 09:09:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b566202e3bf334a0f1fa162e8ecc105e4ca28a3941ec2fe45c71312dc4ed64`  
		Last Modified: Tue, 18 Dec 2018 10:11:44 GMT  
		Size: 104.1 MB (104071396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aaeef3e16cd705d3e6cf07d37cd5da0acec554350af61103abf7061f6e0ecc`  
		Last Modified: Tue, 18 Dec 2018 10:11:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:a6837383ebd21bf4b7a8c2e45598bff0f4a436831b50c0947a51d40939b47ee4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111750268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7b75e376bbb9f80e4f79b0226db56a27bdeff8be5388c81f27526b37ab79a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:58:34 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 11:58:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 11:41:38 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 11:43:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 11:43:55 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 11:43:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 11:43:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 11:43:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88b48854e8ef7f7cc1c4127a24ceb33e8f9cf42661830e2259d41047ed2fa1c`  
		Last Modified: Wed, 12 Sep 2018 12:06:04 GMT  
		Size: 309.1 KB (309057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88eadf9be9fe933353c971717fb583fc86814426961e788d98cc5f5a0f22231`  
		Last Modified: Wed, 12 Sep 2018 12:06:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0cc0a8d51f88e6ec3bb0e0b84a91f8e5ea94814fb1bf4ffdd871e28b4e9477`  
		Last Modified: Tue, 18 Dec 2018 11:50:32 GMT  
		Size: 109.3 MB (109271739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652f79c722627d519b786cf1a371f2dc5909d30dfb94734cc9433966c844d1a8`  
		Last Modified: Tue, 18 Dec 2018 11:50:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:6a3d7d654493fd1d8b51c0a27cdfdca76dbaafab0a74d60d739374d0903bbf5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106453155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3d027281ffdd8a1e86b65546326335c2cfe74b18500713ee7d96aec256940d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:11:16 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 10:11:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 09:21:54 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 09:23:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 09:23:47 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 09:23:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:24:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 09:24:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54092da6ca5cde8da0c2204277aabd5bd12f307a42131b6daf40d949e9feab5`  
		Last Modified: Wed, 12 Sep 2018 10:28:56 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a879b3502434a3c580db6b6e99ac7b6ca7364e21f2457a611e8fa6338f3a00d6`  
		Last Modified: Wed, 12 Sep 2018 10:28:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a4002e45315f17666b2f1a0c1763bbb11f45cf1f33be1bf584173cd905895f`  
		Last Modified: Tue, 18 Dec 2018 09:34:39 GMT  
		Size: 104.0 MB (104041997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a5a09371b8ff46a09d030fb6d71405dd5edcf38c9f556c0f0a5f7490a5739c`  
		Last Modified: Tue, 18 Dec 2018 09:34:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:b81759de65d92086230c9dc18259959a8c73d890c6908891c7cb3dfb70002d27
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112730447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1242dacf385932177732bd7b7241a0fd935517336f61eced6ce7fbae7b7845`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:24:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:24:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 12:45:31 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 12:46:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 12:46:58 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 12:46:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 12:46:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 12:46:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d9314496f9a11b63a2b3c42e724d83980e58456be9659cb829d27e9c47a756`  
		Last Modified: Wed, 12 Sep 2018 12:30:39 GMT  
		Size: 309.4 KB (309445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade711cb5ab6a5b6d38fe3b4464e277d7e7b378862902ea411e687b3aab0fe15`  
		Last Modified: Wed, 12 Sep 2018 12:30:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5c7e0c4358755384c47a29566b3532eccb40680edcb7d3bc35dfc5291ae19e`  
		Last Modified: Tue, 18 Dec 2018 12:52:17 GMT  
		Size: 110.2 MB (110219363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481dd84ce924f7edc54a7deb625dc9ec55585fea956cee66a541920d226993d5`  
		Last Modified: Tue, 18 Dec 2018 12:51:57 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

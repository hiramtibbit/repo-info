## `golang:1-alpine`

```console
$ docker pull golang@sha256:e70a252a1ff036719b5b1910b504d9e8356c7598d5d8deb032aceea9bcf82ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `golang:1-alpine` - linux; amd64

```console
$ docker pull golang@sha256:385d6260600a0e239a824cfc93948d679fdc7c1c5ca6d9f532c0cebf0ea073cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112785445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bfb3d22bdabe2a4460d6739e73db18f41d5d12731a854fefbc8d071f5c339c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:52:16 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 22:52:16 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 00:15:31 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 00:17:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 00:17:27 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 00:17:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 00:17:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 00:17:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e793f0ebe8a0d4496ef2fca6d5d45493df6dc40503657b357e153fa91548171`  
		Last Modified: Tue, 11 Sep 2018 22:53:41 GMT  
		Size: 309.0 KB (308969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77995fba19184aad4b702852da2d04d7b92693f2923499f5d388fd8d2ce2dd81`  
		Last Modified: Tue, 11 Sep 2018 22:53:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7163faffe529d45e4a9be5a6dfe8dc544475a861e5e4858d74496cd860e1736`  
		Last Modified: Tue, 18 Dec 2018 00:26:24 GMT  
		Size: 110.3 MB (110269266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa50bc8c9e6a48bd976258bc38e6c3e310a79fc6b84f32f6a7358ce84a433e81`  
		Last Modified: Tue, 18 Dec 2018 00:26:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:6a5c43a7b1d22dc4de1a26b40e613431b178cc9d1363ecdeeb276586b2ac5b36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108896291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213f36c0017f3bf37e96030013291b69675820b8c1c09d631422cb5c9ccd7941`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 14:11:18 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 14:11:22 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 08:49:34 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 09:11:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 09:11:21 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 09:11:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:11:34 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 09:11:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539e55f19a97fe33cff4d5a4e6051e8d1a2c081688016c79e14053884b216695`  
		Last Modified: Wed, 12 Sep 2018 15:29:21 GMT  
		Size: 309.1 KB (309071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709c5449f2ce4b53ccaecb353240f946ac53eca71987f82414919966ea46b00e`  
		Last Modified: Wed, 12 Sep 2018 15:29:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1a97970d54d3782c6e842246bb75cccafacc403b7b1caaf94edb243f64dc4e`  
		Last Modified: Tue, 18 Dec 2018 10:13:34 GMT  
		Size: 106.4 MB (106440283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f080f71d9e0cf2d4c8b7033d81d63389a65fa157984f3d83a0aa79270d29bd`  
		Last Modified: Tue, 18 Dec 2018 10:11:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:db184f2a999e640d355a388aa06aa3c87d7ca30acd702fbe4a5c88fb318ce915
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106693836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5909753269f35396abda175d9450012d7ea82e7fec3115d724ea50c5b981a14b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:51:01 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 03 Oct 2018 08:51:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 09:55:41 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 09:58:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 09:58:36 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 09:58:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:58:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 09:58:40 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cdac08f3358dba836f2b7ded1fa5dc2150665abbe222782cae6cf449c3078f`  
		Last Modified: Wed, 03 Oct 2018 09:06:55 GMT  
		Size: 308.5 KB (308522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ef4ad6416adae80970c5edd8e49ff9040d95e018ae5ad3f51e6adc1acdcf87`  
		Last Modified: Wed, 03 Oct 2018 09:06:54 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cbcdf1c9a15549e109e3937e763acdd735f72ed19cbd54ebfd9f5e02e5621ec`  
		Last Modified: Tue, 18 Dec 2018 10:10:43 GMT  
		Size: 104.3 MB (104285096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faff921cc007d72a150c7426eae42d4609d892bb046e3f1b783b24e48b5a1c85`  
		Last Modified: Tue, 18 Dec 2018 10:10:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:7e286ea3357ef710e1844e4b59bdf11aaf904379872c691842dbcf2231921f66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106747232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cb1037fd6792dde7df41608d2a2c82df93517f2852d32ba32c6d8b39f35b75`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 18 Dec 2018 09:19:33 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 09:21:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '4cfd42720a6b1e79a8024895fa6607b69972e8e32446df76d6ce79801bbadb15 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 18 Dec 2018 09:21:19 GMT
ENV GOPATH=/go
# Tue, 18 Dec 2018 09:21:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:21:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 18 Dec 2018 09:21:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8ee986c6ff418dec5d79b31ce0b3615a9d457ce7899f3f96b119cc84c9727f`  
		Last Modified: Tue, 18 Dec 2018 09:33:22 GMT  
		Size: 104.2 MB (104240667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6ebc3a99efce90ebdd13727982e3f6a0b581c23ee156ba548537a031152c61`  
		Last Modified: Tue, 18 Dec 2018 09:32:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:rc-alpine3.8`

```console
$ docker pull golang@sha256:65fd3f75ce8541804c59e4a2142903b6a2dcc7a6239384ae9df7ddee56cd04cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `golang:rc-alpine3.8` - linux; amd64

```console
$ docker pull golang@sha256:a4a76cc13448c895ee3c7d9891326cd275dda3bd5a3c5946456a8a9da14b2fdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124684812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9271ffdd56b6c49d123c9190ae97ebb33bd8d2e1dda00bf805b7296a5bd9461`
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
# Thu, 20 Dec 2018 03:21:21 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 03:23:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 03:23:59 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 03:23:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 03:24:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 03:24:00 GMT
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
	-	`sha256:e2b7d1b6b6761a0173c39f035f56343ac7811192f650a120b98ab148e835e183`  
		Last Modified: Thu, 20 Dec 2018 03:25:54 GMT  
		Size: 122.2 MB (122168633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbc0175c18bbc369448feeb31d528308731df2345d423d3e9550a621b173ea5`  
		Last Modified: Thu, 20 Dec 2018 03:25:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine3.8` - linux; arm variant v6

```console
$ docker pull golang@sha256:f8a72bbd9ea566be765db2ac8fa19c49df60871cdfa6cd36836b2fe9c40a2561
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120833689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f73f763fa4f3b81ff8c199a160dccbf3b47fe48afc2163f4f41babb0b2dcc28`
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
# Thu, 20 Dec 2018 08:49:20 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 09:35:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 09:35:14 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 09:35:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 09:35:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 09:35:28 GMT
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
	-	`sha256:2de416464b99825aaf40f8b14391c6c98f0d1628ba7eb495b00d78e47aab3546`  
		Last Modified: Thu, 20 Dec 2018 09:37:45 GMT  
		Size: 118.4 MB (118377680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc55b35fe122dfe6138acccb65900d1df3a42313e361b5b38aea611837fe2ee4`  
		Last Modified: Thu, 20 Dec 2018 09:35:56 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-alpine3.8` - linux; ppc64le

```console
$ docker pull golang@sha256:ccb73d47e0a52f4779f1176b69035e8bb8ae4d44c866473a27b92914351b24b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118388621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cfe5427069aad05f54deb13fe473ae68955a3a4e724396651c682bf52c17351`
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
# Thu, 20 Dec 2018 09:18:36 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 09:20:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 09:20:31 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 09:20:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 09:20:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 09:20:40 GMT
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
	-	`sha256:1e04605cfb10f39ca4c66ced47284ade8c6790d16372fd8cafe0aecfb13f6a77`  
		Last Modified: Thu, 20 Dec 2018 09:23:07 GMT  
		Size: 115.9 MB (115882056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d266043f862c8de2383b63aa6b1217f227eed53d568765542521e224617297a5`  
		Last Modified: Thu, 20 Dec 2018 09:22:43 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:alpine`

```console
$ docker pull golang@sha256:bf3243ef1ddd18d190f22ab58c08750a3ded13c0d06a6a2a6f7e4c3451177dc4
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

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:5ec3232b32e6876c0941d66d8392f667c77ca1ef14cafb85991deea4339b92da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128333802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7330979841b518aea1cda2d02466c978b40431bbff3c60f9f0cebb18f8624d7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:26:53 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 00:30:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 00:30:01 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 00:30:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 00:30:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 00:30:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb89ac7faaa96be5766878cb01812422cb180a1b2bc7941e59d0164317766344`  
		Last Modified: Sat, 11 May 2019 00:33:33 GMT  
		Size: 125.3 MB (125274584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb43bd9c21dcf98c3c1391e7d823ae075f050cd0a3fee64e2f3b40180889287`  
		Last Modified: Sat, 11 May 2019 00:33:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:17f085bd776499509679fac2f1c4e48220800233493ef030d87813f95949884b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124200044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055fa5d437f987e04199b02166c02a6cf8b39881bd562b4967d936c26353b94`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:14:34 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 09:17:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 09:17:02 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 09:17:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:17:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 09:17:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdce29cc20ede36d7d8b757743be9de48ff7609ab4a71e0b69b5c26c30a29ddc`  
		Last Modified: Sat, 11 May 2019 09:20:41 GMT  
		Size: 121.4 MB (121354195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da43e0350823aef0f22f2c3947fb401e0060c73f58002c66bef12a9cda077586`  
		Last Modified: Sat, 11 May 2019 09:20:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:8458edeb20b6366250b3557d4c00cb59faaf4b545a4cd5b77b60d2473d1cc9f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123669738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601a6603aee8735c1fffbc6302acd5228a59d729299e1832b98872bcc7973f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:04:56 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 13:04:58 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:04:59 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:07:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:07:16 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:07:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:07:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:07:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244bb6187057b19715bec6eba8785b00476ef37399206d6b41b5dadcb4864765`  
		Last Modified: Sat, 11 May 2019 13:10:01 GMT  
		Size: 301.0 KB (301023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644f99f22ce58b3e0b1a3e64558c9f0b0d402ea20857d0485c3fce77732e151`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed083874e4bfdc746dc636a6a88c950557e85a0aead3f6a10f509cec65c671a1`  
		Last Modified: Sat, 11 May 2019 13:10:39 GMT  
		Size: 121.0 MB (121017740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e3ffb64f4ddad600765b4e5e39a9639cd4fa95e1252d197f0e7c07264905ee`  
		Last Modified: Sat, 11 May 2019 13:10:00 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:038787a4060487227c7e87e61a7663394cfa9a1dcb07a8aa58c11a3ba62d28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121962481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:306636bcc7d9a56b10842d7c433df8236ae60f0494588173a4146f84e2fd28e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:02 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:00:03 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 15:13:58 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 15:18:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 15:18:26 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 15:18:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 15:18:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 15:18:32 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9432f2aaa2016cb694649036ccbf719ec50f9da197c29121a52e526eeab427`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 302.3 KB (302328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069c84dac03098298a9585b075d2eec3eacfccf465c151989aefd9d50b4f350f`  
		Last Modified: Sat, 11 May 2019 09:03:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b4db112f30cbc906762717e0229e84fe94d812695757cb8dc0340eb715dfe4`  
		Last Modified: Sat, 11 May 2019 15:25:33 GMT  
		Size: 119.0 MB (118971096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25103b4085ad48d3a83015e071ad17bf7c259d50de103ee067e0be425dae79ac`  
		Last Modified: Sat, 11 May 2019 15:24:33 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:160c65be08f904ddf0c2b702dd8657342093c0b0669a9d368afcb37aa8ba659f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128087955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ece2823661533017284854fd16910abd56933610176f2f5145e82698bd5962`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:59:38 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 10:59:39 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:59:39 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 11:02:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 11:02:13 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 11:02:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 11:02:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 11:02:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4094c2cd9e622692a555c355e0c099bf5d0dc8c57f7415ce84d442ac1cd3495c`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 302.4 KB (302437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d72c41e7b1cd39b19505a27d3cf1344cfbb1e8a5328d2aa4fced1017f284910`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf0e074dad91d469c4ed6537615612e260aa77e141f7632fb436be3c8750ac0`  
		Last Modified: Sat, 11 May 2019 11:05:35 GMT  
		Size: 125.0 MB (125033148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25751b95a95702c538fc6b1afdedae40a71f7db6e2c1361232e204ac225e1bee`  
		Last Modified: Sat, 11 May 2019 11:05:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:2661946dea0712fdba91b4d449ac0f15387b300bd7f3cf1d7100349688e83f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121785720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f653cf53d9c65823c2941b150f9ea9f91cfcdd7eb7ddb4dc0ea2405d2945df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 22:14:46 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 30 May 2019 22:14:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 11 Jun 2019 10:15:36 GMT
ENV GOLANG_VERSION=1.12.5
# Tue, 11 Jun 2019 10:18:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 11 Jun 2019 10:18:27 GMT
ENV GOPATH=/go
# Tue, 11 Jun 2019 10:18:34 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 10:18:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 11 Jun 2019 10:18:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa3bfa99a2b06c1bb855d7b513ef6869c9a02be3b038a57f97b01e23b3a92b`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 304.5 KB (304545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e800599b653ef2beec81a7a9c42b5133bfa73bf11ba5ce760f1591ed3a75f8`  
		Last Modified: Thu, 30 May 2019 22:17:39 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5506168ed3567e7d04b3dec89e29124217806a822d0d7d71db0be580f71015f`  
		Last Modified: Tue, 11 Jun 2019 10:29:42 GMT  
		Size: 118.7 MB (118699847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a53d1e09630364012114904aaa7b2b15e689de1f9a7f806ecc20939f9b1fb1`  
		Last Modified: Tue, 11 Jun 2019 10:27:57 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:1091f5792a141c80e1b9fde3a09fefd19d5065598b9ce24a53ec9498a7c568a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128654573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5919e9aa782e8b78f6dbcc758acd557350a80f4ee45fc2ab9df99980ad173`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:14:30 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 12:14:31 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 13:56:55 GMT
ENV GOLANG_VERSION=1.12.5
# Sat, 11 May 2019 13:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '2aa5f088cbb332e73fc3def546800616b38d3bfe6b8713b8a6404060f22503e8 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 11 May 2019 13:59:00 GMT
ENV GOPATH=/go
# Sat, 11 May 2019 13:59:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:59:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 11 May 2019 13:59:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86efcbb09c21b5959513cbba9acad2e705a0d6739bc8ed1eda85c2cbf7839a77`  
		Last Modified: Sat, 11 May 2019 12:15:40 GMT  
		Size: 302.4 KB (302397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5022a6761590134550dbde37d10860fc7595717fd6eaad9823d2113128fa7930`  
		Last Modified: Sat, 11 May 2019 12:15:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227f1a728c52dceea799e998180e1b28970d81ec912195746a72f302a10d0e00`  
		Last Modified: Sat, 11 May 2019 14:02:28 GMT  
		Size: 125.8 MB (125808564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf5574f688e874d4f149fb93e45921b49774ffdafcc99b659a80b6eef1ca315`  
		Last Modified: Sat, 11 May 2019 14:02:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

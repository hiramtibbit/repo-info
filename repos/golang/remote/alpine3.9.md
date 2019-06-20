## `golang:alpine3.9`

```console
$ docker pull golang@sha256:39677a9dd517a8e5d514dff8e36fa46ecc3fb14618b970bfaf3100cb8fab9ba6
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

### `golang:alpine3.9` - linux; amd64

```console
$ docker pull golang@sha256:6f0d1bff4bc451c69a7d101bbc912736abbaee274eb149c0a6fb26b443ffbac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128343353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04879bf1b7fb06885d0f88d3870584dd1ee21e9301e4fd32da7e4666e54aa6b`
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
# Wed, 12 Jun 2019 15:19:56 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:22:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:22:36 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:22:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:22:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:22:37 GMT
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
	-	`sha256:d0296d54462242592bf7b6bb9b072ddffff1f031dfb5959219541cdc2ebf3ad6`  
		Last Modified: Wed, 12 Jun 2019 15:28:53 GMT  
		Size: 125.3 MB (125284136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1583d520140a97d788cbb2efe71e00c1372968f9229e6728e5fb9dbcbfcea5`  
		Last Modified: Wed, 12 Jun 2019 15:28:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm variant v6

```console
$ docker pull golang@sha256:b4c3cc9669f5984c3e807401d6f927dfe322e3916061cbb46aceafd638060254
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124197615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a24a43f1c4f2b2424348401199bd43e15242c451b545a8f50f58c1b84cb228`
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
# Thu, 13 Jun 2019 00:52:13 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 13 Jun 2019 00:55:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 13 Jun 2019 00:55:44 GMT
ENV GOPATH=/go
# Thu, 13 Jun 2019 00:55:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Jun 2019 00:55:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 13 Jun 2019 00:55:48 GMT
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
	-	`sha256:097953e8a84b3e96ff6d79cbfbed73953a7326273e582d70db05596a563c7370`  
		Last Modified: Thu, 13 Jun 2019 01:02:40 GMT  
		Size: 121.4 MB (121351765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf0ee21c8162af7779fef3c8925768fa118cdfad1e183f06058423807bd97fb`  
		Last Modified: Thu, 13 Jun 2019 01:01:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm variant v7

```console
$ docker pull golang@sha256:67437324fa166c4dbb9c20d60792704e05c954c482a14c0d7c5a05d2e14b479b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123686637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a9617a27fd73267c35c1251aa7110d4d629af87f1199e6fdd455c7b5b551c7`
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
# Thu, 13 Jun 2019 00:33:43 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 13 Jun 2019 00:36:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 13 Jun 2019 00:36:07 GMT
ENV GOPATH=/go
# Thu, 13 Jun 2019 00:36:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Jun 2019 00:36:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 13 Jun 2019 00:36:11 GMT
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
	-	`sha256:0dfdc863c30d6bea32d839cd04a4f3e52024ecd0d1dfa73579c2d54844079cac`  
		Last Modified: Thu, 13 Jun 2019 00:41:30 GMT  
		Size: 121.0 MB (121034639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d68e9df1984001150a314efeae2f38e44c443abe4ac408a1489982cfe79d3e`  
		Last Modified: Thu, 13 Jun 2019 00:40:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8c9440cf32129dc1004bd7134f6f6dbfa2dc7ebdee5309a87357ce3674f2b888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122023214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42649bce01c1c11a2079e7bb1e28e5d9b49153b3bf87b6eb6bea67fbb28a7bcb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 20:56:05 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 19 Jun 2019 20:56:06 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 19 Jun 2019 21:58:37 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 19 Jun 2019 22:01:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 19 Jun 2019 22:01:18 GMT
ENV GOPATH=/go
# Wed, 19 Jun 2019 22:01:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Jun 2019 22:01:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 19 Jun 2019 22:01:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4add8f29bf03f3d6fce96396daad08e0039610b96925452697ea40933ec96ec4`  
		Last Modified: Wed, 19 Jun 2019 20:57:32 GMT  
		Size: 302.4 KB (302429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a54cdb6f8d9efb5c7906e854f297284c50db62dea68960f9665d4e134a2da6`  
		Last Modified: Wed, 19 Jun 2019 20:57:32 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1a9ce08233738688a6204a4a2a4d843e80879f222282136db1df2083fe09af`  
		Last Modified: Wed, 19 Jun 2019 22:06:33 GMT  
		Size: 119.0 MB (119031696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc5a47f3a6bfda89a56ef323b23105eabb77a311ae690b0d2082fab647d5ada`  
		Last Modified: Wed, 19 Jun 2019 22:05:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; 386

```console
$ docker pull golang@sha256:1827bde65994c3cd17924bc0fc61421dd4d6bd9a5b548a357f979697262fc48e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128088204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d91cd0f551b83b58e44c49b8fa83ace28c611529d4e3b1594bd007d440527dae`
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
# Wed, 12 Jun 2019 15:38:47 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:41:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:41:23 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:41:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:41:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:41:25 GMT
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
	-	`sha256:1f23955a018a800b7606b1e25ec6420e7a03c3b4d6111c655f7ad0a6ddbe1d8f`  
		Last Modified: Wed, 12 Jun 2019 15:47:57 GMT  
		Size: 125.0 MB (125033397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7937c6507eb3e9fc5eed7c61b73de3ebb424d0d6bd8537f3fb93ec06c2a00345`  
		Last Modified: Wed, 12 Jun 2019 15:47:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; ppc64le

```console
$ docker pull golang@sha256:eb5966ca8232cd7de986c11bd088fed3ac95174a60f7771972f95adf22b32866
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121806467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce38d5a974e26478dbf9a989e459c0b989ed50cb4929505142bcd81da7815e4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:35 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Wed, 19 Jun 2019 21:20:36 GMT
CMD ["/bin/sh"]
# Thu, 20 Jun 2019 00:22:35 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 20 Jun 2019 00:22:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Jun 2019 00:22:40 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 20 Jun 2019 00:25:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Jun 2019 00:25:14 GMT
ENV GOPATH=/go
# Thu, 20 Jun 2019 00:25:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jun 2019 00:25:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Jun 2019 00:25:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0037036dcccd0071ea857ee57d9b7e8df992d55ad7c4fbe42c7d7015b197fa98`  
		Last Modified: Thu, 20 Jun 2019 00:30:22 GMT  
		Size: 304.5 KB (304540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaad5dace2430383e19c248d191892e065108421eb8e65b4b5b0b10d3ad9da6`  
		Last Modified: Thu, 20 Jun 2019 00:30:21 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2248c19f13d544c7fbf60f24abca3925204d9cfb26831c83f80e6b083a8a06`  
		Last Modified: Thu, 20 Jun 2019 00:30:53 GMT  
		Size: 118.7 MB (118720599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abf6dd3c29e6975bfed64d2a144405953f202547481d6b179546b85aa6a85f1`  
		Last Modified: Thu, 20 Jun 2019 00:30:21 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:alpine3.9` - linux; s390x

```console
$ docker pull golang@sha256:0f64f4e22f085eb665d97c88ca61bf32155bf287d9aa49308e4c8bed46914050
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128648279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97108a83ad5bfa9369e8159bcf82b1a22fb854c0da32105f9d47fde093ae6e47`
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
# Wed, 12 Jun 2019 15:42:37 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:44:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:44:38 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:44:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:44:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:44:40 GMT
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
	-	`sha256:55aa1b9a2a08eaa5b773b15bca8fddd7cc73397bf87d0ad98daabe227c5206a4`  
		Last Modified: Wed, 12 Jun 2019 15:52:11 GMT  
		Size: 125.8 MB (125802270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b4bcfe7fe7f5cbd35318f26696874a44b6e048425626e8cecc6a551157dce2`  
		Last Modified: Wed, 12 Jun 2019 15:51:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

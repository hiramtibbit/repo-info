## `golang:1-alpine3.10`

```console
$ docker pull golang@sha256:13ddbc2356ec635391e435bf7d60c566187eae1aef923f2d0902a63ea48d6549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `golang:1-alpine3.10` - linux; amd64

```console
$ docker pull golang@sha256:63fc52e9c505863d0d0907b8596f96eb3deecc31f63599d3f30031b4157d3e5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128402575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4b7a8b94959c05c63cad3813eacbfaf008a2035e5e03594ef19ad85ca6c9fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Thu, 20 Jun 2019 20:19:37 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 20 Jun 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Jun 2019 20:19:38 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 20 Jun 2019 20:22:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Jun 2019 20:22:11 GMT
ENV GOPATH=/go
# Thu, 20 Jun 2019 20:22:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jun 2019 20:22:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Jun 2019 20:22:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d38965338529dc04aed99fbfbf548d181545c1ee2352b716e4ead932b3d11c9`  
		Last Modified: Thu, 20 Jun 2019 20:25:07 GMT  
		Size: 301.7 KB (301713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c34ce20860db7ccc4b5329e6db12278b15269042d97d77ab3d8ebc0df71d0c`  
		Last Modified: Thu, 20 Jun 2019 20:25:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9186bf07c4ae4c9b25f60f833c87668c6da25c10aac9de5cd68f55448059976c`  
		Last Modified: Thu, 20 Jun 2019 20:25:29 GMT  
		Size: 125.3 MB (125310993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1720e95b4b8e6fba9d5678b32b320c471b0cad342922fd1c27fd0c774fd945`  
		Last Modified: Thu, 20 Jun 2019 20:25:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.10` - linux; 386

```console
$ docker pull golang@sha256:12c3afb396bd6ffbff11a5ef144a240d58ffe1cf8a1812f0d5d9258985245d4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128147568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d08a4bcb9682dc94c9fb4134b53e0ccdaf49d24695fd9be8537be70c27c3e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Thu, 20 Jun 2019 20:38:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 20 Jun 2019 20:38:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Jun 2019 20:38:30 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 20 Jun 2019 20:41:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Jun 2019 20:41:05 GMT
ENV GOPATH=/go
# Thu, 20 Jun 2019 20:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jun 2019 20:41:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Jun 2019 20:41:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08ff0c45aa6f27748211b9574af5d4fe624f84a8705d6b4902210ce6ef815d2`  
		Last Modified: Thu, 20 Jun 2019 20:43:58 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72ceafd15543542eb7bd87b721ade36c7d28104359a656dc9b19f001f6873d6`  
		Last Modified: Thu, 20 Jun 2019 20:43:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917bd8e42f45de8ee9f036276392396b1f3689ae4127cd96d71e7f426025fa7f`  
		Last Modified: Thu, 20 Jun 2019 20:44:23 GMT  
		Size: 125.1 MB (125067748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d589dc2233d22bd8555da2f93e35052f1957f697c8790ac40b27296e009136b4`  
		Last Modified: Thu, 20 Jun 2019 20:43:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.10` - linux; ppc64le

```console
$ docker pull golang@sha256:5173ad949aec5d30489b1c642c05c1e8da508ff8fa4e6b036ab98dfb18e09335
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121859265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aac3238e1f9b094f0ba186b665089ef03536fe2eb58fcf771e9614faca926f0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Thu, 20 Jun 2019 20:16:55 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 20 Jun 2019 20:17:02 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 20 Jun 2019 20:17:06 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 20 Jun 2019 20:18:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Jun 2019 20:19:06 GMT
ENV GOPATH=/go
# Thu, 20 Jun 2019 20:19:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jun 2019 20:19:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Jun 2019 20:19:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719eeb87d2dff021e235fa473f49e8e8750295c041bdde5f37be6bd69f095754`  
		Last Modified: Thu, 20 Jun 2019 20:22:23 GMT  
		Size: 304.5 KB (304451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0ac26a8a26b069778a0113132d847a6d98419887552fb021e7cd05e19db8f0`  
		Last Modified: Thu, 20 Jun 2019 20:22:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b97b6e6eb258cc0330b28b681961a714b9898702d7fec54e0297f33ca5cc0b`  
		Last Modified: Thu, 20 Jun 2019 20:22:54 GMT  
		Size: 118.7 MB (118748189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5168a984dc973cc157d521b3668310c27aaf1d05bc7936638702ce191bc6f975`  
		Last Modified: Thu, 20 Jun 2019 20:22:23 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

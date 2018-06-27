## `golang:rc-alpine3.7`

```console
$ docker pull golang@sha256:70e2e799a79e1696fb06bfbdfe69cac671e41c155adbf7fa9c3b711557feadc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:rc-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:d0b0a49b56a0e09679a2630897e955a1131905e97ce335ae79e775a84371d679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156381133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2f869114bb22f1b15923387348f92ce009f2b187ff458f8c009c03e6b893aa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 03:14:27 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Jun 2018 03:14:28 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 27 Jun 2018 22:20:50 GMT
ENV GOLANG_VERSION=1.11beta1
# Wed, 27 Jun 2018 22:22:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '5955eeb8f45e02aa5357fc18e62f1fe6c1b19e0c50aba93b8b9d9ef13b862dda *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	for p in /go-alpine-patches/*.patch; do 		[ -f "$p" ] || continue; 		patch -p2 -i "$p"; 	done; 	./make.bash; 		rm -rf /go-alpine-patches; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 27 Jun 2018 22:22:43 GMT
ENV GOPATH=/go
# Wed, 27 Jun 2018 22:22:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 22:22:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 27 Jun 2018 22:22:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8dbf6f23bf1c326de78fc780c6a870bf11eb86b45a7dc5671260291daa2ab1`  
		Last Modified: Wed, 06 Jun 2018 03:20:44 GMT  
		Size: 308.0 KB (308024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d01df27c53e651ecfa5c689dafb8c63c759761a757cc37e30eccc5e3a3cae8b`  
		Last Modified: Wed, 06 Jun 2018 03:20:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf8226fb44811c6fed8ffbcd4a1c3074d0acb4ab35f4d04544f477353ff1ed1`  
		Last Modified: Wed, 27 Jun 2018 22:31:31 GMT  
		Size: 154.0 MB (154007293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de3db266413a1c69d9cef6b4b442d4593bead0aa1748f6235d59b0c0e97c913`  
		Last Modified: Wed, 27 Jun 2018 22:30:33 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

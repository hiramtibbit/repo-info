## `golang:alpine3.7`

```console
$ docker pull golang@sha256:7b6750ec8163d8432d8e28419f80103227c98ce655f830607bd5fc3cc092898a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:92639e193d1f3afbce38510df987b1a3eba20a683c4b69f281ba858ed90be2c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.5 MB (112490060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0a35da52b75a34e9c397cec93f0df31c7a93d95cc302d3aef744e9d5a34584`
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
# Wed, 23 Jan 2019 22:59:10 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 23 Jan 2019 23:03:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 23 Jan 2019 23:03:15 GMT
ENV GOPATH=/go
# Wed, 23 Jan 2019 23:03:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 23:03:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 23 Jan 2019 23:03:17 GMT
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
	-	`sha256:c1a4f745bc67fe325bf26f9d8e0bdad3c179db5e0fde00ab295ac6c8c6982661`  
		Last Modified: Wed, 23 Jan 2019 23:23:20 GMT  
		Size: 110.1 MB (110074147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3642b0b6add9b8a91a2f344299cc5f3442d512683845fc0515bff8a1dc1f1b97`  
		Last Modified: Wed, 23 Jan 2019 23:22:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

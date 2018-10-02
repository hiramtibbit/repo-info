## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:58d82325101139738ba773626b4096581891e2a7e0b29b6cbd797b34096bf4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:0d487bc069bdd9977d416711b2cd9997c91bb03b2b9a0780b54b48f603bca9c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112388635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac08837dd00008747f5caaeb28f8b8d83b961dce02ecb8bd7dc0f1d4880139eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:01:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 23:01:45 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 02 Oct 2018 17:17:14 GMT
ENV GOLANG_VERSION=1.11.1
# Tue, 02 Oct 2018 17:18:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 02 Oct 2018 17:18:55 GMT
ENV GOPATH=/go
# Tue, 02 Oct 2018 17:18:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Oct 2018 17:18:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 02 Oct 2018 17:18:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414cf715db898fd1ae3a76199126baff0e9721f0e358821a81aad1b519772c05`  
		Last Modified: Tue, 11 Sep 2018 23:12:07 GMT  
		Size: 308.3 KB (308313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca20e3239632ac69edae40601b8a72b30106a4df2279c50512201fd9f713507d`  
		Last Modified: Tue, 11 Sep 2018 23:12:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0dd6eab1ce669b3c769a685860af6880057bed2cf03b61497607001b719b0a`  
		Last Modified: Tue, 02 Oct 2018 17:22:46 GMT  
		Size: 110.0 MB (109972868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057a6a8beaf3e6a50e442c76cc95ab7a2c446aacb83781dde545cb8b2dedd271`  
		Last Modified: Tue, 02 Oct 2018 17:22:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

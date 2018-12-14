## `golang:alpine3.7`

```console
$ docker pull golang@sha256:3affd47c76b5da65bd3fc16415491eff159281a7bfa2b7ceb3bb27e73b2f93bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:923f0c35a60e63a342d8a97155610065761a95ea24abb7f0ac44130def35fc56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112405999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af463a9afca7d6bb34786be5df6cbf0b400a0e654a60d9fca9584dd738a53f34`
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
# Thu, 13 Dec 2018 22:57:46 GMT
ENV GOLANG_VERSION=1.11.3
# Thu, 13 Dec 2018 22:59:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '7ec5140f384db2bd42b396c93c231dfba342ee137ad8a4b33120016951eb1231 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 13 Dec 2018 22:59:27 GMT
ENV GOPATH=/go
# Thu, 13 Dec 2018 22:59:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Dec 2018 22:59:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 13 Dec 2018 22:59:28 GMT
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
	-	`sha256:c4c75b3ae04197e66628373a5f9481b2faf599607bfcbc3ab5aeb42f75d31a59`  
		Last Modified: Thu, 13 Dec 2018 23:08:29 GMT  
		Size: 110.0 MB (109990231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21762ae0d2cd7b9f863c365532c2c6a374525ac928b58f408268841b6d0507e`  
		Last Modified: Thu, 13 Dec 2018 23:08:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

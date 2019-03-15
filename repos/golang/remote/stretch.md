## `golang:stretch`

```console
$ docker pull golang@sha256:8630e0f0e9a8187f54066ea81a9fe33a21ddbfbe88c7149fe2299d8cd989ad63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:stretch` - linux; amd64

```console
$ docker pull golang@sha256:6e05cfdec2da6084128b57fb5b9c410994e02566b86badc0643dfecaed2f4aee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296070300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e5881731e49298ee9248a4ee7776d923e18d41634dccd5519859a3ace3c474`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 07:11:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Mar 2019 20:24:49 GMT
ENV GOLANG_VERSION=1.12.1
# Fri, 15 Mar 2019 20:25:00 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2a3fdabf665496a0db5f41ec6af7a9b15a49fbe71a85a50ca38b1f13a103aeec' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='ceac33f07f8fdbccd6c6f7339db33479e1be8c206e67458ba259470fe796dbf2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='10dba44cf95c7aa7abc3c72610c12ebcaf7cad6eed761d5ad92736ca3bc0d547' ;; 		i386) goRelArch='linux-386'; goRelSha256='af74b6572dd0c133e5de121928616eab60a6252c66f6d9b15007c82207416a2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='e1258c81f420c88339abf40888423904c0023497b4e9bbffac9ee484597a57d3' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a9b8f49be6b2083e2586c2ce8a2a86d5dbf47cca64ac6195546a81c9927f9513' ;; 		*) goRelArch='src'; goRelSha256='0be127684df4b842a64e58093154f9d15422f1405f1fcff4b2c36ffc6a15818a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 15 Mar 2019 20:25:01 GMT
ENV GOPATH=/go
# Fri, 15 Mar 2019 20:25:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Mar 2019 20:25:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 15 Mar 2019 20:25:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619f4932b7eaf15f992a64cf8b6821c6fd39c20ae7d24a26580e44174a856ce7`  
		Last Modified: Tue, 05 Mar 2019 07:13:02 GMT  
		Size: 57.6 MB (57634055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e105463ffe6dfaf924f62082c2cd3a02aa6890a7bb0119b41767882e9cb1b4`  
		Last Modified: Fri, 15 Mar 2019 20:33:30 GMT  
		Size: 127.9 MB (127905875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed842bbe1793c2eace8dffb27a4d0066746ead8d75ece8362addfd996ae0d6fd`  
		Last Modified: Fri, 15 Mar 2019 20:33:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

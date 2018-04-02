## `golang:latest`

```console
$ docker pull golang@sha256:f6209f21f012352aa18b2a601ec42fc719df52d79107452330c3d9a46b767640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:7dd32818bf5ac36b198a36b91323f9c47eb86e0fb11a339123d75e4a3923d2f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288065550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe15d4cbc64ea9bf5ff4f9c56bb70a4fca285063e0005453915e989b96d937c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 21:36:53 GMT
ENV GOLANG_VERSION=1.10.1
# Fri, 30 Mar 2018 21:37:08 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='72d820dec546752e5a8303b33b009079c15c2390ce76d67cf514991646c6127b' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='feca4e920d5ca25001dc0823390df79bc7ea5b5b8c03483e5a2c54f164654936' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='1e07a159414b5090d31166d1a06ee501762076ef21140dcd54cdcbe4e68a9c9b' ;; 		i386) goRelArch='linux-386'; goRelSha256='acbe19d56123549faf747b4f61b730008b185a0e2145d220527d2383627dfe69' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='91d0026bbed601c4aad332473ed02f9a460b31437cbc6f2a37a88c0376fc3a65' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='e211a5abdacf843e16ac33a309d554403beb63959f96f9db70051f303035434b' ;; 		*) goRelArch='src'; goRelSha256='589449ff6c3ccbff1d391d4e7ab5bb5d5643a5a41a04c99315e55c16bbf73ddc'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 30 Mar 2018 21:37:08 GMT
ENV GOPATH=/go
# Fri, 30 Mar 2018 21:37:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Mar 2018 21:37:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 30 Mar 2018 21:37:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81227e1ec90fab651e7efd9cecb37686154d0827a6f71a39c1bb624b9fe6ffa`  
		Last Modified: Thu, 15 Mar 2018 04:58:44 GMT  
		Size: 57.6 MB (57554252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d04d0f54cebbbe73d539fe300dab005bf2bd90715b889aeba432a8beb8fbc`  
		Last Modified: Fri, 30 Mar 2018 22:56:35 GMT  
		Size: 119.9 MB (119908873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed488a16a3123820aae5f90c72ca22da3ac93f5f942c697d2b1b12640dd8ec2`  
		Last Modified: Fri, 30 Mar 2018 22:56:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

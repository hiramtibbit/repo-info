## `golang:1-stretch`

```console
$ docker pull golang@sha256:ba13a75708a6fdf21b98799b69d866c56e3626a1fef7ba8b868b0ff0e8c6f5e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v7

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:7310a30e0464759977cdac906361c6b8542151d14637baa7b7d76caa664fadb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238817853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91f54b1e3ede26a5d92fc09f5f89a7851184d50fd4a2d380d674e1bc34ce497`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:22:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 20 Jan 2018 00:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:08:57 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 00:10:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='15b0937615809f87321a457bb1265f946f9f6e736c563d6c5e0bd2c22e44f779' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='3c8cf3f79754a9fd6b33e2d8f930ee37d488328d460065992c72bc41c7b41a49' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='41a71231e99ccc9989867dce2fcb697921a68ede0bd06fc288ab6c2f56be8864' ;; 		i386) goRelArch='linux-386'; goRelSha256='d440aee90dad851630559bcee2b767b543ce7e54f45162908f3e12c3489888ab' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8b25484a7b4b6db81b3556319acf9993cc5c82048c7f381507018cb7c35e746b' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='129f23b13483b1a7ccef49bc4319daf25e1b306f805780fdb5526142985edb68' ;; 		*) goRelArch='src'; goRelSha256='0573a8df33168977185aa44173305e5a0450f55213600e94541604b75d46dc06'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 00:10:10 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 00:10:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 00:10:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 00:10:16 GMT
WORKDIR /go
# Thu, 08 Feb 2018 00:10:17 GMT
COPY file:ea7c9f4702f94a0df05f60648914e97f7876c4a7c5163e7870dd98fa896ff722 in /usr/local/bin/ 
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facba084babd0bca1fb6e0b05f34a2bc16a042cfdb3863d620dd87910bbe902e`  
		Last Modified: Tue, 12 Dec 2017 14:35:07 GMT  
		Size: 46.3 MB (46346753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7518133f9a1c5b381ee53c0d58b1b9e3c78ed55a0b0c1ee8db9489858b86873b`  
		Last Modified: Sat, 20 Jan 2018 00:56:18 GMT  
		Size: 45.9 MB (45875393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba2e8f0185048e2561eab458b9fc5f759e5dd88bca3dcaed7cbfa2c8c1fd1f7`  
		Last Modified: Thu, 08 Feb 2018 00:18:19 GMT  
		Size: 91.0 MB (91007469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccae384bb430e728426c4b5af87d034a6918095c75faefd0df1bb8cdc246677`  
		Last Modified: Thu, 08 Feb 2018 00:16:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bc4f02d91d725f7bd5cd254508016da116917a3e22f77af38f26a6941a5dca`  
		Last Modified: Thu, 08 Feb 2018 00:16:29 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

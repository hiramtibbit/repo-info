## `golang:rc`

```console
$ docker pull golang@sha256:2ef548f993153b0aeb96207866b91451337d99e8061c79632d0e9c357aeb6eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:7e247da276a611f59b6785274e14e70a901f18c47524e19ca03e73fd3d155dab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293060843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86294db03385822d9c5fea56a05da7fa6b1663ba018bef59aaa241a1d955ffb3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Dec 2018 03:20:54 GMT
ENV GOLANG_VERSION=1.12beta1
# Thu, 20 Dec 2018 03:21:14 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='65bfd4a99925f1f85d712f4c1109977aa24ee4c6e198162bf8e819fdde19e875' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='e0ba7091227b42e98a9ed83f52e3821f7b3b836a16a5815ccf237bcaa590083a' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='df79a288b2c569bd26e43ea3acc245b7eabae897b4783f7b4acffdd97ba0a01c' ;; 		i386) goRelArch='linux-386'; goRelSha256='5c93266b9b9f6e4ac452517b073a54d2dbb4cbbae901bc7e2b5d34415adf658b' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='8ae18d580913cc4cb67cdac36c058aad279419640f469931e44d6b7f0bbd9062' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c575e5835a0ed3b19040497e24f7de6913eb73a42983e828f5dc2af4c9fcecf7' ;; 		*) goRelArch='src'; goRelSha256='639585de6bfb67865a85cd750d41ecc39968039dafb9d1fdb15361eb118d150a'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 20 Dec 2018 03:21:14 GMT
ENV GOPATH=/go
# Thu, 20 Dec 2018 03:21:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Dec 2018 03:21:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 20 Dec 2018 03:21:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368dba6a3315fbefd58fb50f420c76196944fa28cd330ddd7af0b7bad292223`  
		Last Modified: Sat, 17 Nov 2018 04:07:53 GMT  
		Size: 57.6 MB (57618422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d493dce575cf2455b47c6ba7e08fc81e3fd5da361314afe9a03d87a26e8a85`  
		Last Modified: Thu, 20 Dec 2018 03:24:59 GMT  
		Size: 125.0 MB (124978539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb76780f71538bd2c5ba8f7b322ac8ec8d0ec0e5f961013d98af95e638218d4`  
		Last Modified: Thu, 20 Dec 2018 03:24:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

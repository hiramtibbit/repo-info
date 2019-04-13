## `golang:1-stretch`

```console
$ docker pull golang@sha256:e882d8b6395904c3c5d5039c7a0abbb1dea74044d0cf24feb3b651040bb07858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:85032fa900cd979127f344c594f714b59e147c6ecbab83bd1ed0ad3ca2e64441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296095590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b860ab44e93e82d88d7da36162171c6e27a3060769c8fde7a3f719994bc95a47`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 04:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Apr 2019 22:20:34 GMT
ENV GOLANG_VERSION=1.12.4
# Fri, 12 Apr 2019 22:20:47 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 12 Apr 2019 22:20:47 GMT
ENV GOPATH=/go
# Fri, 12 Apr 2019 22:20:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 22:20:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 12 Apr 2019 22:20:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963c818ebafc12959707fcabfc8952ba84ad92514041f7b6ec66ddfb5702141f`  
		Last Modified: Wed, 27 Mar 2019 04:42:28 GMT  
		Size: 57.6 MB (57633991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee6e7073aaa72d34ba739d309428b29acca211466a86a16f42085c150db8c5`  
		Last Modified: Fri, 12 Apr 2019 22:29:33 GMT  
		Size: 127.9 MB (127931372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e75b35417bea64f062ec5031006a5910c90d20b9db352cdb4a8b00cc3a195f`  
		Last Modified: Fri, 12 Apr 2019 22:29:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:286288fec9b5ad2dcfe702219ce2bb5d139d2b089f744c4a798f3bd258c52a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266790026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c4a90781a5781479397bc9527f1fd418f914cd44d4c37c2792eb07c3b55c77`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 13 Apr 2019 08:17:24 GMT
ENV GOLANG_VERSION=1.12.4
# Sat, 13 Apr 2019 08:17:50 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='c43457b6d89016e9b79b92823003fd7858fb02aea22b335cfd204e0b5be71d92' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='b7d7b4319b2d86a2ed20cef3b47aa23f0c97612b469178deecd021610f6917df' ;; 		i386) goRelArch='linux-386'; goRelSha256='eba5c51f657c1b05d5930475d1723758cd86db74499125ab48f0f9d1863845f7' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='51642f3cd6ef9af6c4a092c2929e4fb478f102fe949921bd77ecd6905952c216' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='0aab0f368c090da71f52531ebac977cc7396b692145acee557b3f9500b42467a' ;; 		*) goRelArch='src'; goRelSha256='4affc3e610cd8182c47abbc5b0c0e4e3c6a2b945b55aaa2ba952964ad9df1467'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 13 Apr 2019 08:17:55 GMT
ENV GOPATH=/go
# Sat, 13 Apr 2019 08:17:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 13 Apr 2019 08:18:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 13 Apr 2019 08:18:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e026fa712caf19e12e21855ebddb9964001e1fec0135d622813bdb5bce8fc016`  
		Last Modified: Sat, 13 Apr 2019 08:26:40 GMT  
		Size: 104.0 MB (104012435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5dd24b0cf28500d3dd9a2f079420aafded4e1da03abf46954acb81445cecfc3`  
		Last Modified: Sat, 13 Apr 2019 08:25:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

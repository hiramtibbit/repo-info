## `golang:1-stretch`

```console
$ docker pull golang@sha256:00687f5beb8b17b8af7a756943fb1658832615d714c1760562f5ae40492e1107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-stretch` - linux; amd64

```console
$ docker pull golang@sha256:e9741a00df83e432e89285f66bb417733e3daa65e50dc1cf1167c4c83a288c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296158477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe4cdc1f1731058d9633787b3cd74b9890d62c12294e8d649ca7dbb9994fe9e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Jun 2019 15:19:38 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:19:51 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='dbcf71a3c1ea53b8d54ef1b48c85a39a6c9a935d01fc8291ff2b92028e59913c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='0708fbc125e7b782b44d450f3a3864859419b3691121ad401f1b9f00e488bddb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8f4e3909c74b4f3f3956715f32419b28d32a4ad57dbd79f74b7a8a920b21a1a3' ;; 		i386) goRelArch='linux-386'; goRelSha256='7aaf25164a9ab5e1005c15535ed16ee122df50ac192c2d79b7940315c2b74f2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='67eacb68c1e251c1428e588776c5a02e287a508e3d44f940d31d8ff5d57f0eef' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c14baa10b87a38e56f28a176fae8a839e9052b0e691bdc0461677d4bcedea9aa' ;; 		*) goRelArch='src'; goRelSha256='c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:19:52 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:19:52 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:19:53 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:19:53 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0658c67655178cba28da2aed0c4e5977e8f1a5ca1ab231c031919b22336dcc0c`  
		Last Modified: Tue, 11 Jun 2019 09:51:15 GMT  
		Size: 57.7 MB (57668408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2529ce2b56e31490e3b720b4c50a5b1ec270be6a3687acb13c988054f44c5b`  
		Last Modified: Wed, 12 Jun 2019 15:28:13 GMT  
		Size: 128.0 MB (127959396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a1ca7e4a49ca87d355de4e9e1f6b2204c9bb7888ebe2a521f6af5bf2d7bb10`  
		Last Modified: Wed, 12 Jun 2019 15:27:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm variant v7

```console
$ docker pull golang@sha256:1b8cc9667392d018c26b1f2cce5325ce2dbd4fe5a1687d679238491791bc0559
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254113070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f42c0d10a57ae2bda2d01964db31fdff6ab41ce5e4ef6904c227c57eb26ae60`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:09:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:33:08 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 13 Jun 2019 00:33:27 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='dbcf71a3c1ea53b8d54ef1b48c85a39a6c9a935d01fc8291ff2b92028e59913c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='0708fbc125e7b782b44d450f3a3864859419b3691121ad401f1b9f00e488bddb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8f4e3909c74b4f3f3956715f32419b28d32a4ad57dbd79f74b7a8a920b21a1a3' ;; 		i386) goRelArch='linux-386'; goRelSha256='7aaf25164a9ab5e1005c15535ed16ee122df50ac192c2d79b7940315c2b74f2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='67eacb68c1e251c1428e588776c5a02e287a508e3d44f940d31d8ff5d57f0eef' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c14baa10b87a38e56f28a176fae8a839e9052b0e691bdc0461677d4bcedea9aa' ;; 		*) goRelArch='src'; goRelSha256='c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 13 Jun 2019 00:33:31 GMT
ENV GOPATH=/go
# Thu, 13 Jun 2019 00:33:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Jun 2019 00:33:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 13 Jun 2019 00:33:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a839ba8a519368963fe3d571588fd00f64c1dcd18fd761e52acf61455810033`  
		Last Modified: Tue, 11 Jun 2019 01:17:57 GMT  
		Size: 46.4 MB (46388837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce54d513bab2aee80cf4ede3e873df13d113058fb2add7c1272a03441ccce314`  
		Last Modified: Thu, 13 Jun 2019 00:40:16 GMT  
		Size: 46.0 MB (46004777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb813cf12e6998f39412c5fffdf9abec2bb80bf9efc4aa39064b67fb183a70a`  
		Last Modified: Thu, 13 Jun 2019 00:40:35 GMT  
		Size: 106.2 MB (106232828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee817e6a6d0ade20f9782eac170f7b5424ac05352fd8ae62af823d696660da94`  
		Last Modified: Thu, 13 Jun 2019 00:40:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:25bddf13d1cd197adc00a97982cbf829cd9d7b0da6792342e39e940b37491312
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258353489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d6fdab9b28450d82c084a1234a5a5b2e7102ef1003731a0d64ca8950876a3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:22:46 GMT
ENV GOLANG_VERSION=1.12.6
# Thu, 13 Jun 2019 00:23:01 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='dbcf71a3c1ea53b8d54ef1b48c85a39a6c9a935d01fc8291ff2b92028e59913c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='0708fbc125e7b782b44d450f3a3864859419b3691121ad401f1b9f00e488bddb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8f4e3909c74b4f3f3956715f32419b28d32a4ad57dbd79f74b7a8a920b21a1a3' ;; 		i386) goRelArch='linux-386'; goRelSha256='7aaf25164a9ab5e1005c15535ed16ee122df50ac192c2d79b7940315c2b74f2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='67eacb68c1e251c1428e588776c5a02e287a508e3d44f940d31d8ff5d57f0eef' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c14baa10b87a38e56f28a176fae8a839e9052b0e691bdc0461677d4bcedea9aa' ;; 		*) goRelArch='src'; goRelSha256='c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 13 Jun 2019 00:23:04 GMT
ENV GOPATH=/go
# Thu, 13 Jun 2019 00:23:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Jun 2019 00:23:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 13 Jun 2019 00:23:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62257d11a8d1d6b3d34cb19071cd773c444414427778315b21faf5c9c6364cb`  
		Last Modified: Tue, 11 Jun 2019 00:37:09 GMT  
		Size: 48.0 MB (48014844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59efdaebff44d5c03ceb4d772513c2cc099eb3238b8d73f647e0f3af85708c1e`  
		Last Modified: Thu, 13 Jun 2019 00:32:02 GMT  
		Size: 49.1 MB (49069929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5d66e8fbd678ab9aa7626f707674301d74ef71d698c07549815563ceee0b4`  
		Last Modified: Thu, 13 Jun 2019 00:32:16 GMT  
		Size: 104.3 MB (104298162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13166c489054628621596ee3ae382afb5997e9493b40e42ff1b8825abc9f5f`  
		Last Modified: Thu, 13 Jun 2019 00:31:42 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; 386

```console
$ docker pull golang@sha256:730e3b87c430c44867968b6dda5d286df36bb4c361382880ce300a39c9bb36ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284669526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df7ca30d2673b4c836ef5234f6a094e17e9fec731dd17c4d347742ade78fce6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 14:34:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Jun 2019 15:38:28 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:38:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='dbcf71a3c1ea53b8d54ef1b48c85a39a6c9a935d01fc8291ff2b92028e59913c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='0708fbc125e7b782b44d450f3a3864859419b3691121ad401f1b9f00e488bddb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8f4e3909c74b4f3f3956715f32419b28d32a4ad57dbd79f74b7a8a920b21a1a3' ;; 		i386) goRelArch='linux-386'; goRelSha256='7aaf25164a9ab5e1005c15535ed16ee122df50ac192c2d79b7940315c2b74f2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='67eacb68c1e251c1428e588776c5a02e287a508e3d44f940d31d8ff5d57f0eef' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c14baa10b87a38e56f28a176fae8a839e9052b0e691bdc0461677d4bcedea9aa' ;; 		*) goRelArch='src'; goRelSha256='c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:38:43 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:38:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:38:44 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:38:44 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e389f5a90e5c8fd7b0b0aad48b6468702fb0203b0dda1e5b98e15a120ef31`  
		Last Modified: Tue, 11 Jun 2019 14:36:55 GMT  
		Size: 62.2 MB (62186905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1aea36661a1e8fa02e8ff2c5e9ae49027a4a4eb95627d27e92f2159f6fba13`  
		Last Modified: Wed, 12 Jun 2019 15:47:22 GMT  
		Size: 109.5 MB (109468299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045d5e553596cbbf453bb886d5215b1bdfa838d76557b2682281c8aab795e53a`  
		Last Modified: Wed, 12 Jun 2019 15:47:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:a66261a9bbd7c4e7ad3d0d7f457749c14b9da081177f67445f92e3037ee33097
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266776206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc4b6c228e36e468bf51be1b0992739ade2e739f526e34b1afd8aa1cf15c8ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 10:14:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Jun 2019 15:16:30 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:16:52 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='dbcf71a3c1ea53b8d54ef1b48c85a39a6c9a935d01fc8291ff2b92028e59913c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='0708fbc125e7b782b44d450f3a3864859419b3691121ad401f1b9f00e488bddb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8f4e3909c74b4f3f3956715f32419b28d32a4ad57dbd79f74b7a8a920b21a1a3' ;; 		i386) goRelArch='linux-386'; goRelSha256='7aaf25164a9ab5e1005c15535ed16ee122df50ac192c2d79b7940315c2b74f2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='67eacb68c1e251c1428e588776c5a02e287a508e3d44f940d31d8ff5d57f0eef' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c14baa10b87a38e56f28a176fae8a839e9052b0e691bdc0461677d4bcedea9aa' ;; 		*) goRelArch='src'; goRelSha256='c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:16:59 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:17:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:17:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:17:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d11ce415a8bbde27287a20aa9397bb205190182b491aafe4389169794c1da3`  
		Last Modified: Tue, 11 Jun 2019 10:27:21 GMT  
		Size: 52.8 MB (52836266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516c5e93198859764c465a23a27fb87dac206280cd7cbba10f751428d78dcec9`  
		Last Modified: Wed, 12 Jun 2019 15:25:17 GMT  
		Size: 104.0 MB (103976451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c96eabb84083d523bddf7ef215c5573d45f1b0c149822dfd2ea98cb66cd9caa`  
		Last Modified: Wed, 12 Jun 2019 15:24:50 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-stretch` - linux; s390x

```console
$ docker pull golang@sha256:a35fc50dbc1a8aee28c589049ca9d92078b256431ee2a5cfd37c6a09cfaa69c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267341579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d19aa6142c59f6251e170b58e85dffc506ddba4214c1c56451f5ba1f0a16e86`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Jun 2019 15:41:50 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 15:42:25 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='dbcf71a3c1ea53b8d54ef1b48c85a39a6c9a935d01fc8291ff2b92028e59913c' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='0708fbc125e7b782b44d450f3a3864859419b3691121ad401f1b9f00e488bddb' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='8f4e3909c74b4f3f3956715f32419b28d32a4ad57dbd79f74b7a8a920b21a1a3' ;; 		i386) goRelArch='linux-386'; goRelSha256='7aaf25164a9ab5e1005c15535ed16ee122df50ac192c2d79b7940315c2b74f2c' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='67eacb68c1e251c1428e588776c5a02e287a508e3d44f940d31d8ff5d57f0eef' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='c14baa10b87a38e56f28a176fae8a839e9052b0e691bdc0461677d4bcedea9aa' ;; 		*) goRelArch='src'; goRelSha256='c96c5ccc7455638ae1a8b7498a030fe653731c8391c5f8e79590bce72f92b4ca'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 12 Jun 2019 15:42:25 GMT
ENV GOPATH=/go
# Wed, 12 Jun 2019 15:42:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Jun 2019 15:42:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 12 Jun 2019 15:42:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f69b55caf465fc323d6ee793215b1fe4400863a920c9bdf8df1c2e6fb09573`  
		Last Modified: Tue, 11 Jun 2019 04:08:54 GMT  
		Size: 45.9 MB (45945462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc256be1cc6bf4f3aca7e19c5f58a5283ab278f0cfedf57decf806436b7f290`  
		Last Modified: Wed, 12 Jun 2019 15:51:35 GMT  
		Size: 111.0 MB (111022766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0f2f747c752e876a8258f1269b3ab1c4601a5555e7e6609f02814c0e062493`  
		Last Modified: Wed, 12 Jun 2019 15:51:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

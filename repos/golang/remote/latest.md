## `golang:latest`

```console
$ docker pull golang@sha256:19a36bda2f4927212085702209d060b67e328be5f0a67cf8932df22f46da8c6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:f2e50f81c4cc8090362f59db95cc843fd6a90f4531285652e9d2b687e8c95114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295248245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be13d0c67b755838ec34dc787c5ccaf9fa13d3ed15ac268a388389585ddd5167`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Oct 2018 17:15:03 GMT
ENV GOLANG_VERSION=1.11.1
# Tue, 02 Oct 2018 17:15:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Tue, 02 Oct 2018 17:15:12 GMT
ENV GOPATH=/go
# Tue, 02 Oct 2018 17:15:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Oct 2018 17:15:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Tue, 02 Oct 2018 17:15:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebfeaaddf3afe26b0a5ab61eae274226ba10658ab5de5ca1145954a8d5dcbb`  
		Last Modified: Wed, 05 Sep 2018 11:25:54 GMT  
		Size: 57.6 MB (57590384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc488824c468f0227c8c02486e33c9199cfc216ed86e50f2c5bb1252215f965a`  
		Last Modified: Tue, 02 Oct 2018 17:19:41 GMT  
		Size: 127.2 MB (127205851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4587e7f2b5f44683dc11ca5d1146e25a6078d7b9fe7b1177a61f1ce0d335537e`  
		Last Modified: Tue, 02 Oct 2018 17:19:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bbf7bae46a38efca4f369d4b6b9652c724787baf0da064394bc3a8046f063937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254852746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bbcf28969851fd76de130c478eb7e6569ac37a20cdb2618407116bb0b2de926`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 03 Oct 2018 08:50:07 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 08:50:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 03 Oct 2018 08:50:40 GMT
ENV GOPATH=/go
# Wed, 03 Oct 2018 08:50:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Oct 2018 08:50:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 03 Oct 2018 08:50:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0546d5cb4171af2c7b87f1d2dc7cdba784d58621249381a5de577e03800824a6`  
		Last Modified: Wed, 05 Sep 2018 23:17:09 GMT  
		Size: 49.0 MB (48991358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792b6b28a997ee3bdb69b0791741ee4ba92b553090c50dbc23b6d55f2d43235`  
		Last Modified: Wed, 03 Oct 2018 09:05:45 GMT  
		Size: 101.0 MB (100955861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af6ff20bbf79ee8bc691d194531411591fe158f079459c8fd54040b862d2818`  
		Last Modified: Wed, 03 Oct 2018 09:05:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:3a67f2c790e0a716979823a2530fedbc0704f1ed9d9386029c762e0db8b60a86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262212530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257fced6387ade17d12b18d6199f87855ca0dafa56bfd30bfd10e161b8b4c374`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:23:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Wed, 03 Oct 2018 08:30:28 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 08:30:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='2871270d8ff0c8c69f161aaae42f9f28739855ff5c5204752a8d92a1c9f63993' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='bc601e428f458da6028671d66581b026092742baf6d3124748bb044c82497d42' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='25e1a281b937022c70571ac5a538c9402dd74bceb71c2526377a7e5747df5522' ;; 		i386) goRelArch='linux-386'; goRelSha256='52935db83719739d84a389a8f3b14544874fba803a316250b8d596313283aadf' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f929d434d6db09fc4c6b67b03951596e576af5d02ff009633ca3c5be1c832bdd' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='93afc048ad72fa2a0e5ec56bcdcd8a34213eb262aee6f39a7e4dfeeb7e564c9d' ;; 		*) goRelArch='src'; goRelSha256='558f8c169ae215e25b81421596e8de7572bd3ba824b79add22fba6e284db1117'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 03 Oct 2018 08:30:58 GMT
ENV GOPATH=/go
# Wed, 03 Oct 2018 08:30:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Oct 2018 08:31:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 03 Oct 2018 08:31:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58232a3291ad03eefa5699605ee54dab4f23f82ee453fb46a72df9ede051e16`  
		Last Modified: Wed, 05 Sep 2018 15:31:08 GMT  
		Size: 52.8 MB (52767749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e991cb32d8e79677f5b3831f37953ba7d9d879557647d076da9917be052894`  
		Last Modified: Wed, 03 Oct 2018 08:46:17 GMT  
		Size: 99.6 MB (99555396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a9ccdc6849a32d3547a8723292e693002f3d35770b072c18f02f605e35220c`  
		Last Modified: Wed, 03 Oct 2018 08:45:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2485; amd64

```console
$ docker pull golang@sha256:57e9ef57989766bf736f28c746e30a892a503a81a2053affc1dff185c7be5cbc
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5760603231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d311d755f2fe3b2b229e4346eae3897cea2bde8fd2b6b83b6ab5e62c401cf1b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 09:16:38 GMT
ENV GIT_VERSION=2.11.1
# Wed, 03 Oct 2018 09:16:39 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 03 Oct 2018 09:16:40 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 03 Oct 2018 09:16:41 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 03 Oct 2018 09:18:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:18:40 GMT
ENV GOPATH=C:\gopath
# Wed, 03 Oct 2018 09:19:48 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 03 Oct 2018 09:19:49 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 09:26:13 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '230a08d4260ded9d769f072512a49bffe8bfaff8323e839c2db7cf7c9c788130'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:26:15 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f96babc1e55d6bf4247c27a8447060cada769c05a4f4d6fe8f8f2a616eb907`  
		Last Modified: Wed, 03 Oct 2018 10:12:00 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64362ad1d97a4ef0b8f461397c9f354598e5c5315bf8496e61fbe1793a36dff`  
		Last Modified: Wed, 03 Oct 2018 10:11:59 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189dd89ff42187157dfafe5477bd2b2579a822642df783fa41c60a89dc9a2116`  
		Last Modified: Wed, 03 Oct 2018 10:11:58 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03721c16d14c0df6ef695b996a17b3a4b11ce4a8515f40847fcee9d61a3299ef`  
		Last Modified: Wed, 03 Oct 2018 10:11:57 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca50f20fd465e5f43c82ae70afddf71a4638da6e60bdd6c97a72f95ca7bacff7`  
		Last Modified: Wed, 03 Oct 2018 10:12:10 GMT  
		Size: 29.5 MB (29511555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc137308dccde83bc0f68a58d65de5916cfd80d9765e3a9b965caa3895cd4cda`  
		Last Modified: Wed, 03 Oct 2018 10:11:55 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7b2f54957b9fea2563852efda8231970e5c1077c2a9686b602cfc914dd203c`  
		Last Modified: Wed, 03 Oct 2018 10:11:56 GMT  
		Size: 5.0 MB (5038775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6325fe002a56c92ff4316bbe6e0aa1423cbcdb1d0316c004865f7bbb84a368`  
		Last Modified: Wed, 03 Oct 2018 10:11:53 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc167bad526c769cc73b14fdfc0d64aa3ff769681cffe609f9b80af5378d3d2c`  
		Last Modified: Wed, 03 Oct 2018 10:13:33 GMT  
		Size: 140.2 MB (140187048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cb4d91d1d8dc719f567cbb67d77d2edc2440a433f7ebc435bf838154d1e443`  
		Last Modified: Wed, 03 Oct 2018 10:11:54 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.665; amd64

```console
$ docker pull golang@sha256:662c92894844017d3953f530bb179af71fbf2210bc33c053254b7c8bafcc6e4a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3301839038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659f4ad9ecc6fb9d059d1c7c15af3971e7aeeb4ff9f7835296231330792460e5`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 09:26:20 GMT
ENV GIT_VERSION=2.11.1
# Wed, 03 Oct 2018 09:26:21 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 03 Oct 2018 09:26:21 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 03 Oct 2018 09:26:22 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 03 Oct 2018 09:27:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:27:52 GMT
ENV GOPATH=C:\gopath
# Wed, 03 Oct 2018 09:28:41 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 03 Oct 2018 09:28:42 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 09:34:44 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '230a08d4260ded9d769f072512a49bffe8bfaff8323e839c2db7cf7c9c788130'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:34:45 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa61e3e01eeaa5482e77157970441ee8c2414720462e140b668a5b58902a78f5`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a9b0e10d4fe047a26ba053ab5181f84d47b00a242c9c16fe02182400ba2587`  
		Last Modified: Wed, 03 Oct 2018 10:14:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b4ced47223fce152c207706827c5a959f5b3b8ab4fddca9f5b28ef839aed`  
		Last Modified: Wed, 03 Oct 2018 10:14:01 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00be8bf5f8fca185fb2ce374d442002b8902c39b78c0386c6f72a5efca502370`  
		Last Modified: Wed, 03 Oct 2018 10:14:00 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143d512e608fecdcaebf1a15a63b2cf6e904464d066f564da5ac1701f52f2b88`  
		Last Modified: Wed, 03 Oct 2018 10:13:59 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d1bd5740ccd7c4caf2dc8e651278c7d6e08e223dc87d8897f16574234e0e7a`  
		Last Modified: Wed, 03 Oct 2018 10:14:11 GMT  
		Size: 29.1 MB (29140739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7910164d0533afb5b3d58d8805db9a6e8d2969891095e98ba70779843fa2c9`  
		Last Modified: Wed, 03 Oct 2018 10:13:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73694e9054dc7fb32ed88440bd9ca7450a4c624ea0df279efe2eed18cde4fb34`  
		Last Modified: Wed, 03 Oct 2018 10:13:57 GMT  
		Size: 4.7 MB (4708921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e1196983d3a95c08069281d07c9934ef4bf12077c379116f547c1521996f99`  
		Last Modified: Wed, 03 Oct 2018 10:13:55 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44da67b33c5f421ac6ba5e58bd1204d037a4e580e65f98a926c7a937f7391598`  
		Last Modified: Wed, 03 Oct 2018 10:15:33 GMT  
		Size: 135.3 MB (135343578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f2682dc3588caef919d8058f7808f37137ae93e8f68e5c269e69d2be97651c`  
		Last Modified: Wed, 03 Oct 2018 10:13:55 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.17134.285; amd64

```console
$ docker pull golang@sha256:c251086c392ed43eb8e1277412de4ab674efd72cb47d93da18539be70639f210
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2367298032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51cd3f832af9cca10cd33cce7f5ea65b054635451cd8e367e045dd5069dbdde9`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 09:34:50 GMT
ENV GIT_VERSION=2.11.1
# Wed, 03 Oct 2018 09:34:51 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 03 Oct 2018 09:34:52 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 03 Oct 2018 09:34:53 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 03 Oct 2018 09:36:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:36:18 GMT
ENV GOPATH=C:\gopath
# Wed, 03 Oct 2018 09:37:05 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 03 Oct 2018 09:37:06 GMT
ENV GOLANG_VERSION=1.11.1
# Wed, 03 Oct 2018 09:43:00 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '230a08d4260ded9d769f072512a49bffe8bfaff8323e839c2db7cf7c9c788130'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 09:43:02 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee6bacfe37a45ffe3314f221f89f82ee8c4245406c0b3df0da0385a941a5c11`  
		Last Modified: Wed, 03 Oct 2018 10:16:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbce1de9960205feecc22504ae11bb10994be58388d8fa270967e135fc3cdde5`  
		Last Modified: Wed, 03 Oct 2018 10:16:00 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0e28606b2dc958912ddf9195eade00411904b60c80ac4ab3d452a9b0ccc723`  
		Last Modified: Wed, 03 Oct 2018 10:15:57 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7431c58d74cdb3d056049ee0221c98b0283e9b73dfa2875ad7ee3779277bdc`  
		Last Modified: Wed, 03 Oct 2018 10:15:57 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58dcb4a3caedcfe480087f6f7361d4131a06298d22f1f9629551af3b826737d`  
		Last Modified: Wed, 03 Oct 2018 10:16:09 GMT  
		Size: 29.1 MB (29071408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96237fad1190f7fc35eae675c0088cf1b2c12c9ed475852c6b11ab7e314e4600`  
		Last Modified: Wed, 03 Oct 2018 10:15:54 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc253437c111b99505693a890f07a3ad685333146734394d22e9bc7d6ff5de01`  
		Last Modified: Wed, 03 Oct 2018 10:15:59 GMT  
		Size: 313.5 KB (313511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05a1e5726856c8598ab850f47c445002ce051d0e1ce6afb02b9573015354e23`  
		Last Modified: Wed, 03 Oct 2018 10:15:54 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8062a348cdf89a5782b6115bdcf05986e528c5838b75b3ecc0a118456c512fe8`  
		Last Modified: Wed, 03 Oct 2018 10:17:27 GMT  
		Size: 131.0 MB (130989322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44890c1d0c079a3bef916733e5ad98b864e8d66dde064ce0609aa2e4b2a5f3b`  
		Last Modified: Wed, 03 Oct 2018 10:15:54 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

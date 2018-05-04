## `golang:latest`

```console
$ docker pull golang@sha256:6dc28d87587563e5b69d839ce37f8e5a61f2b4101e7e97d6e7aeb2e0117cf501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:2438893166c1f411b05066ebd736655bd5ae8f110a7e50e49e781f3784664ccc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300493484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257089f13de751736f993bdde67fdb6a582c56e91de025072b7ba272fb68770`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:59:28 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 03:59:43 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 03:59:43 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 03:59:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 03:59:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 03:59:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16f46d95485611f557a2897003944385af7ee2a6f7bd6dc70a073b72243c8e7`  
		Last Modified: Wed, 02 May 2018 21:31:19 GMT  
		Size: 57.6 MB (57564724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6918194102a3e0cf8f71b177bf543ba93246b783b6b0391a55a8cfe4f8a4f386`  
		Last Modified: Fri, 04 May 2018 05:23:41 GMT  
		Size: 132.5 MB (132501538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774942f92b2d8e38fc30a5933030a851b236fe0dfde3efba1326c99301469de`  
		Last Modified: Fri, 04 May 2018 05:23:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:bdb60a3a527270e65d4ba06fd008fa6a1d12a4e553dcf0b486b9d3c2939c555e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268910413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ab1ce0bc5a79d882013603447b851a485a222d92b042266976c1d876703815`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 08:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 08:39:41 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 08:40:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 08:40:07 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 08:40:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 08:40:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 08:40:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc401059feb6b72e3e103faadbe0ad6581c99b0c5f4a557a1e5c36ffc5c7bbb`  
		Last Modified: Tue, 01 May 2018 08:57:49 GMT  
		Size: 48.0 MB (47985294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12be2d3c1ea1f7c36eb390622c40da29823fe9468e1413ad169eddc5560b95c6`  
		Last Modified: Tue, 01 May 2018 21:02:28 GMT  
		Size: 49.0 MB (48969930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de02cdeea10ffc7d03e828ec11c91cfb5ea537f005af8984236d4261e61f9f22`  
		Last Modified: Fri, 04 May 2018 08:49:04 GMT  
		Size: 115.1 MB (115060949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc442a1ee8cdde2de48dc1feae7d62b3a6692d542b4a26b0770196c9ebd4d07`  
		Last Modified: Fri, 04 May 2018 08:48:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; 386

```console
$ docker pull golang@sha256:5c26d4ec48d8f7e40e99f2801f9600227ebb1a7101e7547c7e046af520c9a99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295859673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdac217cae37426e26d80fe00599d33b4ae0fd6de7f6e926f8299de64f6e8c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:34:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 10:38:55 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 10:39:10 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='4b677d698c65370afa33757b6954ade60347aaca310ea92a63ed717d7cb0c2ff' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='529a16b531d4561572db6ba9d357215b58a1953437a63e76dc0c597be9e25dd2' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='d6af66c71b12d63c754d5bf49c3007dc1c9821eb1a945118bfd5a539a327c4c8' ;; 		i386) goRelArch='linux-386'; goRelSha256='ea4caddf76b86ed5d101a61bc9a273be5b24d81f0567270bb4d5beaaded9b567' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='f0748502c90e9784b6368937f1d157913d18acdae72ac75add50e5c0c9efc85c' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='2266b7ebdbca13c21a1f6039c9f6887cd2c01617d1e2716ff4595307a0da1d46' ;; 		*) goRelArch='src'; goRelSha256='6264609c6b9cd8ed8e02ca84605d727ce1898d74efa79841660b2e3e985a98bd'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 04 May 2018 10:39:10 GMT
ENV GOPATH=/go
# Fri, 04 May 2018 10:39:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 May 2018 10:39:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 04 May 2018 10:39:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5e58afd4931ce3e785a52a1487be7e571622f1ffbb646c22ab9460cf54800c`  
		Last Modified: Sat, 28 Apr 2018 12:46:16 GMT  
		Size: 10.8 MB (10770779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1d7f1a7fa184e2d03352a28cfdb3f0369254901a162f8ba4e2d9c6ed92db1`  
		Last Modified: Sat, 28 Apr 2018 12:46:14 GMT  
		Size: 4.6 MB (4554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133ab7662b93ed4333630d3808dec8b49728045e30364ac6c86829651120fffc`  
		Last Modified: Sat, 28 Apr 2018 12:46:53 GMT  
		Size: 51.6 MB (51554146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de7af475815dc9d6f09b6077ef7a5e72531fd4433719d3cad438eb6faba669`  
		Last Modified: Sat, 28 Apr 2018 19:35:55 GMT  
		Size: 62.1 MB (62080623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f1ef1172c84c7e4eac8735f0b560b29651d9bbd10927b1946047edaf4365f4`  
		Last Modified: Fri, 04 May 2018 10:50:59 GMT  
		Size: 120.9 MB (120854510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7780e11e27d0abf75da9b39de3534825a6c168cd7cadb294419e608f6bc37b04`  
		Last Modified: Fri, 04 May 2018 10:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:d473efde0e65ff48e2ab17fe745d33988c181fd0223d848b27b661b99a2d0ffc
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5573660365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27b91d7d0ff1272c330725c7c8872481f2681463b71ea7ee1a7575b7d7a5749`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 May 2018 09:15:19 GMT
ENV GIT_VERSION=2.11.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 04 May 2018 09:15:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 04 May 2018 09:15:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 04 May 2018 09:17:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:17:06 GMT
ENV GOPATH=C:\gopath
# Fri, 04 May 2018 09:18:07 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:18:08 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:23:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:23:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a373d33e64f88d76c8c8c701ba61e0cdf884535acf852938beed75af4c937c9f`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef770b206a00855735cacfe65364ad35bb7b6668dd8f6d734fc6e35bb4729d1`  
		Last Modified: Fri, 04 May 2018 09:49:33 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b603268c11c438d72a5b9904b82077adf016afd2e9365d4e96750a336a05e9`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5508be9b995504322a3dd045d68288fa762cb8e60197723799d51afd90733194`  
		Last Modified: Fri, 04 May 2018 09:49:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90664b990afd550f97b4235d9aa6da832ae3073873be9cafdee95f4eaa2bab3`  
		Last Modified: Fri, 04 May 2018 09:49:44 GMT  
		Size: 29.4 MB (29405165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0322caa304b05d51595d37867bb2e2e7e94291bf5d78fd9ada11db3fbfba5bf9`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9bc09915f3ee7eb7968a5bde3f45b0467bef20440b98e9901479ae99e96a3c`  
		Last Modified: Fri, 04 May 2018 09:49:29 GMT  
		Size: 4.9 MB (4944348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4a2472cfa1fc2e2c4eac976aa4c440a5bb5ecc93d8b68833c06d52d47a802`  
		Last Modified: Fri, 04 May 2018 09:49:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f46eeecb42afbccd4c8fd354348ad027e8edc5cbf5bacefd873eee9d4b2bade`  
		Last Modified: Fri, 04 May 2018 09:50:48 GMT  
		Size: 145.1 MB (145087737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731b5d2064e3fb4d550af9cea9c4aa0cde2e7cb0f7b077c3dcd2ba27efc8761`  
		Last Modified: Fri, 04 May 2018 09:49:26 GMT  
		Size: 1.3 KB (1345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - windows version 10.0.16299.371; amd64

```console
$ docker pull golang@sha256:227a337a2d1a611896f4e8cc517435fac3c486d5293cc89dc699f3ee6316ff77
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3214355039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27271e113c61be58bcb5011fe65e108a48e3cf98cd887474cc65decb662c785`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:30:01 GMT
ENV GIT_VERSION=2.11.1
# Thu, 12 Apr 2018 09:30:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 12 Apr 2018 09:30:13 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 12 Apr 2018 09:30:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 26 Apr 2018 16:49:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 26 Apr 2018 16:49:31 GMT
ENV GOPATH=C:\gopath
# Thu, 26 Apr 2018 16:50:23 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 May 2018 09:23:33 GMT
ENV GOLANG_VERSION=1.10.2
# Fri, 04 May 2018 09:28:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '0fb4a893796e8151c0b8d0a3da4ed8cbb22bf6d98a3c29c915be4d7083f146ee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 04 May 2018 09:28:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b5da31d910dd54f6f0f879640ca1e5f4b2154487e95fe0d0593251a23882cb`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722b19ea794ea774cf99f5fd4b4d5aeaf818da41830d78a852ff6c5a069a341e`  
		Last Modified: Thu, 26 Apr 2018 17:18:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efa6ee3beebe150367b9f71da76d28cdb67202fae944e74ad7a7a1b90f5385`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1a34d022b97c864b7ea2abf43c5a63383d1ecc7a9d1b4e67d6b7da28417e8d`  
		Last Modified: Thu, 26 Apr 2018 17:18:01 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6811656192c9b9235950f4e6203ea01e7aae50af7373d00bedb4f5bc5da64e`  
		Last Modified: Thu, 26 Apr 2018 17:18:17 GMT  
		Size: 29.1 MB (29095700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98397cda712937c1ec9b2d17133b7d1b07f44c0f51e0f6dd5d71bf76db96ec2c`  
		Last Modified: Thu, 26 Apr 2018 17:17:58 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4dcc272e82a9b1685a42b10c5fb5fb1a004f5085cd4c5a039bb3592a36e9a23`  
		Last Modified: Thu, 26 Apr 2018 17:18:03 GMT  
		Size: 4.6 MB (4613458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bc0691221cf61ac883b0e561b53a949c89ac2440694f795ca33f7bb27f8d9d`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33b0096e46bcb06d535e0310aa91a75710dc456147990d218210feef80d91ad`  
		Last Modified: Fri, 04 May 2018 09:52:23 GMT  
		Size: 144.8 MB (144785942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c91ea790b7475c4f45a87df38772eb0116c7716599e1670e8106570eb2a293`  
		Last Modified: Fri, 04 May 2018 09:51:06 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

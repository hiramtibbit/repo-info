## `golang:rc`

```console
$ docker pull golang@sha256:e2be3a5864b67c025f438cfa9bb8d2f3c478652bd15bf1092a399cdd7c2ca3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; s390x
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.192; amd64

### `golang:rc` - linux; amd64

```console
$ docker pull golang@sha256:95c04772a20613c1704088700bb49439acdbdb0b19884251341f23df30c68126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287988967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd00ba632a067fe5285c189f5b30cab99b43cc5234e5f655c07b050cc3f9158`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:21:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 00:56:29 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 00:56:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 00:56:46 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 00:56:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 00:56:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 00:56:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe52c89597fa1aac51f8ed83c481d0d5b269ab0f59a955168d69e9284ca46a8`  
		Last Modified: Tue, 12 Dec 2017 11:30:45 GMT  
		Size: 57.5 MB (57499152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24303b63f0436561f89a0c41f02fbd4517cc03f629c26af38a30c97ea1bcd21`  
		Last Modified: Thu, 08 Feb 2018 02:13:28 GMT  
		Size: 119.9 MB (119902457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fbb03cd18f7a20e8597b24ab9c79694f779647a03788e2869ad2e9573dec4`  
		Last Modified: Thu, 08 Feb 2018 02:12:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; arm variant v7

```console
$ docker pull golang@sha256:e4bc74d267399a14ba29c9290c3ae5df73452e402bdfb0f015a9dea060e6efa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250811927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e90086efb742903ff4dcdcac60ea72c242f53f85899fe54b9d36a21cd4399f0`
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
# Thu, 08 Feb 2018 00:07:31 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 00:08:40 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 00:08:44 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 00:08:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 00:08:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 00:08:49 GMT
WORKDIR /go
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
	-	`sha256:a8b42be5be43630e3110466466b4bcd7c494bcebbbbf3a7b56c27a6b6f947c4e`  
		Last Modified: Thu, 08 Feb 2018 00:16:04 GMT  
		Size: 103.0 MB (103002907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32991027a1c4ae3a8bdb03b371f940ebce24dd378cc83ec96eaacda05ba6159a`  
		Last Modified: Thu, 08 Feb 2018 00:13:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - linux; s390x

```console
$ docker pull golang@sha256:853343dff254d7ab4ef9a4db107990be2b09ff04e5f93015370b25300f4a91f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256928661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a606908415e0fa91d4c14885f959c8c581745a13e91d7c1edce6f468d94ba4d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:58:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:58:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:59:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:42:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 11:39:31 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 11:39:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:39:45 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:39:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:39:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:39:46 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff282cac5e026f80f2d55f6c7a510a9d2a8855bdde39824f93da04f1fd369475`  
		Last Modified: Tue, 12 Dec 2017 07:09:07 GMT  
		Size: 10.7 MB (10668313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04deb7c3aa54f0bb67511a855139b7d6eaeae932480fd568f7889597e870800f`  
		Last Modified: Tue, 12 Dec 2017 07:09:19 GMT  
		Size: 4.4 MB (4366027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dd8efc8af21b5bb6284436d2189f0d8edb2eeade70328d44174c5cc870aec2`  
		Last Modified: Tue, 12 Dec 2017 07:10:10 GMT  
		Size: 50.4 MB (50448531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1364320336465b0c0c9ce49ceec734250fdb50c9a49a2af4a88ecf8f128580db`  
		Last Modified: Tue, 12 Dec 2017 09:45:33 GMT  
		Size: 45.8 MB (45814874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b660bc871712abab7173adfeee857edd478b542b800395a1322e898a44cedea6`  
		Last Modified: Thu, 08 Feb 2018 11:47:52 GMT  
		Size: 100.7 MB (100663718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d1a80937ed02d9e82e8e3a13b74399778f2828951b4eb510d16c48fc7acf50`  
		Last Modified: Thu, 08 Feb 2018 11:47:31 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.14393.2007; amd64

```console
$ docker pull golang@sha256:4ba1e7accb25d248a2a862a67592b98cdae7aae2b150a9550504b75c6c6c6f35
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5545200946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523222eb7ad59957ee285834a96844796e401ab135db95bc78c1ce2ffbb2051b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:02:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 18:01:18 GMT
ENV GIT_VERSION=2.11.1
# Mon, 08 Jan 2018 18:01:19 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Mon, 08 Jan 2018 18:01:20 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Mon, 08 Jan 2018 18:01:20 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Mon, 08 Jan 2018 18:03:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 18:03:58 GMT
ENV GOPATH=C:\gopath
# Mon, 08 Jan 2018 18:05:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Feb 2018 03:14:58 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 03:20:33 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'fc0160911005b725e7f5234232a27f317b50832e3eb78382a3475ec3cac5baee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 08 Feb 2018 03:20:35 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c86d0434e36d69287bea586f96045245d5ee4f04e4e2a5edf6881dbbfdc628c3`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb835a765d1adacc5e96f2684f32ef89614ccc4d5a99be32392b6b52c76ef46`  
		Last Modified: Mon, 08 Jan 2018 19:48:22 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f729550b3a7040ef71bf29aa3501c84f3dfb64ad061c41bc8d4a677a35cfdf`  
		Last Modified: Mon, 08 Jan 2018 19:48:21 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5421de1bee383e26bb9d4cab7e7f0991622bf7e7047bf93b7bebb8d8ac3354`  
		Last Modified: Mon, 08 Jan 2018 19:48:19 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680789f514fca4d05e20d2d49441bcb41dca2764a32a068b031fb7c851953342`  
		Last Modified: Mon, 08 Jan 2018 19:48:20 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7cac87c32591a7d201306b0f43d796071ecc6c2b11da97fa7b0a4a98203df9`  
		Last Modified: Mon, 08 Jan 2018 19:48:35 GMT  
		Size: 29.3 MB (29339650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081d4b636d0574daf16ae2a105d7b8b006786307281e608588ca203c00384996`  
		Last Modified: Mon, 08 Jan 2018 19:48:16 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d13313d01fe0e86343cdb272e265f9c10515bc522bdd3d8cb816c4b212f8a4`  
		Last Modified: Mon, 08 Jan 2018 19:48:18 GMT  
		Size: 4.9 MB (4874878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2772af13e4ef292a34df92747553dd9fdcab3e5a2686a42d8b9ee029a3961595`  
		Last Modified: Thu, 08 Feb 2018 04:30:04 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e1f7e6baaf77f364a25cfd2cb8a2f35888ca33a86a392d24b3c34fc2b82af0`  
		Last Modified: Thu, 08 Feb 2018 04:31:54 GMT  
		Size: 137.0 MB (136971567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9c75f44058e15b126bf8ad4871444da46e69d355962cf9f949ec33bd9503f4`  
		Last Modified: Thu, 08 Feb 2018 04:30:04 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc` - windows version 10.0.16299.192; amd64

```console
$ docker pull golang@sha256:9cd7035f53a6e2d60b95b6eaff62daaad9da2f2a82f2fde04e5f706e0d345af5
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3129577378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a29d647ec888bdc39c1dea36f38e642a940f5c5dd7bb8aae905d2504a5a7baa`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 18:14:29 GMT
ENV GIT_VERSION=2.11.1
# Mon, 08 Jan 2018 18:14:29 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Mon, 08 Jan 2018 18:14:30 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Mon, 08 Jan 2018 18:14:31 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Mon, 08 Jan 2018 18:17:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Mon, 08 Jan 2018 18:17:08 GMT
ENV GOPATH=C:\gopath
# Mon, 08 Jan 2018 18:17:59 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Feb 2018 03:20:41 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 03:34:04 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'fc0160911005b725e7f5234232a27f317b50832e3eb78382a3475ec3cac5baee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 08 Feb 2018 03:34:08 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f887ccb8077bdc1f1fedd2da6066bb3542c528f5d103b40659ac25785ba4b9b`  
		Last Modified: Fri, 05 Jan 2018 19:38:30 GMT  
		Size: 689.7 MB (689720734 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:189c9822c1fc60043703fa16f44b1cab80d3a786d35bd6b61628d2b3f1fb9635`  
		Last Modified: Mon, 08 Jan 2018 17:34:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced016f882f58828f852af028c896ce147bb2b33b9d342b64f73d45720ceedd0`  
		Last Modified: Mon, 08 Jan 2018 19:52:05 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f21f168317cdc3c152749d966c0d43db4dc3535f9351d98dacdf0413afbcd7d`  
		Last Modified: Mon, 08 Jan 2018 19:52:04 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe305114696325373272c3f912e5ca4de2484a6c7534b892c4dea4b2ee5cae2`  
		Last Modified: Mon, 08 Jan 2018 19:52:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6f37549f027d7629c2b600fc88dff293377dd5580bea22e016dcd849122f76`  
		Last Modified: Mon, 08 Jan 2018 19:52:01 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4655597d458099c45393834ed3bc33872b30b343ad2e0477f67472b5c9d1ea22`  
		Last Modified: Mon, 08 Jan 2018 19:52:18 GMT  
		Size: 29.0 MB (28956719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e4de5661145bcb63f11eb2c25c9d8b4a03d9ced31d0a6c992ada92bbafbfca`  
		Last Modified: Mon, 08 Jan 2018 19:52:00 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1ab2305863a8cd8304f89e0d8188b1072315a48130bb54bd5976fee044423f`  
		Last Modified: Mon, 08 Jan 2018 19:52:00 GMT  
		Size: 4.5 MB (4476553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2661b2fba1bb705173a8c983f65f5476b2efeee4f4203a582b5a238d593f9fd5`  
		Last Modified: Thu, 08 Feb 2018 04:32:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773432e329b481760b2c471a9b5792b56e67c4f7c9c312bb7303113ed97a6b08`  
		Last Modified: Thu, 08 Feb 2018 04:33:58 GMT  
		Size: 132.1 MB (132113065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e514f53322670c1f306856cd25fc5c3c577de13dbf6532ff2ab93a152a747d6c`  
		Last Modified: Thu, 08 Feb 2018 04:32:16 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:rc`

```console
$ docker pull golang@sha256:0f1dbcbfbe2501f0631b9e1c54a9eb2376f86abe3ac67f5293467ed10e2046e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

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

## `golang:rc-stretch`

```console
$ docker pull golang@sha256:7042c0fb98a68f364710ef760f71e324d29c442af39f44ffe544239d0876eeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:rc-stretch` - linux; amd64

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

### `golang:rc-stretch` - linux; arm variant v7

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

### `golang:rc-stretch` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f2686412c2ca1e1daa2e8179420e09e0f4ebbc05773022d48c6706065c85ec82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256471289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbfaac0bf4ee5c1baf6ed6f3d79cf80efbc9af095c40934bbd8a8eef704ed52`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 16:15:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 23:57:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 20:54:33 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 20:55:05 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 20:55:06 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 20:55:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 20:55:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 20:55:08 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab5498df96eae5ccabdf778692dc41eeee09793f3792efadf0079545233069c`  
		Last Modified: Fri, 15 Dec 2017 17:19:55 GMT  
		Size: 48.0 MB (47983199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4e2722df7e740d51b766267b0ec38df71672a5b997802d45c67b8d0bdd2ce8`  
		Last Modified: Sat, 16 Dec 2017 00:01:51 GMT  
		Size: 48.9 MB (48935445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbcac8eb471dd0d53844f913f5faeba86a318d2546369df03ab78118077b413`  
		Last Modified: Thu, 08 Feb 2018 21:07:50 GMT  
		Size: 102.5 MB (102485633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ef7bc95d24e52804f0d47e3feb274898ec18b4e81491b6202a3b91dbd0df3`  
		Last Modified: Thu, 08 Feb 2018 21:07:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; 386

```console
$ docker pull golang@sha256:0ef8e70c319cffd0099db10ae7bb85ee76b094a78b060181a0f62fcafd3a907f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283409937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a998dbf859705fea70266d1eeb2906524eac2a68456ede4523c984aef5b81046`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 14:47:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 16:56:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 11:00:34 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 11:01:02 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 11:01:03 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 11:01:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 11:01:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 11:01:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff393180296f30b7b1cf94c5f67f82d434feb08eaff795346b0f5d3fe18c5ab6`  
		Last Modified: Wed, 13 Dec 2017 15:00:30 GMT  
		Size: 51.6 MB (51553695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c281e85d97666b881ac683415f45b31d0ccbdee55c6995710a9d10f4ae50fc`  
		Last Modified: Wed, 13 Dec 2017 17:08:28 GMT  
		Size: 62.0 MB (62034764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d5358d494c9437b9acc66fae7960bbb86fdbb43136491a7e74b3a2829fa98b`  
		Last Modified: Thu, 08 Feb 2018 13:16:30 GMT  
		Size: 108.3 MB (108289254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e78d31c1706bb65362c62df51a97dcb7e00d6bd57769b5ae517ea95d0b2f0d2`  
		Last Modified: Thu, 08 Feb 2018 13:15:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; ppc64le

```console
$ docker pull golang@sha256:fa40658c80890cbe1d7861fe2355010525a5625de0150cfc9d2b08e9e59baa62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264029204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3312ed337a149e409fc8b5f451f07f9a0448a20b1cf05b1e236df4a721f478cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:32:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:33:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 03:37:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 09:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Feb 2018 16:50:32 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 16:50:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 08 Feb 2018 16:51:00 GMT
ENV GOPATH=/go
# Thu, 08 Feb 2018 16:51:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Feb 2018 16:51:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 08 Feb 2018 16:51:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378a191e90f6d5b2a6f6d9850e8c81ea101737db5c068add4c764f2be3aced2`  
		Last Modified: Tue, 12 Dec 2017 03:55:34 GMT  
		Size: 10.3 MB (10339336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26b1cf177268cff23511322d11143dadc3f4326448d8aceedad9b759e57fb13`  
		Last Modified: Tue, 12 Dec 2017 03:55:32 GMT  
		Size: 4.3 MB (4289552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90080349eff61f95b053aa65da87029e4c36cbccd1ac1d78002110d52ab56ba7`  
		Last Modified: Tue, 12 Dec 2017 03:56:07 GMT  
		Size: 50.0 MB (50029025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe942a3efef599ac5039d70fdad2f4d596c935116adeebd2024072d4b5f10c0`  
		Last Modified: Tue, 12 Dec 2017 09:34:02 GMT  
		Size: 52.7 MB (52710372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73bb3aa8d87af4bd439b90a57dbcfaf2a2ebbe5065dd63d87b12b161394ba3a`  
		Last Modified: Thu, 08 Feb 2018 17:03:15 GMT  
		Size: 101.3 MB (101278408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421acb60d5c325e82a959b68c4c5da40b488bf39474ac69908f3b479cd2bfc34`  
		Last Modified: Thu, 08 Feb 2018 17:02:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:rc-stretch` - linux; s390x

```console
$ docker pull golang@sha256:5b47cad7f6995a130f9a05cc8f693ad11881fe4256755664c65aa6d68ef8d841
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256936409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc53516418f947d2bb3a1fa75055f56dbc5fddeb29650ece94522359acea2558`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:54:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:55:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:53:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:53:02 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 15 Feb 2018 08:53:12 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='6a6a4c0654bc603bcfee4d6ac34a479c260ac61b3edcc8d6773384eb0bda512e' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='aa145c2a9736cbcb39b9340182c319f7fc0ab3d0f2156d7dfd722572f4da519b' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='dfa7fbe299b3766b94fb4bc231db4330b9860c44a57274f6a0d418bf00eccbc8' ;; 		i386) goRelArch='linux-386'; goRelSha256='18832b97cdc2f21783ac60fc0136f25c19d39b7cc43459f5114dd62c0a212fe4' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='21a6e64c83df9f124993901dda2ec608640e97a13f50cf5a58f518651b576fd8' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='7d3aa6ec3a761b328e093b51ca14dbb8a8000685bb8957dbab44b4bb3b1d76e7' ;; 		*) goRelArch='src'; goRelSha256='360bb3e627cd5308626ebe994be734da9c1c444fb420d10e79082ec110d004f6'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 15 Feb 2018 08:53:12 GMT
ENV GOPATH=/go
# Thu, 15 Feb 2018 08:53:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:53:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 15 Feb 2018 08:53:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8de23eb22736f2b1a1ee7d3e7cb7124762f87e4fa1d2e9848eac12bda54ba4`  
		Last Modified: Thu, 15 Feb 2018 07:00:44 GMT  
		Size: 10.7 MB (10668568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b245666c672793e5b50be400fd6cf3981742c5efc93f7836f0fa7b865e502f5`  
		Last Modified: Thu, 15 Feb 2018 07:00:43 GMT  
		Size: 4.4 MB (4365966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b323d54d0df6efa09cadf041d10bd52a0d84d1768c0b345362243407b46149`  
		Last Modified: Thu, 15 Feb 2018 07:01:03 GMT  
		Size: 50.4 MB (50448019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5108ea24bddd8579eebf3aa50751f8662435147e07b7fffa3da81c21f3546a`  
		Last Modified: Thu, 15 Feb 2018 08:55:10 GMT  
		Size: 45.8 MB (45818153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b635e75caf069ec66494fcb22b6be0cbe227b14327db3331bd0f7aa3690b489`  
		Last Modified: Thu, 15 Feb 2018 08:55:22 GMT  
		Size: 100.7 MB (100663689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b684541a589832bbbb0f33522059032ba598b7caba2f41fee760450788f9ea`  
		Last Modified: Thu, 15 Feb 2018 08:54:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `golang:1-alpine3.8`

```console
$ docker pull golang@sha256:9657ef82d7ead12e0c88c7f4708e78b50c5fd3c1893ac0f2f0924ab98873aad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.8` - linux; amd64

```console
$ docker pull golang@sha256:31389db6001c5222bef9817a04ae8c8401ae8bed6fb965aac17b0e742f4c3e5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112776297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be1230a1b343d3fd41320f911b2c571b3777353e289dc16f16424815a912b1a0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:41:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 30 Jan 2019 22:41:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:45:53 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 30 Jan 2019 22:50:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Wed, 30 Jan 2019 22:50:11 GMT
ENV GOPATH=/go
# Wed, 30 Jan 2019 22:50:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Jan 2019 22:50:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Wed, 30 Jan 2019 22:50:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c29055ee4282949de24fad9e8b86257630abafa12c1862919d9039f1158cb7`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 309.1 KB (309115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29802c64cdfc06d6ac97ebfe0ceb2e35ea578026865bad5965949f817d3abe40`  
		Last Modified: Wed, 30 Jan 2019 23:02:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82873a5b09e04b113444e9fb08eb0e08fe2b107b3b5526406623bb435a5dc2`  
		Last Modified: Wed, 30 Jan 2019 23:03:22 GMT  
		Size: 110.3 MB (110259864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b711937b138a44fef12ca63fa20d0d4fa268237d7be70e5800d3d851ab938657`  
		Last Modified: Wed, 30 Jan 2019 23:02:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.8` - linux; arm variant v6

```console
$ docker pull golang@sha256:9677abaf94d699258b23e107fc6aaa8935938b1f3cb9c79ada24045e5aeebee4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108895036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368fd204e4273ad7a81151357e2342f4bbdf23f2ca1a7d886826481967f7ba56`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:05:48 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 09:05:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 24 Jan 2019 08:52:08 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 08:54:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 08:54:22 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 08:54:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 08:54:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 08:54:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356978bcf1df8340fe3dda865b8ab4026d6cb2fff657ce531ce95a41a1c3cb58`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 309.2 KB (309237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80779801766fe15ee57456f36c5b23167914f0a4d90dc432d018ffbabc7fe4`  
		Last Modified: Fri, 21 Dec 2018 09:07:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb443e2ff072ab2913acb12357ba179289a29600039322d6786d4bbea7ae6b5`  
		Last Modified: Thu, 24 Jan 2019 09:03:14 GMT  
		Size: 106.4 MB (106439533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1e0780ed28b99ba5d62f14516a2ba926fdf781a34b20c5be4bc0099f9fe6e5`  
		Last Modified: Thu, 24 Jan 2019 09:02:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:f48e7edbd7299a809a175049b17c441ed2ae202cd1cf3df0976ce4fa38a40a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106694914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a79d68981c9b969f175bcdf1e3ba3c2edb1f91145ed3af2c78dae380b0c824eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:00:50 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:00:52 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 25 Jan 2019 09:26:18 GMT
ENV GOLANG_VERSION=1.11.5
# Fri, 25 Jan 2019 09:29:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 25 Jan 2019 09:29:17 GMT
ENV GOPATH=/go
# Fri, 25 Jan 2019 09:29:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 09:29:19 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 25 Jan 2019 09:29:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe3f66f9bc2a391ccc98b0ae2492dc28160ce2a5de9dc7057f36b2a88d42640`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 308.7 KB (308685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590d7dc3d210c2fa755e378743c66cdc4c9965179688e1fd1d1636cc3e111a32`  
		Last Modified: Fri, 21 Dec 2018 10:03:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de4600d44e6be5f687c20413be041ca4266a81460c794439df131d9be1edb64`  
		Last Modified: Fri, 25 Jan 2019 09:43:47 GMT  
		Size: 104.3 MB (104285935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302e07c2393750ff3d56e0f14648eeb0ac62bcc0fd9fbeeced2db7231d018b4a`  
		Last Modified: Fri, 25 Jan 2019 09:42:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.8` - linux; 386

```console
$ docker pull golang@sha256:cacdab5c88cde92b1b5972a79180d123b3078e554f8717f926e4e6027305f580
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112067922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3063fa3e389e65f055049f9bc8de4073a3d7fd382299be92a6a763bf13014b50`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:59:53 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 16:59:54 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 24 Jan 2019 00:20:18 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 00:22:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 00:22:58 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 00:22:58 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 00:22:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 00:22:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa84eb06a15198c333223728ab9ba90e3884ea316e85334ee23a63bbe32a672c`  
		Last Modified: Fri, 21 Dec 2018 17:12:21 GMT  
		Size: 309.2 KB (309220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64f5dda56c70ef6d0a1b6104df91c13ee84d03367da82a14d08e572ab040e58`  
		Last Modified: Fri, 21 Dec 2018 17:12:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4661a989eea0665578af8ab37fce3e524e2637089666030febba50cc431c7f`  
		Last Modified: Thu, 24 Jan 2019 00:33:32 GMT  
		Size: 109.5 MB (109486679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd13daba7ed31c245578eddf83052c1a24585bf3a38d98aa959c911e86393f9`  
		Last Modified: Thu, 24 Jan 2019 00:33:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.8` - linux; ppc64le

```console
$ docker pull golang@sha256:c5d405477a7e950438464c4070187bf6dd6efceb7407f148354728f11ca95ce6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106746853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa72b65bc3119c914e48e0446e65a67f716791e4fba0f82ae179d6f16bec023f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:01:57 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 10:02:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 24 Jan 2019 09:18:27 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 09:20:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 09:20:09 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 09:20:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 09:20:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 09:20:19 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28dd74d7ce0c8182a29ce5766ac5575196993662afb3b10be99b2314493ac33`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 311.0 KB (310997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a75589a7814f6d6ed935664c5037e46910ab3a96af4f6153a87bac4760e8cfb`  
		Last Modified: Fri, 21 Dec 2018 10:14:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa40434afa6401dfb45ad5e7b7dc9540ea205cca9fd65f1e0a3343bc784d7ad2`  
		Last Modified: Thu, 24 Jan 2019 09:28:58 GMT  
		Size: 104.2 MB (104240598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc75fdf34c04d29e8d70d4ab5e118be0696a37c34c099f973fe002f6b9b676e`  
		Last Modified: Thu, 24 Jan 2019 09:28:19 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.8` - linux; s390x

```console
$ docker pull golang@sha256:e30b06b1f215f6d647b10b40c1618e926f90f97a5a6682be5f121c4afdd770d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (113032799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f62093fd3122f48884b925976d4eca1c05c94277dada9266c598b6c1230b214`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:59:24 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 21 Dec 2018 12:59:25 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 24 Jan 2019 12:42:07 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 12:43:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo 'bc1ef02bb1668835db1390a2e478dcbccb5dd16911691af9d75184bbe5aa943e *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Thu, 24 Jan 2019 12:43:54 GMT
ENV GOPATH=/go
# Thu, 24 Jan 2019 12:43:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 12:43:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Thu, 24 Jan 2019 12:43:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b697e31c148997866fca339e75cd06a25b09584a72d806382e929d1fcb650`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 309.6 KB (309575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299ba9bbbfaa6399c6c299d75aa651c286ec5c0824e8746eb78c9c8b0ffcbcdd`  
		Last Modified: Fri, 21 Dec 2018 13:07:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6e9dce465a1a2d88f1494f6dcb138778524f9a8b09498610d89bd8f90c9cae`  
		Last Modified: Thu, 24 Jan 2019 12:51:24 GMT  
		Size: 110.4 MB (110414920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d17ae80ee15290023e27125e21eaefa4ad4370366389da600c4a6d8023153d`  
		Last Modified: Thu, 24 Jan 2019 12:51:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

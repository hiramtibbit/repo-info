## `golang:1-alpine3.7`

```console
$ docker pull golang@sha256:62925f38f577a39a39e612b25f0a7661e104988ccd2bcdb0a4b79c31b67c3191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `golang:1-alpine3.7` - linux; amd64

```console
$ docker pull golang@sha256:ce489ef5335dfe6312271927d73c713f5078715079d837e1557dc81a64ec7067
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112391260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:752dbcab6d9ed835037276cee268300928ff109857b2cfbd9860caee55bc7381`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:01:44 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 11 Sep 2018 23:01:45 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 02 Nov 2018 23:53:20 GMT
ENV GOLANG_VERSION=1.11.2
# Fri, 02 Nov 2018 23:54:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '042fba357210816160341f1002440550e952eb12678f7c9e7e9d389437942550 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Fri, 02 Nov 2018 23:55:00 GMT
ENV GOPATH=/go
# Fri, 02 Nov 2018 23:55:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Nov 2018 23:55:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Fri, 02 Nov 2018 23:55:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414cf715db898fd1ae3a76199126baff0e9721f0e358821a81aad1b519772c05`  
		Last Modified: Tue, 11 Sep 2018 23:12:07 GMT  
		Size: 308.3 KB (308313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca20e3239632ac69edae40601b8a72b30106a4df2279c50512201fd9f713507d`  
		Last Modified: Tue, 11 Sep 2018 23:12:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2485c5bf45aa51f726d77c44986d81696168c256eb6d61fb744bd330ca361e`  
		Last Modified: Sat, 03 Nov 2018 00:03:03 GMT  
		Size: 110.0 MB (109975492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03482e4449cedc58254bb034865492bb415a77cd44e6f2eae3da6a26e0e7473`  
		Last Modified: Sat, 03 Nov 2018 00:02:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:2a62709e1e1e99fc9c919311ab0f233a687e5a86f574aadb6f023aad8c519ee8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106282891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35a5c08af16a61b4a37f5e227df3bd336b30593a0dab42bf32407b18837f021`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:55:02 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 03 Oct 2018 08:55:04 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 03 Nov 2018 08:46:08 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 08:48:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '042fba357210816160341f1002440550e952eb12678f7c9e7e9d389437942550 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 03 Nov 2018 08:48:59 GMT
ENV GOPATH=/go
# Sat, 03 Nov 2018 08:49:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 08:49:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 03 Nov 2018 08:49:03 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3f4a1391079d7961eba2ea9cc2ce5e09a95517414bbb1dc7f40e72ca90c916`  
		Last Modified: Wed, 03 Oct 2018 09:09:45 GMT  
		Size: 308.5 KB (308549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bca2a75d67cfa50b1190b48b46fc51c5ff41026856301f450959c56e584737`  
		Last Modified: Wed, 03 Oct 2018 09:09:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b8fbf176c33734454b9c0de8841c4967b6614fc43d761ca30970dcc8fd53f`  
		Last Modified: Sat, 03 Nov 2018 09:01:32 GMT  
		Size: 104.0 MB (103974714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d49108ffee2e2354a8a0d95295248f75f7953af955fda7ca2595ed0b70ee6a`  
		Last Modified: Sat, 03 Nov 2018 09:00:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; 386

```console
$ docker pull golang@sha256:a6431a472e2f4d8de73b9ef6dd7ebe5b4ab1ef908adb75eaee9ea72ff2621d9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111616794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02079346cbc8403429d16c39212feb719b77a584d79a8e120c16fb8407e8f63f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:58:34 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 11:58:35 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 03 Nov 2018 10:41:58 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 10:44:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '042fba357210816160341f1002440550e952eb12678f7c9e7e9d389437942550 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 03 Nov 2018 10:44:00 GMT
ENV GOPATH=/go
# Sat, 03 Nov 2018 10:44:00 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 10:44:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 03 Nov 2018 10:44:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88b48854e8ef7f7cc1c4127a24ceb33e8f9cf42661830e2259d41047ed2fa1c`  
		Last Modified: Wed, 12 Sep 2018 12:06:04 GMT  
		Size: 309.1 KB (309057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88eadf9be9fe933353c971717fb583fc86814426961e788d98cc5f5a0f22231`  
		Last Modified: Wed, 12 Sep 2018 12:06:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4611aa249eaf96c8a1f6443b7fb15a9a699b1fe313a149a49432925cf57491b1`  
		Last Modified: Sat, 03 Nov 2018 10:52:31 GMT  
		Size: 109.1 MB (109138266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6774c0549647e4e5136b6265c11f22ef3c90ec42be9b29e82f23ec072b045d6`  
		Last Modified: Sat, 03 Nov 2018 10:52:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; ppc64le

```console
$ docker pull golang@sha256:c209b14a7f5b4ad6035338531afebaed1e3451b15596ad4ad3bc8a3592a6063c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106357792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38179ef571357ba718b332da71c35db9aeed171be5caccb98a1f2fb294dfdbf4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:11:16 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 10:11:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 03 Nov 2018 08:19:34 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 08:21:05 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '042fba357210816160341f1002440550e952eb12678f7c9e7e9d389437942550 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 03 Nov 2018 08:21:13 GMT
ENV GOPATH=/go
# Sat, 03 Nov 2018 08:21:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 08:21:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 03 Nov 2018 08:21:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54092da6ca5cde8da0c2204277aabd5bd12f307a42131b6daf40d949e9feab5`  
		Last Modified: Wed, 12 Sep 2018 10:28:56 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a879b3502434a3c580db6b6e99ac7b6ca7364e21f2457a611e8fa6338f3a00d6`  
		Last Modified: Wed, 12 Sep 2018 10:28:56 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c39c8da9e946e53e04b9ce37d71db63025d8b9767a33bcf0ffedb16db2dc50`  
		Last Modified: Sat, 03 Nov 2018 08:29:41 GMT  
		Size: 103.9 MB (103946633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a03059b6cd6271133cf586eac6410a4329fe1e45047fb56f52329eb159074a5`  
		Last Modified: Sat, 03 Nov 2018 08:29:05 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-alpine3.7` - linux; s390x

```console
$ docker pull golang@sha256:45c7c59fa0b2711b7bec659eb1655f79833c448136e40fd2d7f75661a723e380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112629449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93526be77874ab9c90c71858d3222706683c4795bbca6b36cedb1406375a51dd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:24:04 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:24:05 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 03 Nov 2018 11:44:08 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 11:45:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bash 		gcc 		musl-dev 		openssl 		go 	; 	export 		GOROOT_BOOTSTRAP="$(go env GOROOT)" 		GOOS="$(go env GOOS)" 		GOARCH="$(go env GOARCH)" 		GOHOSTOS="$(go env GOHOSTOS)" 		GOHOSTARCH="$(go env GOHOSTARCH)" 	; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) export GOARM='6' ;; 		x86) export GO386='387' ;; 	esac; 		wget -O go.tgz "https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz"; 	echo '042fba357210816160341f1002440550e952eb12678f7c9e7e9d389437942550 *go.tgz' | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		cd /usr/local/go/src; 	./make.bash; 		rm -rf 		/usr/local/go/pkg/bootstrap 		/usr/local/go/pkg/obj 	; 	apk del .build-deps; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 03 Nov 2018 11:45:39 GMT
ENV GOPATH=/go
# Sat, 03 Nov 2018 11:45:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 11:45:40 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 03 Nov 2018 11:45:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d9314496f9a11b63a2b3c42e724d83980e58456be9659cb829d27e9c47a756`  
		Last Modified: Wed, 12 Sep 2018 12:30:39 GMT  
		Size: 309.4 KB (309445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade711cb5ab6a5b6d38fe3b4464e277d7e7b378862902ea411e687b3aab0fe15`  
		Last Modified: Wed, 12 Sep 2018 12:30:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0afcffa2af36623b2a6e3f331d4b3ef9b2a295bbbd6d0a33fc73d8b4ed8525`  
		Last Modified: Sat, 03 Nov 2018 11:51:15 GMT  
		Size: 110.1 MB (110118366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9985803150062dbc2a415121129d8a8f6edb65b4557e315c361416ddbbc52`  
		Last Modified: Sat, 03 Nov 2018 11:50:56 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

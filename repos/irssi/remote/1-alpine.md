## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:b7b8bffd5b80c186134813d2aebbd95b3bfa593d6e4734d3bc34f2dc707d31d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:b6246791a3325b70a356d582198d7f843b292db5ef5d895c2698a025a814e54c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1d704475f684c8740c09ad1a572601cf58c8fbaf30643abdfcbf848ab36995a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:06:50 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 02:06:51 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 02:06:52 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 02:06:52 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:06:52 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 02:08:17 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 02:08:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 02:08:17 GMT
USER user
# Fri, 08 Mar 2019 02:08:18 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fbd3a8de6e04160541df73ad90bc9c34fddec8750f78129c687349485fc2c7`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 308.5 KB (308534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a53635ba04fa9994c0063be53ac33f66bf28adaac01afd9e00597335971cc`  
		Last Modified: Fri, 08 Mar 2019 02:08:43 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fd7b464310a9679968f3331083fbc20b98e5da5ec5d38e4edc12dbb8e84f9a`  
		Last Modified: Fri, 08 Mar 2019 02:08:49 GMT  
		Size: 16.8 MB (16816914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:5f8345d180ae44e46e63f29dd648e860313250d7ba05e27eb0984b2bd93bf67d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.8 MB (17792531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834ed0d36fe7b16b59448964060a354bb7cb318d8df9c112fd79f343735e6e7f`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:16:20 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:16:20 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:16:21 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:16:22 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:16:22 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:17:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:17:05 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:17:05 GMT
USER user
# Fri, 08 Mar 2019 04:17:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669146b49fd8e80ea3327613c96ff72d3a31324899cc6a85632757cb360a7cb1`  
		Last Modified: Fri, 08 Mar 2019 04:17:16 GMT  
		Size: 309.2 KB (309250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad970ff5f0212af66b782549482a0591c02dffcde0bc878ddaea25d570d99610`  
		Last Modified: Fri, 08 Mar 2019 04:17:19 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6eee087db739c645bdeb1f554cd3615f568c36cde1d5f219e11a71a464f4759`  
		Last Modified: Fri, 08 Mar 2019 04:17:23 GMT  
		Size: 15.4 MB (15431735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:0f998490a885776753d94a64a6ca657629c5a4c836a16d00ccc88f0019dfd199
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18383289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1388432188ab37dace473c2bd14e351297bd818b45dfcf29d842db8d432fdd36`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 19 Jun 2019 20:40:05 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Wed, 19 Jun 2019 20:40:05 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 21:33:28 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 19 Jun 2019 21:33:28 GMT
ENV HOME=/home/user
# Wed, 19 Jun 2019 21:33:30 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 19 Jun 2019 21:33:30 GMT
ENV LANG=C.UTF-8
# Wed, 19 Jun 2019 21:33:31 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 19 Jun 2019 21:34:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 19 Jun 2019 21:34:12 GMT
WORKDIR /home/user
# Wed, 19 Jun 2019 21:34:13 GMT
USER user
# Wed, 19 Jun 2019 21:34:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7389d07b80e207e70ab211226732f5f212b437a41a31467ea0fc4bd90b1ac0`  
		Last Modified: Wed, 19 Jun 2019 21:34:28 GMT  
		Size: 301.4 KB (301359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae9dd12419c35887a867a075fed1f552a5b84b4d360fb6c70a3608445445c7d`  
		Last Modified: Wed, 19 Jun 2019 21:34:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199df2e9137724353607b802a872fcaea2bcd1db6e4d07b56111c4bcfb801b66`  
		Last Modified: Wed, 19 Jun 2019 21:34:35 GMT  
		Size: 16.1 MB (16081649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; 386

```console
$ docker pull irssi@sha256:127ffb59d25469b0bce3acff701dfc71c0ce73d37b4a67fdaae2f38cb538393c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 MB (18292558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545a316a6dd2cc202613f88a04c4f5617d276b345b439c425dcc0efd310b5ea7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:32:37 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 04:32:37 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 04:32:38 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 04:32:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:32:38 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 04:33:40 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 04:33:40 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 04:33:40 GMT
USER user
# Fri, 08 Mar 2019 04:33:41 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916c7291ad5947f19c11a26c3e0c269aaa0f34108296e51ba1309cdb7281d2f5`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 309.2 KB (309213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9d505027c72882ca944ebeb9bd89a7133c9117498ab8b6aa6b3cd1bdbea3e38`  
		Last Modified: Fri, 08 Mar 2019 04:33:57 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455f913d3ec3a4d9d1f9c085a002a998ed24360d940006c599af7908c520cda9`  
		Last Modified: Fri, 08 Mar 2019 04:34:02 GMT  
		Size: 15.8 MB (15813104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:ec4425e64ce301304dd12ebcd0a2c55d391a05d9e6a691820e5da1aeeef97c91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18868701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e1c2b6d857d6f2e343712c2bb4611cb5ba921b7999fd356caca4f9c985a520`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:58 GMT
ADD file:55fbeb767cf2b9344907a5252cccd1e7fb7b146277b267422b6117406300bfbf in / 
# Wed, 19 Jun 2019 21:21:00 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 22:56:40 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 19 Jun 2019 22:56:43 GMT
ENV HOME=/home/user
# Wed, 19 Jun 2019 22:56:48 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 19 Jun 2019 22:56:49 GMT
ENV LANG=C.UTF-8
# Wed, 19 Jun 2019 22:56:51 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 19 Jun 2019 22:57:45 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 19 Jun 2019 22:57:49 GMT
WORKDIR /home/user
# Wed, 19 Jun 2019 22:57:51 GMT
USER user
# Wed, 19 Jun 2019 22:57:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f4c3542ff81d415a34c73cfb323605bb8faf0062bb1ba117e2bd1370b734b441`  
		Last Modified: Fri, 08 Mar 2019 03:38:54 GMT  
		Size: 2.1 MB (2098856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5299dd24954de57de237237647924522d2116babcbc0e7962726012b877a69e6`  
		Last Modified: Wed, 19 Jun 2019 22:58:12 GMT  
		Size: 303.8 KB (303828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d7815dee34d804b491cc80e76bd57b28c346341bce4f95b006a75d7bf53579`  
		Last Modified: Wed, 19 Jun 2019 22:58:12 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966849ad269f213175b087273209610f139495f7287994d7b7ca944c42592ecc`  
		Last Modified: Wed, 19 Jun 2019 22:58:18 GMT  
		Size: 16.5 MB (16464723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:1-alpine` - linux; s390x

```console
$ docker pull irssi@sha256:1c93a35a453f70e11406675102092900430d446eb71094455ae7b865ccc7a2e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 MB (19578095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b10239dfd0f14f177887bb6de23d6f32fe43da69821a75bfdf4ddf6474791d7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:55 GMT
ADD file:a5ae3b95b5b5c25ee77b70b9462247e1612c5a24b72c9d142726fbbf54a5d4c0 in / 
# Fri, 08 Mar 2019 03:35:55 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:55:40 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 08 Mar 2019 03:55:40 GMT
ENV HOME=/home/user
# Fri, 08 Mar 2019 03:55:41 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 08 Mar 2019 03:55:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 03:55:42 GMT
ENV IRSSI_VERSION=1.2.0
# Fri, 08 Mar 2019 03:56:16 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:56:17 GMT
WORKDIR /home/user
# Fri, 08 Mar 2019 03:56:17 GMT
USER user
# Fri, 08 Mar 2019 03:56:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1d20e74f71f775848cd94fe3f421b0bb3d1c8889f7769852785240e9dba26725`  
		Last Modified: Fri, 08 Mar 2019 03:36:29 GMT  
		Size: 2.2 MB (2201105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7374eabafe6fd1a7463291897b44c6f3d369c85cadf70e2648554455db74b243`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 309.6 KB (309600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573313b6a82d38562a4911be12d44aec3ca1c8b826259297e5a1ea21b751def5`  
		Last Modified: Fri, 08 Mar 2019 03:56:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9b12feb158a3e478d9d1a52e9bfc9c7435ddbdbd879247495804c3b177dc03`  
		Last Modified: Fri, 08 Mar 2019 03:56:38 GMT  
		Size: 17.1 MB (17066122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

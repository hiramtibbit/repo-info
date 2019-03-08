## `irssi:alpine`

```console
$ docker pull irssi@sha256:5cd2bfbe7c916d3dbc201cda3f8dba1e2452db8ef12b33b68a2f5c7c0b7af619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `irssi:alpine` - linux; amd64

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

### `irssi:alpine` - linux; arm variant v6

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

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:0ef89401be91fa5b5e24271e5893669bc481305a62939a32fdb570b89854f988
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 MB (18392132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f578c48649f6b53693109ce848c0e5c8cdb5f2eb7507b4fe593a0f183d424e`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:29:58 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 21 Dec 2018 10:29:59 GMT
ENV HOME=/home/user
# Fri, 21 Dec 2018 10:30:01 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Dec 2018 10:30:02 GMT
ENV LANG=C.UTF-8
# Thu, 14 Feb 2019 10:06:14 GMT
ENV IRSSI_VERSION=1.2.0
# Thu, 14 Feb 2019 10:07:32 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 14 Feb 2019 10:07:33 GMT
WORKDIR /home/user
# Thu, 14 Feb 2019 10:07:34 GMT
USER user
# Thu, 14 Feb 2019 10:07:35 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7a87e8086e6466356d4711a3528128aaabb518522218f002c9db4aa15b0cc9`  
		Last Modified: Fri, 21 Dec 2018 10:31:35 GMT  
		Size: 308.7 KB (308701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac29437df6d73751e8a56ac04eef241f5d11a96dc1ee9314cb97b60383ce9c3`  
		Last Modified: Fri, 21 Dec 2018 10:31:36 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c64a0e585db2b765ef2f920b0ae54145ec3ea3267556354599f2ac1ed1da7`  
		Last Modified: Thu, 14 Feb 2019 10:08:13 GMT  
		Size: 16.1 MB (16082822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; 386

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

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:92637589e24543775993a2a2630c18b6591f4ac8de06c844d3ddef8ee57fb5c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18881450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eeb682b017c5136a237ac8b9db76f7399034cf45287cb207f300b7b534ffdb5`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:26:11 GMT
RUN apk --no-cache add 	ca-certificates
# Fri, 21 Dec 2018 10:26:15 GMT
ENV HOME=/home/user
# Fri, 21 Dec 2018 10:26:25 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Fri, 21 Dec 2018 10:26:29 GMT
ENV LANG=C.UTF-8
# Thu, 14 Feb 2019 09:36:17 GMT
ENV IRSSI_VERSION=1.2.0
# Thu, 14 Feb 2019 09:37:12 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Thu, 14 Feb 2019 09:37:18 GMT
WORKDIR /home/user
# Thu, 14 Feb 2019 09:37:25 GMT
USER user
# Thu, 14 Feb 2019 09:37:28 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ce9937d8104bb9c0b696c7ba02709286873d9f0ab25e82055a03c679dbd9b4`  
		Last Modified: Fri, 21 Dec 2018 10:27:53 GMT  
		Size: 311.1 KB (311051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d374fdefabf8077b47c481cb9d6c17913ea52437deab3ad21d5b2ebe39ceaed2`  
		Last Modified: Fri, 21 Dec 2018 10:27:52 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e081c947e384cbd640963e41d10973355050b6df348b92a2d7afe54a6d84ca`  
		Last Modified: Thu, 14 Feb 2019 09:38:09 GMT  
		Size: 16.5 MB (16469853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; s390x

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

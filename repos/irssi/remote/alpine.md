## `irssi:alpine`

```console
$ docker pull irssi@sha256:51e763950c155fe9c0f076074bf6dd374ce06a89b538ebb26a3e6ccf0f493083
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
$ docker pull irssi@sha256:5a00f9d3aa50e31a96915a7c39554c984a6863ae780983122a6621b120c29af7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19123950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a691dfe2b6e14be22a99783e367fec0bcd1eb0e3c31e6ce4b1ff2f4955b145e`
-	Default Command: `["irssi"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:04:16 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 12 Sep 2018 00:04:16 GMT
ENV HOME=/home/user
# Wed, 12 Sep 2018 00:04:17 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 12 Sep 2018 00:04:18 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:04:18 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 12 Sep 2018 00:05:04 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 12 Sep 2018 00:05:05 GMT
WORKDIR /home/user
# Wed, 12 Sep 2018 00:05:05 GMT
USER [user]
# Wed, 12 Sep 2018 00:05:05 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98abb92c7d4e7d926d54ae954c595577ba6e126a9bcf291fa9c8dc4dc5284ae8`  
		Last Modified: Wed, 12 Sep 2018 00:05:23 GMT  
		Size: 308.3 KB (308314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2cf85d31da4884c938d5510d20066dea65b04b3585f2fe05cb2380578ecc4a`  
		Last Modified: Wed, 12 Sep 2018 00:05:22 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6875f95145f0e00f184f32437bebe49d8adddbd6ed22e671a4bd745ecba593f9`  
		Last Modified: Wed, 12 Sep 2018 00:05:29 GMT  
		Size: 16.7 MB (16707198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:8692e4b548eb35d1911a2e1ee7140fcca69c72e85f6a2467659747bbb7eca400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.7 MB (17697008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c06408b738c6b194247f7bb24468ad173ab9df81936a48d9e095f26503c90a`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 07:59:01 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 12 Sep 2018 07:59:01 GMT
ENV HOME=/home/user
# Wed, 12 Sep 2018 07:59:02 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 12 Sep 2018 07:59:02 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 07:59:02 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 15 Sep 2018 08:14:02 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sat, 15 Sep 2018 08:14:02 GMT
WORKDIR /home/user
# Sat, 15 Sep 2018 08:14:03 GMT
USER [user]
# Sat, 15 Sep 2018 08:14:03 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5df893d68ee04a9ce143015df9f24dc482eec4da86b5a3a678e3ea0dd27d56`  
		Last Modified: Sat, 15 Sep 2018 08:14:18 GMT  
		Size: 309.1 KB (309077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86118dc587bdec0cc02847ce6c5bdaea1eadf85bac2a8a15e1485653cc3fc0b9`  
		Last Modified: Sat, 15 Sep 2018 08:14:18 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809229c3fac9ce9303611c7da14de47c403171963154dc77c199e5f491342e0`  
		Last Modified: Sat, 15 Sep 2018 08:14:26 GMT  
		Size: 15.3 MB (15335367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:d44c1b190b7af3b889b14b1c9ee98437ce5caf2c9f2109cff42d45154eeb7118
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.7 MB (18691297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34f1f247e72fa4ee0bf8ad310394d889b8fab91e09ada4640d0f89f032d31f7`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 24 Apr 2018 09:14:06 GMT
RUN apk --no-cache add 	ca-certificates
# Tue, 24 Apr 2018 09:14:07 GMT
ENV HOME=/home/user
# Tue, 24 Apr 2018 09:14:11 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Tue, 24 Apr 2018 09:14:12 GMT
ENV LANG=C.UTF-8
# Tue, 24 Apr 2018 09:14:13 GMT
ENV IRSSI_VERSION=1.1.1
# Sat, 11 Aug 2018 08:50:11 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Sat, 11 Aug 2018 08:50:12 GMT
WORKDIR /home/user
# Sat, 11 Aug 2018 08:50:13 GMT
USER [user]
# Sat, 11 Aug 2018 08:50:13 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50fffc13bec5f45a72a6b5cede2d3825d6afa99c8363799e670e7f9aec834c0`  
		Last Modified: Tue, 24 Apr 2018 09:16:37 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f824e8dd5534086ecd62204946c33772fc3d0325d26752c29cff267dd8eece`  
		Last Modified: Tue, 24 Apr 2018 09:16:36 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8bce83d834879b9d5ed3034ea2395c721884178dc0642ab0dba653d2f6b761`  
		Last Modified: Sat, 11 Aug 2018 08:51:02 GMT  
		Size: 16.4 MB (16392789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:cee0f942b68072990e55171e7765aecc3d38c9f9a9d21a51fcd4e2f00bc55bfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 MB (18196886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a266fae73aa0526f984785a5dc81e42361885c5935d5e290c47ec7c65c168624`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:24:39 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 12 Sep 2018 12:24:39 GMT
ENV HOME=/home/user
# Wed, 12 Sep 2018 12:24:40 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 12 Sep 2018 12:24:40 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:24:40 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 12 Sep 2018 12:25:25 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 12 Sep 2018 12:25:25 GMT
WORKDIR /home/user
# Wed, 12 Sep 2018 12:25:25 GMT
USER [user]
# Wed, 12 Sep 2018 12:25:25 GMT
CMD ["irssi"]
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
	-	`sha256:49d4ca461a0d28762edadd35cd28027fe81d8b3d9122d3d455cc8991e9040237`  
		Last Modified: Wed, 12 Sep 2018 12:25:41 GMT  
		Size: 309.1 KB (309053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae6c9f7ae1bcf808cba7e533b0d4db1db14faa35e22fcf3eba2d7d5b065d5f2`  
		Last Modified: Wed, 12 Sep 2018 12:25:40 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8040fca8639f392bb94a65a9cb9c1ed4527c07ffe97abc79b1266f58527241af`  
		Last Modified: Wed, 12 Sep 2018 12:25:44 GMT  
		Size: 15.7 MB (15717372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:668c8534c70d4dd0bd80bc651bef15c909a712c1eb4768996090fb224397ead2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18783403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abccf397fb367dbc21766a7237e63562e73e562db2136db1605b2ba9ef26366`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:25:47 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 12 Sep 2018 10:25:48 GMT
ENV HOME=/home/user
# Wed, 12 Sep 2018 10:25:52 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 12 Sep 2018 10:25:52 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 10:25:53 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 12 Sep 2018 10:26:57 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 12 Sep 2018 10:26:58 GMT
WORKDIR /home/user
# Wed, 12 Sep 2018 10:27:00 GMT
USER [user]
# Wed, 12 Sep 2018 10:27:00 GMT
CMD ["irssi"]
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
	-	`sha256:7368229d166cc49fdf0425c0d738600bcf5ab12f09d5b1311de4def34c4adc22`  
		Last Modified: Wed, 12 Sep 2018 10:27:39 GMT  
		Size: 310.9 KB (310880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ea7a7ca2fdfaadbba63b811498b0b0d8f921c3bdbc9a6d69bc2234cd5c8e9a`  
		Last Modified: Wed, 12 Sep 2018 10:27:36 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9616bb84b7e6108240cf6ff9cf440ca72d1e22c10332cfe3352ae0862a186613`  
		Last Modified: Wed, 12 Sep 2018 10:27:46 GMT  
		Size: 16.4 MB (16371262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:81251e8a35387f23c07fd322f5f9ff14adb5c5a7bccbd64382dc741779c743d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19482874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9197d87eaff9575942acc22ec9430dd86772cb66162e122f7d81a3f1e15d64d3`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:20:28 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 12 Sep 2018 12:20:28 GMT
ENV HOME=/home/user
# Wed, 12 Sep 2018 12:20:34 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 12 Sep 2018 12:20:34 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:20:34 GMT
ENV IRSSI_VERSION=1.1.1
# Wed, 12 Sep 2018 12:21:05 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 12 Sep 2018 12:21:05 GMT
WORKDIR /home/user
# Wed, 12 Sep 2018 12:21:05 GMT
USER [user]
# Wed, 12 Sep 2018 12:21:05 GMT
CMD ["irssi"]
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
	-	`sha256:e13be43b544fab1e068165604c0f255873e91d39731b544e257efe4aa629e19d`  
		Last Modified: Wed, 12 Sep 2018 12:21:24 GMT  
		Size: 309.4 KB (309450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68098b93fe062cced317854bb7026241b998717808d0978b2d0d912925c6dcea`  
		Last Modified: Wed, 12 Sep 2018 12:21:24 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cedb9d32808ec0da97b4e7f993ed618500a1a141898bfa2bf4882d1ff29c1c`  
		Last Modified: Wed, 12 Sep 2018 12:21:28 GMT  
		Size: 17.0 MB (16970803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

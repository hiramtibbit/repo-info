## `irssi:1-alpine`

```console
$ docker pull irssi@sha256:b2b474d8c5c2c782db4df8b1197aeea6ea09298da9c4704ecd3fe3d0bac6da9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `irssi:1-alpine` - linux; amd64

```console
$ docker pull irssi@sha256:16461bd228bcd15f76629f73a37abd08f2bc1579e957bd07017679dd0343d544
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.2 MB (19233187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399c2290144f12ea88262c334f39e7155b483793e08bd7db1f8ca8934dc03fc`
-	Default Command: `["irssi"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:37:25 GMT
RUN apk --no-cache add 	ca-certificates
# Wed, 30 Jan 2019 22:37:25 GMT
ENV HOME=/home/user
# Wed, 30 Jan 2019 22:37:27 GMT
RUN adduser -u 1001 -D user 	&& mkdir -p $HOME/.irssi 	&& chown -R user:user $HOME
# Wed, 30 Jan 2019 22:37:27 GMT
ENV LANG=C.UTF-8
# Wed, 13 Feb 2019 21:24:51 GMT
ENV IRSSI_VERSION=1.2.0
# Wed, 13 Feb 2019 21:25:37 GMT
RUN set -x 	&& apk add --no-cache --virtual .build-deps 		autoconf 		automake 		coreutils 		dpkg-dev dpkg 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		make 		ncurses-dev 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz 	&& wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1 	&& gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc 	&& mkdir -p /usr/src/irssi 	&& tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1 	&& rm /tmp/irssi.tar.xz 	&& cd /usr/src/irssi 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-true-color 		--with-bot 		--with-proxy 		--with-socks 	&& make -j "$(nproc)" 	&& make install 	&& rm -rf /usr/src/irssi 	&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .irssi-rundeps $runDeps perl-libwww 	&& apk del .build-deps
# Wed, 13 Feb 2019 21:25:38 GMT
WORKDIR /home/user
# Wed, 13 Feb 2019 21:25:38 GMT
USER user
# Wed, 13 Feb 2019 21:25:38 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d1ff0ff3bb03bf3fdc52dd4bc4d4c61c6a84e6b73083d0654b24c97c5a884b`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 308.5 KB (308503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89d20d4727a1b2e481d5b7c6a6c00bd64e9baeb8d9309b75fe45f1f73c00609`  
		Last Modified: Wed, 30 Jan 2019 22:38:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f21bfc15014cef0ab59334391327b4a0ba99a44fa4df49a44fcc40d3b161b86`  
		Last Modified: Wed, 13 Feb 2019 21:26:02 GMT  
		Size: 16.8 MB (16816250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

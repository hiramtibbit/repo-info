## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:6f948b6c3d2486fb4a7dceb566d5c82281d4ad4c0934ec335f9b50915eb0ebc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:d8f19d588ef7662271aa3ead7ff2363813bdc2b39a3eec235edc8601b59cde72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:ecd10c8e12e7216376b1cd91dac3fdbfc15db3b6ecdfb1415bf4380e7b87674d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5693775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc7cecfbfd73fb0ea2770c81a03e89b2258babc4cf5b51b26906529989911d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:22:22 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Jun 2019 20:22:23 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Fri, 21 Jun 2019 20:22:23 GMT
ENV MEMCACHED_VERSION=1.5.16
# Fri, 21 Jun 2019 20:22:23 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Fri, 21 Jun 2019 20:27:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jun 2019 20:27:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:27:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jun 2019 20:27:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:27:57 GMT
USER memcache
# Fri, 21 Jun 2019 20:27:57 GMT
EXPOSE 11211
# Fri, 21 Jun 2019 20:27:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e39ef1b11f8d9e7617257f6ba472162e3d330fc61ab0c4b4fa58507c5d4cda`  
		Last Modified: Fri, 21 Jun 2019 20:28:14 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91db378723f43bf7e8de243260e227d9db10e955c3f76e73d5a297ab9ea1fc8c`  
		Last Modified: Fri, 21 Jun 2019 20:28:14 GMT  
		Size: 14.9 KB (14877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06085f9914a6d6f5060a030325e2214a6d083fca4df9acf2639b79853ac7848e`  
		Last Modified: Fri, 21 Jun 2019 20:28:14 GMT  
		Size: 2.9 MB (2887644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bb5800915488f9663434d145cbed6aa2664b064ad82ab22e718f3222a31d81`  
		Last Modified: Fri, 21 Jun 2019 20:28:14 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b68783eff112b237cb5528b0c1b476a28b4240d6dac00c0f0c23b331edca3ec`  
		Last Modified: Fri, 21 Jun 2019 20:28:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:9d1670ee91987c7c7fde05f95c4f01b4322494720e387f78ea7d0d38880a9e9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5367801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51208da32c3233f40e6eba372f3e9bf1c86deeaf61d625d4346e63f5bbf091f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 19 Jun 2019 20:49:36 GMT
ADD file:03b59368fa7e7f72a84a6f78b72e59d6bf46d5109acc13aecbab7c8c440e4add in / 
# Wed, 19 Jun 2019 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:50:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Jun 2019 20:50:44 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Fri, 21 Jun 2019 20:50:45 GMT
ENV MEMCACHED_VERSION=1.5.16
# Fri, 21 Jun 2019 20:50:46 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Fri, 21 Jun 2019 20:56:46 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jun 2019 20:56:46 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:56:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jun 2019 20:56:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:56:48 GMT
USER memcache
# Fri, 21 Jun 2019 20:56:49 GMT
EXPOSE 11211
# Fri, 21 Jun 2019 20:56:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:257a368dd99250a68424e4023851034502f33df88589bf37646c56babc8e2e81`  
		Last Modified: Wed, 19 Jun 2019 20:50:09 GMT  
		Size: 2.6 MB (2568299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42dd0f88c9e96aed15284b5b664979a5b77d92b707cb6959025b27401cf54fcc`  
		Last Modified: Fri, 21 Jun 2019 20:57:05 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc129e2aca2942ab4f2ae32f47d7b3533c8b5e95d901753d33299f442a508781`  
		Last Modified: Fri, 21 Jun 2019 20:57:05 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee210fb8dda814889263a8a7318dd1cf42d4a280a906a17aac572e65e8a7c7f2`  
		Last Modified: Fri, 21 Jun 2019 20:57:06 GMT  
		Size: 2.8 MB (2783499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e06c6c4f94491506e99cb68fbb992daaa84489eeb1ce038ac9e80ec8028d992`  
		Last Modified: Fri, 21 Jun 2019 20:57:05 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3ccb816a6dcd41c0820d072ff4b3a393511e0de167831349f4522325a09aec`  
		Last Modified: Fri, 21 Jun 2019 20:57:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v7

```console
$ docker pull memcached@sha256:cf2cb883dba85ee98d68f7bc8df3bf30a15e447a9983da55fb88201b7bd3ffe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4937598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e286178df119699d9a74fd356d2377779cb2432e17fc75c6809789164bdb73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:48:55 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Thu, 06 Jun 2019 00:32:00 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Thu, 06 Jun 2019 00:32:02 GMT
ENV MEMCACHED_VERSION=1.5.16
# Thu, 06 Jun 2019 00:32:04 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Thu, 06 Jun 2019 03:05:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 06 Jun 2019 03:05:16 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 06 Jun 2019 03:05:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jun 2019 03:05:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jun 2019 03:05:32 GMT
USER memcache
# Thu, 06 Jun 2019 03:05:34 GMT
EXPOSE 11211
# Thu, 06 Jun 2019 03:05:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4308da09a6574a8eb6957bd6a26bf259c062004ffdca5db2ff6877e533a0d60d`  
		Last Modified: Thu, 23 May 2019 22:04:03 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28fab0605bd5d9cab944762590fc8cb68814aed0f5b549651eb275986d5c067`  
		Last Modified: Thu, 06 Jun 2019 03:05:52 GMT  
		Size: 13.3 KB (13347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccc237169887dfaaf6f2cf2ca4bab039cb93a22e427351c29668ebc0754ec0f`  
		Last Modified: Thu, 06 Jun 2019 03:05:54 GMT  
		Size: 2.6 MB (2571892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28399c5ec83b690897855eb1215bd151945928568432425f73a76873e82cb96`  
		Last Modified: Thu, 06 Jun 2019 03:05:52 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7304341d7cadbe0da3a8cb43eb8567e133ca5d51aaf7889d12c95a96280d6133`  
		Last Modified: Thu, 06 Jun 2019 03:05:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:607c6b9517e94c342e2c4acf533f310dddccc7c0f59d2739a14fd668d16d147a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5606927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bcd52c52f3a0094c7a82862d0d875e4a37c871b299009e31fee78b27be47384`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:38 GMT
ADD file:5ff5a563323bccd2fa42c7839aa0e7b4041af209e44bcb5bc9e07c4a94074b66 in / 
# Wed, 19 Jun 2019 20:39:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:42:17 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Jun 2019 20:42:19 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Fri, 21 Jun 2019 20:42:19 GMT
ENV MEMCACHED_VERSION=1.5.16
# Fri, 21 Jun 2019 20:42:19 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Fri, 21 Jun 2019 20:48:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jun 2019 20:48:21 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:48:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jun 2019 20:48:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:48:23 GMT
USER memcache
# Fri, 21 Jun 2019 20:48:23 GMT
EXPOSE 11211
# Fri, 21 Jun 2019 20:48:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:54e94bcddc88729dd11dea70b3489452e71c2d5f846551f59fdeb807af4319d7`  
		Last Modified: Wed, 19 Jun 2019 20:40:29 GMT  
		Size: 2.7 MB (2714576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6e4b21803762361b4c97d5d67c1c8af8d072a2bd0fa74a2e26039b4621050c`  
		Last Modified: Fri, 21 Jun 2019 20:48:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc9066e9d4d9d6917cd4b42d0ad1edb376628eaec810477d434f30aa13789df`  
		Last Modified: Fri, 21 Jun 2019 20:48:43 GMT  
		Size: 15.3 KB (15264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f558827fcaad3ea7d14146179fc853a4302b75f20fa757de8257db7b3390e9`  
		Last Modified: Fri, 21 Jun 2019 20:48:44 GMT  
		Size: 2.9 MB (2875395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878fa757a6d9c3f5400eb02c6c7ef60029feee0c48cf0ea353f6873da251eded`  
		Last Modified: Fri, 21 Jun 2019 20:48:43 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f825389ca08f309c4a1e64f4968146d7697d744cf5e6f607218d2c10a298b6d`  
		Last Modified: Fri, 21 Jun 2019 20:48:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:6d27e6c18db503609704afc0afb9210985ed1b228009222dce80827aa9bc1721
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5745542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0774a95f74284cb12503b360e3a23d6c9f7c892ef96266dd0e5675cf15f54add`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:42:01 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Jun 2019 20:42:02 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Fri, 21 Jun 2019 20:42:03 GMT
ENV MEMCACHED_VERSION=1.5.16
# Fri, 21 Jun 2019 20:42:03 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Fri, 21 Jun 2019 20:48:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jun 2019 20:48:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:48:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jun 2019 20:48:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:48:32 GMT
USER memcache
# Fri, 21 Jun 2019 20:48:33 GMT
EXPOSE 11211
# Fri, 21 Jun 2019 20:48:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e21136da52e6328e299049a0419afead8328f555a9830eafe51115b58926b7`  
		Last Modified: Fri, 21 Jun 2019 20:48:58 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5034fbf02ae322fb4e4a4f2d9456126ae2460d53069b85ae9feab092430fed18`  
		Last Modified: Fri, 21 Jun 2019 20:48:58 GMT  
		Size: 15.8 KB (15810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1774d9ae067c8a2d13495e26a1ec21a38acb0d99fa46385d0a3c81db6e5017c6`  
		Last Modified: Fri, 21 Jun 2019 20:48:59 GMT  
		Size: 3.0 MB (2950847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab041a226525e4fc9f14750879b9db47af4bdf63ee205bc9cc8a22a8775a0cf3`  
		Last Modified: Fri, 21 Jun 2019 20:48:58 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc14f9174185bb5e20d22de4c4d8bbbb9496cc6a99b8f75ede7dd2eb4055e57`  
		Last Modified: Fri, 21 Jun 2019 20:48:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b0879449feb56c23f1d526435af5474282879191c155a73c6461b093a25ab5b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5749958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f313c206d9cba928cdaaa6482df22dc871086450163e3e82e5302f255a8c11eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:26:54 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Jun 2019 20:27:02 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Fri, 21 Jun 2019 20:27:06 GMT
ENV MEMCACHED_VERSION=1.5.16
# Fri, 21 Jun 2019 20:27:09 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Fri, 21 Jun 2019 20:39:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jun 2019 20:39:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:39:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jun 2019 20:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:40:02 GMT
USER memcache
# Fri, 21 Jun 2019 20:40:04 GMT
EXPOSE 11211
# Fri, 21 Jun 2019 20:40:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1d7a45f915b7deb1805649b09aa9f5d658297412f183272a732bdacf87ad10`  
		Last Modified: Fri, 21 Jun 2019 20:40:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29963c313bb4a2676bbab968088ba3a5179853295d55cd84ef8a0f7af6c2d0fa`  
		Last Modified: Fri, 21 Jun 2019 20:40:38 GMT  
		Size: 15.9 KB (15936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefbd3a1e5f78380922fe2d2b580ab0682f77ac5f3fccf50c111369f21fd928e`  
		Last Modified: Fri, 21 Jun 2019 20:40:39 GMT  
		Size: 2.9 MB (2926009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602dd4b02dbda27dea699e15e5c6347a3ad6bc6198e6e690e7c048562bdc9379`  
		Last Modified: Fri, 21 Jun 2019 20:40:38 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc5b4f9e983ab9df001e8e97a2e78fd653827795055316ced6baec4f002e35`  
		Last Modified: Fri, 21 Jun 2019 20:40:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:d562dc4b3dbd71a506bd4c7131dccdf874029183ef08a4b92779a5ed1465f0f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5346358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f52eafaad82cc8a3722f9cb63f02f77d5e1724933c8589527a41194a09d255f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 19 Jun 2019 20:41:48 GMT
ADD file:1ef73640a5f885504655c88e9b4086090c61ab5304de3f4613faa793293a285a in / 
# Wed, 19 Jun 2019 20:41:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:42:35 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Jun 2019 20:42:36 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Fri, 21 Jun 2019 20:42:37 GMT
ENV MEMCACHED_VERSION=1.5.16
# Fri, 21 Jun 2019 20:42:37 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Fri, 21 Jun 2019 20:46:27 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Jun 2019 20:46:27 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:46:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Jun 2019 20:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:46:29 GMT
USER memcache
# Fri, 21 Jun 2019 20:46:30 GMT
EXPOSE 11211
# Fri, 21 Jun 2019 20:46:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6d7f83980907ca45ebe6a825ca787438c1431aed60fe2145407c2fb808e5f141`  
		Last Modified: Wed, 19 Jun 2019 20:42:16 GMT  
		Size: 2.6 MB (2570285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b28bfff3579dc0d88a828627f164d0eb91a0dbd75aa5251bd72bbb111a64d4`  
		Last Modified: Fri, 21 Jun 2019 20:46:46 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e340da894b5842ac4d4770f4f7ac01de82a1856362a6413e55d066b95acc513`  
		Last Modified: Fri, 21 Jun 2019 20:46:46 GMT  
		Size: 15.1 KB (15112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0910d5cb790e457e7d1064792a9dcda874c49d74f6fed6c69ab2f5118284c0`  
		Last Modified: Fri, 21 Jun 2019 20:46:46 GMT  
		Size: 2.8 MB (2759296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4363d6ffe5b297d47bcafbf3278498d305e8f96d8af21cf72d685341365b11`  
		Last Modified: Fri, 21 Jun 2019 20:46:46 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a33ff09b97c030c50a9183b54ba4ad6f2b2df0a2cf72bcf4a7298fadf58d9`  
		Last Modified: Fri, 21 Jun 2019 20:46:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

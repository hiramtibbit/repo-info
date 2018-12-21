## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:c6b620587840cde47120bff1fb4fcc7e283f2afd734f00c27ad0b0ec68ec4c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:4d3ee6532d496685d9127cd68a74ec7fd5d39088708b1f96a0c954bd3b3218c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6410ff9fe765eca35ccc47cc3271353ba8a0e83956e090c49805aa8e571aef03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:27:23 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 04:27:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 04:27:24 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 04:32:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 04:32:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 04:32:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 04:32:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:32:57 GMT
USER memcache
# Fri, 21 Dec 2018 04:32:57 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 04:32:57 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbccf39bda951898bf8d57f56636c5cb1593f7cb73015dff93a3af76d85a5e7`  
		Last Modified: Fri, 21 Dec 2018 04:33:16 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a8cc89e28c99a417f28a680e30c8bdd5eaa87fe8e3517810b6cc91de5155b6`  
		Last Modified: Fri, 21 Dec 2018 04:33:16 GMT  
		Size: 2.7 MB (2711216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cd094033bb0a0ef7eddce449001b5e7c2317163c96060d3ef92c5cae1c779c`  
		Last Modified: Fri, 21 Dec 2018 04:33:16 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b027b5fe601b9396413e3301506b816a298ce39da522c135ba565ca66afeb74`  
		Last Modified: Fri, 21 Dec 2018 04:33:16 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5b0661f2d9f3846103432b1203bec06c386767ed1b71277db0bd305db3154797
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4755958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137924c02e7d826bdd818f088da015fd20de75ae0e07728a88348c507b73ec70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 07:49:30 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 20 Nov 2018 20:27:22 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 20 Nov 2018 20:27:23 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 21 Nov 2018 09:04:59 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 21 Nov 2018 09:05:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 21 Nov 2018 09:05:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Nov 2018 09:05:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Nov 2018 09:05:15 GMT
USER memcache
# Wed, 21 Nov 2018 09:05:17 GMT
EXPOSE 11211
# Wed, 21 Nov 2018 09:05:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc4ba54ae4d137be594e8733ed2bd1956a6700f22737a3931fbf5d36b91cd`  
		Last Modified: Sun, 16 Sep 2018 08:04:54 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c365516167184a60d3077be505f571d1e40f2fe4e706bd05fb3a11aa7e327`  
		Last Modified: Wed, 21 Nov 2018 09:05:44 GMT  
		Size: 2.6 MB (2607644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a8b0e25f15d7b3a36872c54d4881a1706c3f0695283b36b64c83d93aa953ad`  
		Last Modified: Wed, 21 Nov 2018 09:05:41 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02178b1ab9302e3b09ecbdfca34d8e3a0e492dcbd8348f6133644192a8ea72fd`  
		Last Modified: Wed, 21 Nov 2018 09:05:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:eb6a01e1b8ea6868ee731ee2704969729a8808317339ea3bb5b96e6fdde4d904
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4682005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d5c834358fe96040e53b57ece386b80c1804d21b7bd8f8c64633926e1962ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:01:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 10 Nov 2018 09:57:10 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 10 Nov 2018 09:57:11 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 10 Nov 2018 10:10:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 10 Nov 2018 10:10:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 10 Nov 2018 10:10:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 10:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 10:10:21 GMT
USER [memcache]
# Sat, 10 Nov 2018 10:10:22 GMT
EXPOSE 11211/tcp
# Sat, 10 Nov 2018 10:10:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb74a2db9e475bbb7f9e1479b6b12c8c4db11108ecc4925570a065edfbc559b0`  
		Last Modified: Sat, 15 Sep 2018 10:10:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c667b12a8f2e0f2dfc853a06e8e727b3269e7247c74f5a57d35d733254c0a5a`  
		Last Modified: Sat, 10 Nov 2018 10:12:01 GMT  
		Size: 2.6 MB (2580408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28097b3b0a43409e40d0172523466b4519349bb05cafc18772489cdcc2768596`  
		Last Modified: Sat, 10 Nov 2018 10:12:00 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0567fc97ff287739c0a094c3a0abf5b4f8e0d6b957c5cbe0ac129e4eb38d64af`  
		Last Modified: Sat, 10 Nov 2018 10:12:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:e40ea5220366a4275f2e0344f36768833a8d85e749a8daf55427f7761901340b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e43d5b7ee5b14d2aa1a588d1b4d084f556c18251d03096aea20115464a5294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:53:40 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 10 Nov 2018 12:04:06 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 10 Nov 2018 12:04:07 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 10 Nov 2018 12:15:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 10 Nov 2018 12:15:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 10 Nov 2018 12:15:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 12:15:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 12:15:19 GMT
USER [memcache]
# Sat, 10 Nov 2018 12:15:19 GMT
EXPOSE 11211/tcp
# Sat, 10 Nov 2018 12:15:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9942a015a0b11686ba1d3d8d03a223b0d4590a067d063405f5b42938bbf60f`  
		Last Modified: Sat, 15 Sep 2018 10:59:58 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f9b48d687c39bf2efe258d516fcdd6a41e79bee0881a4919f519a4b2a648e8`  
		Last Modified: Sat, 10 Nov 2018 12:16:36 GMT  
		Size: 2.8 MB (2780429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada8c0883a6d8c78ee16175c0a4007980264ef5f1a0ad3c8b0c81bfe4be591de`  
		Last Modified: Sat, 10 Nov 2018 12:16:36 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadec66635b5d7263531e5cf59efb0d3188fd2e159295783d45e3a26e5710101`  
		Last Modified: Sat, 10 Nov 2018 12:16:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:2cbb9488517ff1526b012e32d0e7bc01b982ef649db096993260f9a1946326b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4844700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384b3d3df9d2574cd822cf6577f570ba367db246bd5e94b96e67618ae83e600b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:40:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 10 Nov 2018 09:38:03 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 10 Nov 2018 09:38:04 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 10 Nov 2018 09:49:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 10 Nov 2018 09:49:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 10 Nov 2018 09:49:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 09:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 09:49:30 GMT
USER [memcache]
# Sat, 10 Nov 2018 09:49:30 GMT
EXPOSE 11211/tcp
# Sat, 10 Nov 2018 09:49:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f341dd0bab589cabf61519205a507e84ea1de11d632c1892a09f0397c7be538`  
		Last Modified: Sat, 15 Sep 2018 08:47:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5b0ab9c8750e7669495adf2e0ed9d5b2ef457c10d74aacfa154fc43cdfa723`  
		Last Modified: Sat, 10 Nov 2018 09:50:50 GMT  
		Size: 2.6 MB (2647614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891670e0e0465649a88f2c14fb5ee0942e0550e7ec5dd06f177fcd0522eeacf5`  
		Last Modified: Sat, 10 Nov 2018 09:50:49 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29d60db56aa20ab84185ebad9914b1b6ee2d28f6f131f37df745b45a1fc8473`  
		Last Modified: Sat, 10 Nov 2018 09:50:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:1a5fff194f451f0e9c6e0c42abc9d532c10416308239143270eb0273b50dec4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4945581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee05a87480a81dbecc36e1fb43d9da739609dd2e8c8f6becf3fd1767a75b850`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:49:53 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 10 Nov 2018 12:46:20 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 10 Nov 2018 12:46:20 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 10 Nov 2018 12:49:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 10 Nov 2018 12:49:44 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 10 Nov 2018 12:49:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 10 Nov 2018 12:49:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 12:49:44 GMT
USER [memcache]
# Sat, 10 Nov 2018 12:49:45 GMT
EXPOSE 11211/tcp
# Sat, 10 Nov 2018 12:49:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5effac186d33f37bdc9b9c93bdebb430d7ed2269cb4aada3510139478eea9ba0`  
		Last Modified: Sat, 15 Sep 2018 11:54:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e130527257b65008f18fb3de81c4425833bd87141a68d7c24e338fd5b62155c1`  
		Last Modified: Sat, 10 Nov 2018 12:50:18 GMT  
		Size: 2.6 MB (2636005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacc1360a7ab880796a65c35f99314c8af1c1abc6a68125b91f352c473bc8f10`  
		Last Modified: Sat, 10 Nov 2018 12:50:18 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c48d773d32f4ccb03edd5e33a66f45e75d3d1e4d47eb967c7aa6c337ed5027`  
		Last Modified: Sat, 10 Nov 2018 12:50:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

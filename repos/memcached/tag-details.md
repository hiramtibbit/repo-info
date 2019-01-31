<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.12`](#memcached1512)
-	[`memcached:1.5.12-alpine`](#memcached1512-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:198e14033adbf26443359ba0dda2b6a7e9032be13680c574b5cf0d3ef0c3d319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:11b7ed8f8cbcfb847c191250483d56bb184193b158ad38221d156ce17de91e4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23549956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275c83a0c04a7d9a88b404db45a70170d6d51bd870f10b75b4cabee937cf2e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:30:25 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 01:36:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 01:36:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 01:36:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 01:36:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 01:36:11 GMT
USER memcache
# Wed, 23 Jan 2019 01:36:11 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 01:36:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f7235fb283827ccf42629ec6cf697c427917abde32f718782f28352ad441b0`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcec290b59f232ca6978ba7df1eeb3dbc68ffe1f552c73c12c753786f317d36`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 1.0 MB (1043850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17263af88fec7980dd6cc6d114af883d8bdae1594ca65fb9c149a9f8f98cb2e4`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e086617e213a5b252a2c3f4975aa1119eac9013198c0bff2f5af59058a4dcb`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:9f9e3a73de4605fa8cefe450e61cf577bb8ad446d4c5ca2872c4e44be2093c8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22211408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1d113acbca9f96fbeddb6711bfd0b960748c1c7f242f10d4ee4ac226f6a790`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 16:34:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 16:34:55 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 16:34:56 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 17:09:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 17:09:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 17:09:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 17:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 17:09:52 GMT
USER memcache
# Mon, 28 Jan 2019 17:09:53 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 17:09:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506eb7788d5eea0be87f6ea8e14817841007a51bc5e9310882192f87f7a27e48`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9def334daac3a71066a93aa1268f2c82f96b94e7afdee0d5193b87692daef12`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 1.0 MB (1024262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608c65babd0c0243affb01d91ad36fbfa64afa8f485665bfd9575034b729bd1`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631e33e599ad8ed8d31e1affe96c11e23f9c4544efcfa844d9a0c9f98c829abb`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:c89f2363a8987f8adf1c0caca8aab15e96b40db3fed22f3a2962bfcd2a1c3dec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20287172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87dfb3952133e20272a000719f2a681335212ea3ece9117c833f4bad261540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 17:12:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 17:12:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 17:12:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 18:02:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 18:02:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 18:02:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 18:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 18:02:57 GMT
USER memcache
# Mon, 28 Jan 2019 18:02:58 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 18:03:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf4139c2f6d3f3328a65b8ffe3e9e699e5bd523336ca5319e55792ff0bdb0a0`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eed201e140a3dd8942d1ca60cec4d04418885ba469eea23af0908b20cf8bf23`  
		Last Modified: Mon, 28 Jan 2019 18:03:16 GMT  
		Size: 991.6 KB (991568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca90e0e503fbd60b79681765e2ceff80d7bcc20bf9bfa8cf653a2de41723a7e`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9632129b4d5a59fb376f918871d6484f426deb68699392d47ac51b87961845d`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a079fda09adee8374dad3fa0169682c2eb44e4e835f4fba721ac6de0020106fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51cf03641f56de9130ebcae810d5a2ce02493b9017ed64c30382de0357467a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:12:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 25 Jan 2019 03:12:16 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 25 Jan 2019 03:12:18 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 25 Jan 2019 03:21:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Jan 2019 03:21:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 25 Jan 2019 03:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Jan 2019 03:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 03:21:57 GMT
USER memcache
# Fri, 25 Jan 2019 03:21:59 GMT
EXPOSE 11211
# Fri, 25 Jan 2019 03:22:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4fb986c20548a98b868a028c9cea5acfcdcc5fcc4d8776dee58fc52375fef4`  
		Last Modified: Fri, 25 Jan 2019 03:22:41 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb3c1a7a428bcd3cc4552e97786dc11eee69b7be13355f7f5bbda23d2a84901`  
		Last Modified: Fri, 25 Jan 2019 03:22:42 GMT  
		Size: 1.0 MB (1005870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50abf937124651f7e336d0106b13edbe4f01acf776ee07528f09547831b73d`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02274e6f84b7507aedba4aa72c7330eece019583b746f2e7be40b85620931c1`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:1d57318e7814d961bd9f94456e60d070da46814732f21b285e60367ababde7db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24191040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411446efdd49112287fece822dcd501d379807cbde70c3d8735eb6941b87533c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:27:38 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 29 Dec 2018 17:27:38 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 29 Dec 2018 17:27:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 29 Dec 2018 17:34:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 29 Dec 2018 17:34:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Sat, 29 Dec 2018 17:34:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 17:34:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:34:21 GMT
USER memcache
# Sat, 29 Dec 2018 17:34:22 GMT
EXPOSE 11211
# Sat, 29 Dec 2018 17:34:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0895293165849b86dbe423d18a6763a901e2639204503153c2a631c87e9bc`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338d728b6206ec4180b4219bdaf4b1f3bf086b1ecfa4b836c36b469cf0327206`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 1.1 MB (1052567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62a84b2287b8cb371cab841086ab9ed5d496e60de1e94d04e3c305c21a1cf36`  
		Last Modified: Sat, 29 Dec 2018 17:34:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbd9e4078557cf3494520a7b2af9ef144f504a3c1d728c8776b99f9c67f9132`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:e38c159c891681de438b08e14a5feda0dc1685c7f6774394a4f0b8fae0eeabc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5196024f4b7b4e60a6c39fb97f150975458837bfb7e2fac0c57c487fcfbfe7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:43:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 11:43:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 11:43:50 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 11:51:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 11:51:03 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:51:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 11:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:51:13 GMT
USER memcache
# Wed, 23 Jan 2019 11:51:15 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 11:51:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65743f2daa5206740f44ffe3d70be04dcf077335f7ac811947c781baf0f1ee43`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 5.0 KB (4985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e950083ed702683b38b532d0f077d4de744bb46087f94e0df31b586a4c700`  
		Last Modified: Wed, 23 Jan 2019 11:51:43 GMT  
		Size: 1.0 MB (1036871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cd7e9aacb04f421bf79fd6caf054c9b415beba92db03062c2185859a58614e`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2560b5b55c53bdb7332e80aff6b1ef90be7b284bde942973463a8565bd36775`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:3d4d60333a6588c8273614f9bccb2359a0a46d84efb1e15dc6c602ea573371e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23359329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7782ca15fff791d3ed88b1f6b638bccccf5a5ddbd0bdfba7a859a6ccc332fa0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:39:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 13:43:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 13:43:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:43:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:43:05 GMT
USER memcache
# Wed, 23 Jan 2019 13:43:05 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 13:43:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b3acc0e289436055068c9029526ee20a2149e4206c6953ba91775de6df1c9`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90c485b822550b6178c70e5f06e6c95e67d3ab82b2512895b3b4c8e6ba99ad`  
		Last Modified: Wed, 23 Jan 2019 13:43:27 GMT  
		Size: 1000.4 KB (1000386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63aba902596bee477d8200ea63cff2dfd3303bdab96bd54649ed6e553b4895b`  
		Last Modified: Wed, 23 Jan 2019 13:43:28 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f94823374f3ae514756dac7775f52e32ddc5c686dc10e543684570f29558c7b`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:198e14033adbf26443359ba0dda2b6a7e9032be13680c574b5cf0d3ef0c3d319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:11b7ed8f8cbcfb847c191250483d56bb184193b158ad38221d156ce17de91e4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23549956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275c83a0c04a7d9a88b404db45a70170d6d51bd870f10b75b4cabee937cf2e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:30:25 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 01:36:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 01:36:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 01:36:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 01:36:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 01:36:11 GMT
USER memcache
# Wed, 23 Jan 2019 01:36:11 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 01:36:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f7235fb283827ccf42629ec6cf697c427917abde32f718782f28352ad441b0`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcec290b59f232ca6978ba7df1eeb3dbc68ffe1f552c73c12c753786f317d36`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 1.0 MB (1043850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17263af88fec7980dd6cc6d114af883d8bdae1594ca65fb9c149a9f8f98cb2e4`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e086617e213a5b252a2c3f4975aa1119eac9013198c0bff2f5af59058a4dcb`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:9f9e3a73de4605fa8cefe450e61cf577bb8ad446d4c5ca2872c4e44be2093c8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22211408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1d113acbca9f96fbeddb6711bfd0b960748c1c7f242f10d4ee4ac226f6a790`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 16:34:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 16:34:55 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 16:34:56 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 17:09:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 17:09:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 17:09:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 17:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 17:09:52 GMT
USER memcache
# Mon, 28 Jan 2019 17:09:53 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 17:09:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506eb7788d5eea0be87f6ea8e14817841007a51bc5e9310882192f87f7a27e48`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9def334daac3a71066a93aa1268f2c82f96b94e7afdee0d5193b87692daef12`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 1.0 MB (1024262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608c65babd0c0243affb01d91ad36fbfa64afa8f485665bfd9575034b729bd1`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631e33e599ad8ed8d31e1affe96c11e23f9c4544efcfa844d9a0c9f98c829abb`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:c89f2363a8987f8adf1c0caca8aab15e96b40db3fed22f3a2962bfcd2a1c3dec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20287172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87dfb3952133e20272a000719f2a681335212ea3ece9117c833f4bad261540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 17:12:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 17:12:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 17:12:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 18:02:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 18:02:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 18:02:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 18:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 18:02:57 GMT
USER memcache
# Mon, 28 Jan 2019 18:02:58 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 18:03:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf4139c2f6d3f3328a65b8ffe3e9e699e5bd523336ca5319e55792ff0bdb0a0`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eed201e140a3dd8942d1ca60cec4d04418885ba469eea23af0908b20cf8bf23`  
		Last Modified: Mon, 28 Jan 2019 18:03:16 GMT  
		Size: 991.6 KB (991568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca90e0e503fbd60b79681765e2ceff80d7bcc20bf9bfa8cf653a2de41723a7e`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9632129b4d5a59fb376f918871d6484f426deb68699392d47ac51b87961845d`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a079fda09adee8374dad3fa0169682c2eb44e4e835f4fba721ac6de0020106fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51cf03641f56de9130ebcae810d5a2ce02493b9017ed64c30382de0357467a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:12:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 25 Jan 2019 03:12:16 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 25 Jan 2019 03:12:18 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 25 Jan 2019 03:21:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Jan 2019 03:21:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 25 Jan 2019 03:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Jan 2019 03:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 03:21:57 GMT
USER memcache
# Fri, 25 Jan 2019 03:21:59 GMT
EXPOSE 11211
# Fri, 25 Jan 2019 03:22:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4fb986c20548a98b868a028c9cea5acfcdcc5fcc4d8776dee58fc52375fef4`  
		Last Modified: Fri, 25 Jan 2019 03:22:41 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb3c1a7a428bcd3cc4552e97786dc11eee69b7be13355f7f5bbda23d2a84901`  
		Last Modified: Fri, 25 Jan 2019 03:22:42 GMT  
		Size: 1.0 MB (1005870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50abf937124651f7e336d0106b13edbe4f01acf776ee07528f09547831b73d`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02274e6f84b7507aedba4aa72c7330eece019583b746f2e7be40b85620931c1`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:1d57318e7814d961bd9f94456e60d070da46814732f21b285e60367ababde7db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24191040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411446efdd49112287fece822dcd501d379807cbde70c3d8735eb6941b87533c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:27:38 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 29 Dec 2018 17:27:38 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 29 Dec 2018 17:27:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 29 Dec 2018 17:34:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 29 Dec 2018 17:34:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Sat, 29 Dec 2018 17:34:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 17:34:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:34:21 GMT
USER memcache
# Sat, 29 Dec 2018 17:34:22 GMT
EXPOSE 11211
# Sat, 29 Dec 2018 17:34:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0895293165849b86dbe423d18a6763a901e2639204503153c2a631c87e9bc`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338d728b6206ec4180b4219bdaf4b1f3bf086b1ecfa4b836c36b469cf0327206`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 1.1 MB (1052567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62a84b2287b8cb371cab841086ab9ed5d496e60de1e94d04e3c305c21a1cf36`  
		Last Modified: Sat, 29 Dec 2018 17:34:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbd9e4078557cf3494520a7b2af9ef144f504a3c1d728c8776b99f9c67f9132`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:e38c159c891681de438b08e14a5feda0dc1685c7f6774394a4f0b8fae0eeabc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5196024f4b7b4e60a6c39fb97f150975458837bfb7e2fac0c57c487fcfbfe7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:43:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 11:43:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 11:43:50 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 11:51:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 11:51:03 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:51:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 11:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:51:13 GMT
USER memcache
# Wed, 23 Jan 2019 11:51:15 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 11:51:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65743f2daa5206740f44ffe3d70be04dcf077335f7ac811947c781baf0f1ee43`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 5.0 KB (4985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e950083ed702683b38b532d0f077d4de744bb46087f94e0df31b586a4c700`  
		Last Modified: Wed, 23 Jan 2019 11:51:43 GMT  
		Size: 1.0 MB (1036871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cd7e9aacb04f421bf79fd6caf054c9b415beba92db03062c2185859a58614e`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2560b5b55c53bdb7332e80aff6b1ef90be7b284bde942973463a8565bd36775`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:3d4d60333a6588c8273614f9bccb2359a0a46d84efb1e15dc6c602ea573371e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23359329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7782ca15fff791d3ed88b1f6b638bccccf5a5ddbd0bdfba7a859a6ccc332fa0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:39:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 13:43:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 13:43:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:43:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:43:05 GMT
USER memcache
# Wed, 23 Jan 2019 13:43:05 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 13:43:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b3acc0e289436055068c9029526ee20a2149e4206c6953ba91775de6df1c9`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90c485b822550b6178c70e5f06e6c95e67d3ab82b2512895b3b4c8e6ba99ad`  
		Last Modified: Wed, 23 Jan 2019 13:43:27 GMT  
		Size: 1000.4 KB (1000386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63aba902596bee477d8200ea63cff2dfd3303bdab96bd54649ed6e553b4895b`  
		Last Modified: Wed, 23 Jan 2019 13:43:28 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f94823374f3ae514756dac7775f52e32ddc5c686dc10e543684570f29558c7b`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.12`

```console
$ docker pull memcached@sha256:198e14033adbf26443359ba0dda2b6a7e9032be13680c574b5cf0d3ef0c3d319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.12` - linux; amd64

```console
$ docker pull memcached@sha256:11b7ed8f8cbcfb847c191250483d56bb184193b158ad38221d156ce17de91e4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23549956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275c83a0c04a7d9a88b404db45a70170d6d51bd870f10b75b4cabee937cf2e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:30:25 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 01:36:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 01:36:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 01:36:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 01:36:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 01:36:11 GMT
USER memcache
# Wed, 23 Jan 2019 01:36:11 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 01:36:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f7235fb283827ccf42629ec6cf697c427917abde32f718782f28352ad441b0`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcec290b59f232ca6978ba7df1eeb3dbc68ffe1f552c73c12c753786f317d36`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 1.0 MB (1043850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17263af88fec7980dd6cc6d114af883d8bdae1594ca65fb9c149a9f8f98cb2e4`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e086617e213a5b252a2c3f4975aa1119eac9013198c0bff2f5af59058a4dcb`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm variant v5

```console
$ docker pull memcached@sha256:9f9e3a73de4605fa8cefe450e61cf577bb8ad446d4c5ca2872c4e44be2093c8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22211408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1d113acbca9f96fbeddb6711bfd0b960748c1c7f242f10d4ee4ac226f6a790`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 16:34:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 16:34:55 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 16:34:56 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 17:09:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 17:09:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 17:09:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 17:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 17:09:52 GMT
USER memcache
# Mon, 28 Jan 2019 17:09:53 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 17:09:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506eb7788d5eea0be87f6ea8e14817841007a51bc5e9310882192f87f7a27e48`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9def334daac3a71066a93aa1268f2c82f96b94e7afdee0d5193b87692daef12`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 1.0 MB (1024262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608c65babd0c0243affb01d91ad36fbfa64afa8f485665bfd9575034b729bd1`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631e33e599ad8ed8d31e1affe96c11e23f9c4544efcfa844d9a0c9f98c829abb`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm variant v7

```console
$ docker pull memcached@sha256:c89f2363a8987f8adf1c0caca8aab15e96b40db3fed22f3a2962bfcd2a1c3dec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20287172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87dfb3952133e20272a000719f2a681335212ea3ece9117c833f4bad261540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 17:12:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 17:12:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 17:12:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 18:02:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 18:02:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 18:02:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 18:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 18:02:57 GMT
USER memcache
# Mon, 28 Jan 2019 18:02:58 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 18:03:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf4139c2f6d3f3328a65b8ffe3e9e699e5bd523336ca5319e55792ff0bdb0a0`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eed201e140a3dd8942d1ca60cec4d04418885ba469eea23af0908b20cf8bf23`  
		Last Modified: Mon, 28 Jan 2019 18:03:16 GMT  
		Size: 991.6 KB (991568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca90e0e503fbd60b79681765e2ceff80d7bcc20bf9bfa8cf653a2de41723a7e`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9632129b4d5a59fb376f918871d6484f426deb68699392d47ac51b87961845d`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a079fda09adee8374dad3fa0169682c2eb44e4e835f4fba721ac6de0020106fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51cf03641f56de9130ebcae810d5a2ce02493b9017ed64c30382de0357467a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:12:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 25 Jan 2019 03:12:16 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 25 Jan 2019 03:12:18 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 25 Jan 2019 03:21:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Jan 2019 03:21:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 25 Jan 2019 03:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Jan 2019 03:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 03:21:57 GMT
USER memcache
# Fri, 25 Jan 2019 03:21:59 GMT
EXPOSE 11211
# Fri, 25 Jan 2019 03:22:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4fb986c20548a98b868a028c9cea5acfcdcc5fcc4d8776dee58fc52375fef4`  
		Last Modified: Fri, 25 Jan 2019 03:22:41 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb3c1a7a428bcd3cc4552e97786dc11eee69b7be13355f7f5bbda23d2a84901`  
		Last Modified: Fri, 25 Jan 2019 03:22:42 GMT  
		Size: 1.0 MB (1005870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50abf937124651f7e336d0106b13edbe4f01acf776ee07528f09547831b73d`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02274e6f84b7507aedba4aa72c7330eece019583b746f2e7be40b85620931c1`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; 386

```console
$ docker pull memcached@sha256:1d57318e7814d961bd9f94456e60d070da46814732f21b285e60367ababde7db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24191040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411446efdd49112287fece822dcd501d379807cbde70c3d8735eb6941b87533c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:27:38 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 29 Dec 2018 17:27:38 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 29 Dec 2018 17:27:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 29 Dec 2018 17:34:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 29 Dec 2018 17:34:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Sat, 29 Dec 2018 17:34:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 17:34:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:34:21 GMT
USER memcache
# Sat, 29 Dec 2018 17:34:22 GMT
EXPOSE 11211
# Sat, 29 Dec 2018 17:34:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0895293165849b86dbe423d18a6763a901e2639204503153c2a631c87e9bc`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338d728b6206ec4180b4219bdaf4b1f3bf086b1ecfa4b836c36b469cf0327206`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 1.1 MB (1052567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62a84b2287b8cb371cab841086ab9ed5d496e60de1e94d04e3c305c21a1cf36`  
		Last Modified: Sat, 29 Dec 2018 17:34:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbd9e4078557cf3494520a7b2af9ef144f504a3c1d728c8776b99f9c67f9132`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; ppc64le

```console
$ docker pull memcached@sha256:e38c159c891681de438b08e14a5feda0dc1685c7f6774394a4f0b8fae0eeabc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5196024f4b7b4e60a6c39fb97f150975458837bfb7e2fac0c57c487fcfbfe7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:43:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 11:43:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 11:43:50 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 11:51:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 11:51:03 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:51:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 11:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:51:13 GMT
USER memcache
# Wed, 23 Jan 2019 11:51:15 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 11:51:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65743f2daa5206740f44ffe3d70be04dcf077335f7ac811947c781baf0f1ee43`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 5.0 KB (4985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e950083ed702683b38b532d0f077d4de744bb46087f94e0df31b586a4c700`  
		Last Modified: Wed, 23 Jan 2019 11:51:43 GMT  
		Size: 1.0 MB (1036871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cd7e9aacb04f421bf79fd6caf054c9b415beba92db03062c2185859a58614e`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2560b5b55c53bdb7332e80aff6b1ef90be7b284bde942973463a8565bd36775`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; s390x

```console
$ docker pull memcached@sha256:3d4d60333a6588c8273614f9bccb2359a0a46d84efb1e15dc6c602ea573371e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23359329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7782ca15fff791d3ed88b1f6b638bccccf5a5ddbd0bdfba7a859a6ccc332fa0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:39:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 13:43:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 13:43:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:43:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:43:05 GMT
USER memcache
# Wed, 23 Jan 2019 13:43:05 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 13:43:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b3acc0e289436055068c9029526ee20a2149e4206c6953ba91775de6df1c9`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90c485b822550b6178c70e5f06e6c95e67d3ab82b2512895b3b4c8e6ba99ad`  
		Last Modified: Wed, 23 Jan 2019 13:43:27 GMT  
		Size: 1000.4 KB (1000386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63aba902596bee477d8200ea63cff2dfd3303bdab96bd54649ed6e553b4895b`  
		Last Modified: Wed, 23 Jan 2019 13:43:28 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f94823374f3ae514756dac7775f52e32ddc5c686dc10e543684570f29558c7b`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.12-alpine`

```console
$ docker pull memcached@sha256:f79c0a7448b57ec2a189986d8d1baa4afea67a1f2c690eca953ff2cf367b47b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.12-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:29515e4d32ae62ab951c56a2a5f2a497625003967d90ade820d4e94163e73ff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdbc7fa85a05f664c0c5874cc07a919357800f00ee569dd70790d737a0c730c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:05:59 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 30 Jan 2019 23:12:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 30 Jan 2019 23:12:19 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 30 Jan 2019 23:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 30 Jan 2019 23:12:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 23:12:21 GMT
USER memcache
# Wed, 30 Jan 2019 23:12:21 GMT
EXPOSE 11211
# Wed, 30 Jan 2019 23:12:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0266107acd9155ebdb6a794c7fdfaee3e2fc84e0a175ce70fc7977e3ee32cc62`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29c72c00ec996d88957eb44d41cd8fc3d8ad6b70bbdb065a80497e4f9d1bb81`  
		Last Modified: Wed, 30 Jan 2019 23:12:43 GMT  
		Size: 2.7 MB (2710132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b52f7cb207d3059961533330d0b3bd8b4dd74ebb85f3035c4b8d65fc878a85`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d71fd5a34bd774e82c40d7be1d525f4ba24fe4eb11bfc315911b3129514a73`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:eb91ddac9678fea9539184c7206eaff4b69a6b1c2836047ee12c3c007b19ae11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4754069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d02ef1aa89e33c2134cd40ea182788da264a143aeab1978b881af104302f65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:49:55 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 15:49:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 15:49:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:20:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:20:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:20:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:20:57 GMT
USER memcache
# Fri, 21 Dec 2018 16:20:58 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:21:00 GMT
CMD ["memcached"]
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
	-	`sha256:cb0b33277048908b495d9109b1ec8d787409070f13ef4110a5ded6d8d31998e9`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b6671d1a817cc13d4e58707e09cec1076be22b8fcbe05209992c2e7eaea5fe`  
		Last Modified: Fri, 21 Dec 2018 16:21:21 GMT  
		Size: 2.6 MB (2606424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e81627eb484b59ada0b636f97e7454990f78b7d7d37997a83282b0d27015c`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42491c5f714923ec3f68fc2ccdfdf144531dfe248a0f1ba560b7dbb2d88a901`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7a6b98150b52247e16f2f1b45b717433e3a468f99e74ffd1bae1115c69f5d6e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4682523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053fc4c34155eb91acb59c2894942bba9aaab2f76656fd83cc9174cbe7063dda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:32:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:32:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:32:53 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:39:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:39:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:39:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:39:43 GMT
USER memcache
# Fri, 21 Dec 2018 13:39:43 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:39:44 GMT
CMD ["memcached"]
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
	-	`sha256:c5d9ea463f8255e725dc8e44c025a925a48525b2506d96ed24138a698276346a`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5753e99fdbdb95574ab61823161276fb48ac396a4e8d8e9ad56fb3af4dbbb`  
		Last Modified: Fri, 21 Dec 2018 13:40:13 GMT  
		Size: 2.6 MB (2580848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581271561dd24bde1f28931a4adfaa546b784532c91e51e99744c8c2c359dca`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ba3d3fa040ac1898bbf0dbfe5251a3dad9857ab9781ecf72e6ba3d9496e271`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; 386

```console
$ docker pull memcached@sha256:7d1ef1ad8e3c13a5515d7f9086985e04ed7ca414e90d66afd45c8bb5a1c08fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a63ff2a510d1d0a32e62b021bed7b0d9b327d6e8bbc97a1cdae919bbfd0597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:53:03 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:58:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:58:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:58:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:58:34 GMT
USER memcache
# Fri, 21 Dec 2018 16:58:34 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:58:34 GMT
CMD ["memcached"]
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
	-	`sha256:e2e6fb32e451ac034e6fc8e065b94d8144d123fa436c168e16ec7e8c0f48e6fa`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b45c82baac8ae65bd87275e8a490a0c8c3c84879f197b4c3aafaa58ae9d3e`  
		Last Modified: Fri, 21 Dec 2018 16:58:54 GMT  
		Size: 2.8 MB (2780295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854467733cbaa5056c8c49c91e633ab1fa2e0c34bd64446b61902f8420b0cd6`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986b72875882a5369775ba8230aa2609f3f97d4ab1f7df9f8e48fe145fa35d11`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:6682ab9f5bc18fcac48568aed5377abb2c81c7253cf20166b68f51c87b0518f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4843431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d8a4ec99abf34af76a5aa3d8373a0f756801726b24bb99133af2af045e7de9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:20 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 10:32:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 10:32:28 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 10:38:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 10:38:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:38:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 10:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:38:21 GMT
USER memcache
# Fri, 21 Dec 2018 10:38:23 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 10:38:28 GMT
CMD ["memcached"]
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
	-	`sha256:4d1ef36227bc1a9dba7367bf62378d2cb317891cb2677fa66dff38dacf4c2d62`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58be10c00d9911d6ce694ed01bdb12dea5d4840d884d8d5a9d024e38453912f5`  
		Last Modified: Fri, 21 Dec 2018 10:38:49 GMT  
		Size: 2.6 MB (2646786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178455f3540ba3edc5891b49728c32355513a6a1a7eae2f77af9bd48ea721f27`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf51af2c22b5b2070b5f0731ef608f63dac534f43da4a47f9229d9dc189a067`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:db76e14cf3de219442a79b94333a516168bcb0f52dacf975543422617933eb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccebf5d97fb5780e4bb8c0a8201f701ad67043ef78aed7449ca16f6b6d9a4a4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:04:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:08:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:08:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:08:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:08:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:08:16 GMT
USER memcache
# Fri, 21 Dec 2018 13:08:17 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:08:17 GMT
CMD ["memcached"]
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
	-	`sha256:88831169d3099f9141e097dafd8c949cc7df7dd850f1225ae082546862176938`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c27b4fa6cdab6820853d18b84fe102481ab8b7416adac13a087ce9e2f56dbc4`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 2.6 MB (2635272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac0165ebebe312aa00b8ea626a40e54fcb0b85ece71f9426cce38f9bc1340a`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b7bbda5e2a79c1d8b2bc5955e9f03ae30c495f681ac6abab56b3c46193b93`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:f79c0a7448b57ec2a189986d8d1baa4afea67a1f2c690eca953ff2cf367b47b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:29515e4d32ae62ab951c56a2a5f2a497625003967d90ade820d4e94163e73ff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdbc7fa85a05f664c0c5874cc07a919357800f00ee569dd70790d737a0c730c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:05:59 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 30 Jan 2019 23:12:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 30 Jan 2019 23:12:19 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 30 Jan 2019 23:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 30 Jan 2019 23:12:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 23:12:21 GMT
USER memcache
# Wed, 30 Jan 2019 23:12:21 GMT
EXPOSE 11211
# Wed, 30 Jan 2019 23:12:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0266107acd9155ebdb6a794c7fdfaee3e2fc84e0a175ce70fc7977e3ee32cc62`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29c72c00ec996d88957eb44d41cd8fc3d8ad6b70bbdb065a80497e4f9d1bb81`  
		Last Modified: Wed, 30 Jan 2019 23:12:43 GMT  
		Size: 2.7 MB (2710132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b52f7cb207d3059961533330d0b3bd8b4dd74ebb85f3035c4b8d65fc878a85`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d71fd5a34bd774e82c40d7be1d525f4ba24fe4eb11bfc315911b3129514a73`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:eb91ddac9678fea9539184c7206eaff4b69a6b1c2836047ee12c3c007b19ae11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4754069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d02ef1aa89e33c2134cd40ea182788da264a143aeab1978b881af104302f65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:49:55 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 15:49:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 15:49:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:20:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:20:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:20:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:20:57 GMT
USER memcache
# Fri, 21 Dec 2018 16:20:58 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:21:00 GMT
CMD ["memcached"]
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
	-	`sha256:cb0b33277048908b495d9109b1ec8d787409070f13ef4110a5ded6d8d31998e9`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b6671d1a817cc13d4e58707e09cec1076be22b8fcbe05209992c2e7eaea5fe`  
		Last Modified: Fri, 21 Dec 2018 16:21:21 GMT  
		Size: 2.6 MB (2606424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e81627eb484b59ada0b636f97e7454990f78b7d7d37997a83282b0d27015c`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42491c5f714923ec3f68fc2ccdfdf144531dfe248a0f1ba560b7dbb2d88a901`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7a6b98150b52247e16f2f1b45b717433e3a468f99e74ffd1bae1115c69f5d6e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4682523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053fc4c34155eb91acb59c2894942bba9aaab2f76656fd83cc9174cbe7063dda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:32:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:32:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:32:53 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:39:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:39:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:39:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:39:43 GMT
USER memcache
# Fri, 21 Dec 2018 13:39:43 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:39:44 GMT
CMD ["memcached"]
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
	-	`sha256:c5d9ea463f8255e725dc8e44c025a925a48525b2506d96ed24138a698276346a`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5753e99fdbdb95574ab61823161276fb48ac396a4e8d8e9ad56fb3af4dbbb`  
		Last Modified: Fri, 21 Dec 2018 13:40:13 GMT  
		Size: 2.6 MB (2580848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581271561dd24bde1f28931a4adfaa546b784532c91e51e99744c8c2c359dca`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ba3d3fa040ac1898bbf0dbfe5251a3dad9857ab9781ecf72e6ba3d9496e271`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:7d1ef1ad8e3c13a5515d7f9086985e04ed7ca414e90d66afd45c8bb5a1c08fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a63ff2a510d1d0a32e62b021bed7b0d9b327d6e8bbc97a1cdae919bbfd0597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:53:03 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:58:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:58:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:58:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:58:34 GMT
USER memcache
# Fri, 21 Dec 2018 16:58:34 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:58:34 GMT
CMD ["memcached"]
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
	-	`sha256:e2e6fb32e451ac034e6fc8e065b94d8144d123fa436c168e16ec7e8c0f48e6fa`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b45c82baac8ae65bd87275e8a490a0c8c3c84879f197b4c3aafaa58ae9d3e`  
		Last Modified: Fri, 21 Dec 2018 16:58:54 GMT  
		Size: 2.8 MB (2780295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854467733cbaa5056c8c49c91e633ab1fa2e0c34bd64446b61902f8420b0cd6`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986b72875882a5369775ba8230aa2609f3f97d4ab1f7df9f8e48fe145fa35d11`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:6682ab9f5bc18fcac48568aed5377abb2c81c7253cf20166b68f51c87b0518f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4843431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d8a4ec99abf34af76a5aa3d8373a0f756801726b24bb99133af2af045e7de9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:20 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 10:32:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 10:32:28 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 10:38:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 10:38:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:38:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 10:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:38:21 GMT
USER memcache
# Fri, 21 Dec 2018 10:38:23 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 10:38:28 GMT
CMD ["memcached"]
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
	-	`sha256:4d1ef36227bc1a9dba7367bf62378d2cb317891cb2677fa66dff38dacf4c2d62`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58be10c00d9911d6ce694ed01bdb12dea5d4840d884d8d5a9d024e38453912f5`  
		Last Modified: Fri, 21 Dec 2018 10:38:49 GMT  
		Size: 2.6 MB (2646786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178455f3540ba3edc5891b49728c32355513a6a1a7eae2f77af9bd48ea721f27`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf51af2c22b5b2070b5f0731ef608f63dac534f43da4a47f9229d9dc189a067`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:db76e14cf3de219442a79b94333a516168bcb0f52dacf975543422617933eb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccebf5d97fb5780e4bb8c0a8201f701ad67043ef78aed7449ca16f6b6d9a4a4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:04:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:08:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:08:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:08:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:08:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:08:16 GMT
USER memcache
# Fri, 21 Dec 2018 13:08:17 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:08:17 GMT
CMD ["memcached"]
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
	-	`sha256:88831169d3099f9141e097dafd8c949cc7df7dd850f1225ae082546862176938`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c27b4fa6cdab6820853d18b84fe102481ab8b7416adac13a087ce9e2f56dbc4`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 2.6 MB (2635272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac0165ebebe312aa00b8ea626a40e54fcb0b85ece71f9426cce38f9bc1340a`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b7bbda5e2a79c1d8b2bc5955e9f03ae30c495f681ac6abab56b3c46193b93`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:f79c0a7448b57ec2a189986d8d1baa4afea67a1f2c690eca953ff2cf367b47b8
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
$ docker pull memcached@sha256:29515e4d32ae62ab951c56a2a5f2a497625003967d90ade820d4e94163e73ff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdbc7fa85a05f664c0c5874cc07a919357800f00ee569dd70790d737a0c730c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:05:59 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 30 Jan 2019 23:12:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 30 Jan 2019 23:12:19 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 30 Jan 2019 23:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 30 Jan 2019 23:12:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 23:12:21 GMT
USER memcache
# Wed, 30 Jan 2019 23:12:21 GMT
EXPOSE 11211
# Wed, 30 Jan 2019 23:12:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0266107acd9155ebdb6a794c7fdfaee3e2fc84e0a175ce70fc7977e3ee32cc62`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29c72c00ec996d88957eb44d41cd8fc3d8ad6b70bbdb065a80497e4f9d1bb81`  
		Last Modified: Wed, 30 Jan 2019 23:12:43 GMT  
		Size: 2.7 MB (2710132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b52f7cb207d3059961533330d0b3bd8b4dd74ebb85f3035c4b8d65fc878a85`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d71fd5a34bd774e82c40d7be1d525f4ba24fe4eb11bfc315911b3129514a73`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:eb91ddac9678fea9539184c7206eaff4b69a6b1c2836047ee12c3c007b19ae11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4754069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d02ef1aa89e33c2134cd40ea182788da264a143aeab1978b881af104302f65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:49:55 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 15:49:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 15:49:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:20:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:20:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:20:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:20:57 GMT
USER memcache
# Fri, 21 Dec 2018 16:20:58 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:21:00 GMT
CMD ["memcached"]
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
	-	`sha256:cb0b33277048908b495d9109b1ec8d787409070f13ef4110a5ded6d8d31998e9`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b6671d1a817cc13d4e58707e09cec1076be22b8fcbe05209992c2e7eaea5fe`  
		Last Modified: Fri, 21 Dec 2018 16:21:21 GMT  
		Size: 2.6 MB (2606424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e81627eb484b59ada0b636f97e7454990f78b7d7d37997a83282b0d27015c`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42491c5f714923ec3f68fc2ccdfdf144531dfe248a0f1ba560b7dbb2d88a901`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7a6b98150b52247e16f2f1b45b717433e3a468f99e74ffd1bae1115c69f5d6e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4682523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053fc4c34155eb91acb59c2894942bba9aaab2f76656fd83cc9174cbe7063dda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:32:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:32:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:32:53 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:39:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:39:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:39:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:39:43 GMT
USER memcache
# Fri, 21 Dec 2018 13:39:43 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:39:44 GMT
CMD ["memcached"]
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
	-	`sha256:c5d9ea463f8255e725dc8e44c025a925a48525b2506d96ed24138a698276346a`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5753e99fdbdb95574ab61823161276fb48ac396a4e8d8e9ad56fb3af4dbbb`  
		Last Modified: Fri, 21 Dec 2018 13:40:13 GMT  
		Size: 2.6 MB (2580848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581271561dd24bde1f28931a4adfaa546b784532c91e51e99744c8c2c359dca`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ba3d3fa040ac1898bbf0dbfe5251a3dad9857ab9781ecf72e6ba3d9496e271`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:7d1ef1ad8e3c13a5515d7f9086985e04ed7ca414e90d66afd45c8bb5a1c08fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a63ff2a510d1d0a32e62b021bed7b0d9b327d6e8bbc97a1cdae919bbfd0597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:53:03 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:58:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:58:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:58:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:58:34 GMT
USER memcache
# Fri, 21 Dec 2018 16:58:34 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:58:34 GMT
CMD ["memcached"]
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
	-	`sha256:e2e6fb32e451ac034e6fc8e065b94d8144d123fa436c168e16ec7e8c0f48e6fa`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b45c82baac8ae65bd87275e8a490a0c8c3c84879f197b4c3aafaa58ae9d3e`  
		Last Modified: Fri, 21 Dec 2018 16:58:54 GMT  
		Size: 2.8 MB (2780295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854467733cbaa5056c8c49c91e633ab1fa2e0c34bd64446b61902f8420b0cd6`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986b72875882a5369775ba8230aa2609f3f97d4ab1f7df9f8e48fe145fa35d11`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:6682ab9f5bc18fcac48568aed5377abb2c81c7253cf20166b68f51c87b0518f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4843431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d8a4ec99abf34af76a5aa3d8373a0f756801726b24bb99133af2af045e7de9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:20 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 10:32:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 10:32:28 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 10:38:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 10:38:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:38:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 10:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:38:21 GMT
USER memcache
# Fri, 21 Dec 2018 10:38:23 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 10:38:28 GMT
CMD ["memcached"]
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
	-	`sha256:4d1ef36227bc1a9dba7367bf62378d2cb317891cb2677fa66dff38dacf4c2d62`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58be10c00d9911d6ce694ed01bdb12dea5d4840d884d8d5a9d024e38453912f5`  
		Last Modified: Fri, 21 Dec 2018 10:38:49 GMT  
		Size: 2.6 MB (2646786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178455f3540ba3edc5891b49728c32355513a6a1a7eae2f77af9bd48ea721f27`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf51af2c22b5b2070b5f0731ef608f63dac534f43da4a47f9229d9dc189a067`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:db76e14cf3de219442a79b94333a516168bcb0f52dacf975543422617933eb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccebf5d97fb5780e4bb8c0a8201f701ad67043ef78aed7449ca16f6b6d9a4a4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:04:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:08:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:08:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:08:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:08:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:08:16 GMT
USER memcache
# Fri, 21 Dec 2018 13:08:17 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:08:17 GMT
CMD ["memcached"]
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
	-	`sha256:88831169d3099f9141e097dafd8c949cc7df7dd850f1225ae082546862176938`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c27b4fa6cdab6820853d18b84fe102481ab8b7416adac13a087ce9e2f56dbc4`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 2.6 MB (2635272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac0165ebebe312aa00b8ea626a40e54fcb0b85ece71f9426cce38f9bc1340a`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b7bbda5e2a79c1d8b2bc5955e9f03ae30c495f681ac6abab56b3c46193b93`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:f79c0a7448b57ec2a189986d8d1baa4afea67a1f2c690eca953ff2cf367b47b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:29515e4d32ae62ab951c56a2a5f2a497625003967d90ade820d4e94163e73ff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdbc7fa85a05f664c0c5874cc07a919357800f00ee569dd70790d737a0c730c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:05:59 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 30 Jan 2019 23:06:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 30 Jan 2019 23:12:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 30 Jan 2019 23:12:19 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 30 Jan 2019 23:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 30 Jan 2019 23:12:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Jan 2019 23:12:21 GMT
USER memcache
# Wed, 30 Jan 2019 23:12:21 GMT
EXPOSE 11211
# Wed, 30 Jan 2019 23:12:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0266107acd9155ebdb6a794c7fdfaee3e2fc84e0a175ce70fc7977e3ee32cc62`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29c72c00ec996d88957eb44d41cd8fc3d8ad6b70bbdb065a80497e4f9d1bb81`  
		Last Modified: Wed, 30 Jan 2019 23:12:43 GMT  
		Size: 2.7 MB (2710132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b52f7cb207d3059961533330d0b3bd8b4dd74ebb85f3035c4b8d65fc878a85`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d71fd5a34bd774e82c40d7be1d525f4ba24fe4eb11bfc315911b3129514a73`  
		Last Modified: Wed, 30 Jan 2019 23:12:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:eb91ddac9678fea9539184c7206eaff4b69a6b1c2836047ee12c3c007b19ae11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4754069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d02ef1aa89e33c2134cd40ea182788da264a143aeab1978b881af104302f65`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:49:55 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 15:49:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 15:49:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:20:41 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:20:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:20:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:20:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:20:57 GMT
USER memcache
# Fri, 21 Dec 2018 16:20:58 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:21:00 GMT
CMD ["memcached"]
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
	-	`sha256:cb0b33277048908b495d9109b1ec8d787409070f13ef4110a5ded6d8d31998e9`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b6671d1a817cc13d4e58707e09cec1076be22b8fcbe05209992c2e7eaea5fe`  
		Last Modified: Fri, 21 Dec 2018 16:21:21 GMT  
		Size: 2.6 MB (2606424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e81627eb484b59ada0b636f97e7454990f78b7d7d37997a83282b0d27015c`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42491c5f714923ec3f68fc2ccdfdf144531dfe248a0f1ba560b7dbb2d88a901`  
		Last Modified: Fri, 21 Dec 2018 16:21:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7a6b98150b52247e16f2f1b45b717433e3a468f99e74ffd1bae1115c69f5d6e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4682523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053fc4c34155eb91acb59c2894942bba9aaab2f76656fd83cc9174cbe7063dda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:32:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:32:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:32:53 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:39:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:39:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:39:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:39:43 GMT
USER memcache
# Fri, 21 Dec 2018 13:39:43 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:39:44 GMT
CMD ["memcached"]
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
	-	`sha256:c5d9ea463f8255e725dc8e44c025a925a48525b2506d96ed24138a698276346a`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5753e99fdbdb95574ab61823161276fb48ac396a4e8d8e9ad56fb3af4dbbb`  
		Last Modified: Fri, 21 Dec 2018 13:40:13 GMT  
		Size: 2.6 MB (2580848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581271561dd24bde1f28931a4adfaa546b784532c91e51e99744c8c2c359dca`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ba3d3fa040ac1898bbf0dbfe5251a3dad9857ab9781ecf72e6ba3d9496e271`  
		Last Modified: Fri, 21 Dec 2018 13:40:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:7d1ef1ad8e3c13a5515d7f9086985e04ed7ca414e90d66afd45c8bb5a1c08fa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5053692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a63ff2a510d1d0a32e62b021bed7b0d9b327d6e8bbc97a1cdae919bbfd0597`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 16:53:03 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 16:53:03 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 16:58:33 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 16:58:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 16:58:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 16:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:58:34 GMT
USER memcache
# Fri, 21 Dec 2018 16:58:34 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 16:58:34 GMT
CMD ["memcached"]
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
	-	`sha256:e2e6fb32e451ac034e6fc8e065b94d8144d123fa436c168e16ec7e8c0f48e6fa`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b45c82baac8ae65bd87275e8a490a0c8c3c84879f197b4c3aafaa58ae9d3e`  
		Last Modified: Fri, 21 Dec 2018 16:58:54 GMT  
		Size: 2.8 MB (2780295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8854467733cbaa5056c8c49c91e633ab1fa2e0c34bd64446b61902f8420b0cd6`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986b72875882a5369775ba8230aa2609f3f97d4ab1f7df9f8e48fe145fa35d11`  
		Last Modified: Fri, 21 Dec 2018 16:58:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:6682ab9f5bc18fcac48568aed5377abb2c81c7253cf20166b68f51c87b0518f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4843431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d8a4ec99abf34af76a5aa3d8373a0f756801726b24bb99133af2af045e7de9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:20 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 10:32:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 10:32:28 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 10:38:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 10:38:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:38:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 10:38:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:38:21 GMT
USER memcache
# Fri, 21 Dec 2018 10:38:23 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 10:38:28 GMT
CMD ["memcached"]
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
	-	`sha256:4d1ef36227bc1a9dba7367bf62378d2cb317891cb2677fa66dff38dacf4c2d62`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58be10c00d9911d6ce694ed01bdb12dea5d4840d884d8d5a9d024e38453912f5`  
		Last Modified: Fri, 21 Dec 2018 10:38:49 GMT  
		Size: 2.6 MB (2646786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178455f3540ba3edc5891b49728c32355513a6a1a7eae2f77af9bd48ea721f27`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf51af2c22b5b2070b5f0731ef608f63dac534f43da4a47f9229d9dc189a067`  
		Last Modified: Fri, 21 Dec 2018 10:38:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:db76e14cf3de219442a79b94333a516168bcb0f52dacf975543422617933eb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccebf5d97fb5780e4bb8c0a8201f701ad67043ef78aed7449ca16f6b6d9a4a4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:04:51 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 21 Dec 2018 13:04:51 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 21 Dec 2018 13:08:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 21 Dec 2018 13:08:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:08:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 21 Dec 2018 13:08:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:08:16 GMT
USER memcache
# Fri, 21 Dec 2018 13:08:17 GMT
EXPOSE 11211
# Fri, 21 Dec 2018 13:08:17 GMT
CMD ["memcached"]
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
	-	`sha256:88831169d3099f9141e097dafd8c949cc7df7dd850f1225ae082546862176938`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c27b4fa6cdab6820853d18b84fe102481ab8b7416adac13a087ce9e2f56dbc4`  
		Last Modified: Fri, 21 Dec 2018 13:08:32 GMT  
		Size: 2.6 MB (2635272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac0165ebebe312aa00b8ea626a40e54fcb0b85ece71f9426cce38f9bc1340a`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b7bbda5e2a79c1d8b2bc5955e9f03ae30c495f681ac6abab56b3c46193b93`  
		Last Modified: Fri, 21 Dec 2018 13:08:31 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:198e14033adbf26443359ba0dda2b6a7e9032be13680c574b5cf0d3ef0c3d319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:11b7ed8f8cbcfb847c191250483d56bb184193b158ad38221d156ce17de91e4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23549956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275c83a0c04a7d9a88b404db45a70170d6d51bd870f10b75b4cabee937cf2e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:30:25 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 01:30:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 01:36:10 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 01:36:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 01:36:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 01:36:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 01:36:11 GMT
USER memcache
# Wed, 23 Jan 2019 01:36:11 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 01:36:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f7235fb283827ccf42629ec6cf697c427917abde32f718782f28352ad441b0`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcec290b59f232ca6978ba7df1eeb3dbc68ffe1f552c73c12c753786f317d36`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 1.0 MB (1043850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17263af88fec7980dd6cc6d114af883d8bdae1594ca65fb9c149a9f8f98cb2e4`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e086617e213a5b252a2c3f4975aa1119eac9013198c0bff2f5af59058a4dcb`  
		Last Modified: Wed, 23 Jan 2019 01:36:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:9f9e3a73de4605fa8cefe450e61cf577bb8ad446d4c5ca2872c4e44be2093c8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22211408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1d113acbca9f96fbeddb6711bfd0b960748c1c7f242f10d4ee4ac226f6a790`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 16:34:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 16:34:55 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 16:34:56 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 17:09:36 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 17:09:39 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 17:09:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 17:09:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 17:09:52 GMT
USER memcache
# Mon, 28 Jan 2019 17:09:53 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 17:09:55 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506eb7788d5eea0be87f6ea8e14817841007a51bc5e9310882192f87f7a27e48`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9def334daac3a71066a93aa1268f2c82f96b94e7afdee0d5193b87692daef12`  
		Last Modified: Mon, 28 Jan 2019 17:10:17 GMT  
		Size: 1.0 MB (1024262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6608c65babd0c0243affb01d91ad36fbfa64afa8f485665bfd9575034b729bd1`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631e33e599ad8ed8d31e1affe96c11e23f9c4544efcfa844d9a0c9f98c829abb`  
		Last Modified: Mon, 28 Jan 2019 17:10:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:c89f2363a8987f8adf1c0caca8aab15e96b40db3fed22f3a2962bfcd2a1c3dec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20287172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87dfb3952133e20272a000719f2a681335212ea3ece9117c833f4bad261540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 17:12:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 17:12:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 17:12:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 18:02:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 18:02:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 18:02:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 18:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 18:02:57 GMT
USER memcache
# Mon, 28 Jan 2019 18:02:58 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 18:03:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf4139c2f6d3f3328a65b8ffe3e9e699e5bd523336ca5319e55792ff0bdb0a0`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eed201e140a3dd8942d1ca60cec4d04418885ba469eea23af0908b20cf8bf23`  
		Last Modified: Mon, 28 Jan 2019 18:03:16 GMT  
		Size: 991.6 KB (991568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca90e0e503fbd60b79681765e2ceff80d7bcc20bf9bfa8cf653a2de41723a7e`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9632129b4d5a59fb376f918871d6484f426deb68699392d47ac51b87961845d`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a079fda09adee8374dad3fa0169682c2eb44e4e835f4fba721ac6de0020106fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51cf03641f56de9130ebcae810d5a2ce02493b9017ed64c30382de0357467a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:12:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 25 Jan 2019 03:12:16 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 25 Jan 2019 03:12:18 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 25 Jan 2019 03:21:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 25 Jan 2019 03:21:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 25 Jan 2019 03:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 25 Jan 2019 03:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 03:21:57 GMT
USER memcache
# Fri, 25 Jan 2019 03:21:59 GMT
EXPOSE 11211
# Fri, 25 Jan 2019 03:22:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4fb986c20548a98b868a028c9cea5acfcdcc5fcc4d8776dee58fc52375fef4`  
		Last Modified: Fri, 25 Jan 2019 03:22:41 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb3c1a7a428bcd3cc4552e97786dc11eee69b7be13355f7f5bbda23d2a84901`  
		Last Modified: Fri, 25 Jan 2019 03:22:42 GMT  
		Size: 1.0 MB (1005870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef50abf937124651f7e336d0106b13edbe4f01acf776ee07528f09547831b73d`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02274e6f84b7507aedba4aa72c7330eece019583b746f2e7be40b85620931c1`  
		Last Modified: Fri, 25 Jan 2019 03:22:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:1d57318e7814d961bd9f94456e60d070da46814732f21b285e60367ababde7db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24191040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411446efdd49112287fece822dcd501d379807cbde70c3d8735eb6941b87533c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:27:38 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 29 Dec 2018 17:27:38 GMT
ENV MEMCACHED_VERSION=1.5.12
# Sat, 29 Dec 2018 17:27:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Sat, 29 Dec 2018 17:34:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 29 Dec 2018 17:34:20 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Sat, 29 Dec 2018 17:34:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 17:34:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:34:21 GMT
USER memcache
# Sat, 29 Dec 2018 17:34:22 GMT
EXPOSE 11211
# Sat, 29 Dec 2018 17:34:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0895293165849b86dbe423d18a6763a901e2639204503153c2a631c87e9bc`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338d728b6206ec4180b4219bdaf4b1f3bf086b1ecfa4b836c36b469cf0327206`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 1.1 MB (1052567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62a84b2287b8cb371cab841086ab9ed5d496e60de1e94d04e3c305c21a1cf36`  
		Last Modified: Sat, 29 Dec 2018 17:34:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbd9e4078557cf3494520a7b2af9ef144f504a3c1d728c8776b99f9c67f9132`  
		Last Modified: Sat, 29 Dec 2018 17:34:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:e38c159c891681de438b08e14a5feda0dc1685c7f6774394a4f0b8fae0eeabc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23797604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5196024f4b7b4e60a6c39fb97f150975458837bfb7e2fac0c57c487fcfbfe7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:43:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 11:43:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 11:43:50 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 11:51:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 11:51:03 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:51:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 11:51:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:51:13 GMT
USER memcache
# Wed, 23 Jan 2019 11:51:15 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 11:51:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65743f2daa5206740f44ffe3d70be04dcf077335f7ac811947c781baf0f1ee43`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 5.0 KB (4985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e950083ed702683b38b532d0f077d4de744bb46087f94e0df31b586a4c700`  
		Last Modified: Wed, 23 Jan 2019 11:51:43 GMT  
		Size: 1.0 MB (1036871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cd7e9aacb04f421bf79fd6caf054c9b415beba92db03062c2185859a58614e`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2560b5b55c53bdb7332e80aff6b1ef90be7b284bde942973463a8565bd36775`  
		Last Modified: Wed, 23 Jan 2019 11:51:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:3d4d60333a6588c8273614f9bccb2359a0a46d84efb1e15dc6c602ea573371e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23359329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7782ca15fff791d3ed88b1f6b638bccccf5a5ddbd0bdfba7a859a6ccc332fa0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:39:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 13:43:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 13:43:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:43:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:43:05 GMT
USER memcache
# Wed, 23 Jan 2019 13:43:05 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 13:43:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b3acc0e289436055068c9029526ee20a2149e4206c6953ba91775de6df1c9`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90c485b822550b6178c70e5f06e6c95e67d3ab82b2512895b3b4c8e6ba99ad`  
		Last Modified: Wed, 23 Jan 2019 13:43:27 GMT  
		Size: 1000.4 KB (1000386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63aba902596bee477d8200ea63cff2dfd3303bdab96bd54649ed6e553b4895b`  
		Last Modified: Wed, 23 Jan 2019 13:43:28 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f94823374f3ae514756dac7775f52e32ddc5c686dc10e543684570f29558c7b`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

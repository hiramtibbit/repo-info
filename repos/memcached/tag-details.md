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
$ docker pull memcached@sha256:41f119ba0851f6d8f144d8d065fe59fe7c981999ef9f7f12398cd869bd2aa001
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
$ docker pull memcached@sha256:8b39743e07afb751741e37be018a45ca391ea16dfa93d3d73b8f75b7c59286cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473e196e2080274385d706ccd7b53e788efcf168ab2126ae6e3310552c118a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 26 Mar 2019 23:53:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Mar 2019 23:53:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:53:41 GMT
USER memcache
# Tue, 26 Mar 2019 23:53:41 GMT
EXPOSE 11211
# Tue, 26 Mar 2019 23:53:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1cad2d74da92dfd9857ae9733b990222920c3b6279bd07b1c59eb3772d9862`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 1.0 MB (1043904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9cf4bc653a6604e800b019d0a825b4ada3bf7f7aaa4f6ba3c5ce102c19ae24`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f50c186b1d45914f5f64e33a938d194a340e905c4bc023a5c0687dc35bb3289`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:13c0044c6201c8e8247fa77481f05995988b7225abe564dfc5172cbb0ac6d659
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22190203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d17252efbe67f60eba0f5b45d163e3200f6e7187e47e631e193d0943bb3dcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 27 Mar 2019 09:16:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 27 Mar 2019 09:17:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 27 Mar 2019 10:12:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Mar 2019 10:12:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:13:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Mar 2019 10:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:13:08 GMT
USER memcache
# Wed, 27 Mar 2019 10:13:10 GMT
EXPOSE 11211
# Wed, 27 Mar 2019 10:13:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4e2e29320fb441fc0d623f7db44d27b17c0520e394f9ecb4dfe826fcf35f7`  
		Last Modified: Wed, 27 Mar 2019 10:13:26 GMT  
		Size: 1.0 MB (1024224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3d1d7aa3c2a4795c87ec7495620255a548a4d91221930bb14cf0e50f8f6e0`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1950c8c85a8e4092ed5e36462856c882b6dee09d4992914ac80479ca178c61`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5046d18040ea9aa6d623907031f647533de696457f2820220d4f5b57d3edd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20279398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6198901ecdf972190c7905b801664a48b3cbe8f63725d5a69cfb1d69645f1ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 12:02:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 12 Mar 2019 12:02:45 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 12 Mar 2019 12:02:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Thu, 14 Mar 2019 12:15:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 14 Mar 2019 12:15:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 14 Mar 2019 12:15:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 14 Mar 2019 12:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Mar 2019 12:15:24 GMT
USER memcache
# Thu, 14 Mar 2019 12:15:25 GMT
EXPOSE 11211
# Thu, 14 Mar 2019 12:15:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d7ea45298a4bc835e9bf7017b31d3a74418b80645ae75b68aca008928bb851`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4ddf1799dcdb859fdb2d756e8cb87abf3f0dcb810ba0b6ea5de60de8077c2`  
		Last Modified: Thu, 14 Mar 2019 13:02:40 GMT  
		Size: 991.6 KB (991583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fc2149a9a095e66da4a685674151555f15f3870e7b4f5da77766fdfc1e93e3`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55a837f894e586b859e8b1247c4b158f553c5a298875554067d0184ca799991`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:15790a1eaff6385805dcd825c6d39fbb9057589712891fdacdfb4f995cf0b1f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030e6cf69e72c13b096283f8979702cddb73a0ee12d78173a457297874e41986`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:40:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 11:40:48 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:50:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 11:54:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:54:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:54:08 GMT
USER memcache
# Wed, 06 Feb 2019 11:54:09 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:54:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b50cdf427d90954f4d264cd8fe97eda0110ed50c5d495c39e88d9dc7aba1bc`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8f9209a8e79789132bb21f781211ef126776eb5a3243b89cb319fb6a275df`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 1.0 MB (1006089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb7e862f4a569e52ab9d19050bd0bb671d3e92a1d7f333ec0e555b3fddff783`  
		Last Modified: Wed, 06 Feb 2019 12:01:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327112eab309118e75258c9d5a68a10690eeec80e4548d235dfd61e340baed0a`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:b6cdc4ead6b5f6fbe3296dc4e6c381d086fa06166ebae76f22a3b12e8e241aee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24183482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b97f306766831636b51448b98ec130315f82f9e03898f4f57fceec75e7b212a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:33:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 17:39:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 17:39:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 17:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:39:39 GMT
USER memcache
# Tue, 05 Mar 2019 17:39:39 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 17:39:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f66cf7adca2161f31bd91988bba052590b915d36fc63fa5bc9a99b5f0322f8a`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d176018a1a810040dbdb057e64424a90529999dea9464a84855e600de82dcd`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 1.1 MB (1052481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85735945967c485d04dd360bf3712fe55f2b9ec574ce1531713d93df64356ee`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ab490dfca786a60f4fdbf049600fc3482e2a0a05cf921428da3668f1e786e7`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:9b88fe38e26caa2b43f945efa65a3c412eaac388c89fbbd66b46c25b79b04cbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23793663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9094b4ec1972240f1afd8c793a01d203fa84038384d34b40c27234f141f0addf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:29:58 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 13:30:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 13:30:02 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 13:37:00 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 13:37:01 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 13:37:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 13:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 13:37:15 GMT
USER memcache
# Tue, 05 Mar 2019 13:37:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 13:37:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e7694836cbca448a2b880d9f3684c7e0820a2c1a7f1f4cabb467f2a3b1f74f`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b3994f5883a347d102aafd00e085bf39efc832ca7bb9e808643f66c178ce0e`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 1.0 MB (1036765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacec40dcf86177e66e7b187bd4bfd7c3b3307898cefdcfe7ae5893e854ebddd`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b59f2551eb3683ea0e1b729994a8e1a81b5fda15980920f42327f90c23abeed`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:b428d9742eb271414ef94e64bc323cc18a79cc220bc2bc2fd924de6502b9a10d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23351180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f204c9273d661bbadcee1e3a6da281d22ee05476ef8bf31c6b4c157c3d401ee7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:22:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 15:26:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 15:26:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 15:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:26:16 GMT
USER memcache
# Tue, 05 Mar 2019 15:26:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 15:26:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1236998060878732372ea92a2b455aa6062e653e065e53fe888aff5cd2ac6e`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08759a83df1ffaed73fadbfd68d9e12c783046065066ee263b8f36743c6f3c2b`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 1000.4 KB (1000350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff8b16f6c4ec2d57e91b1b7cdc0cb4b0f95e16553a1bfa3814d1eeab2d3a2e8`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c70000b81a3041d636298585de2b9dbf0f699b63545a9a2b307b30df9828a85`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:41f119ba0851f6d8f144d8d065fe59fe7c981999ef9f7f12398cd869bd2aa001
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
$ docker pull memcached@sha256:8b39743e07afb751741e37be018a45ca391ea16dfa93d3d73b8f75b7c59286cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473e196e2080274385d706ccd7b53e788efcf168ab2126ae6e3310552c118a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 26 Mar 2019 23:53:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Mar 2019 23:53:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:53:41 GMT
USER memcache
# Tue, 26 Mar 2019 23:53:41 GMT
EXPOSE 11211
# Tue, 26 Mar 2019 23:53:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1cad2d74da92dfd9857ae9733b990222920c3b6279bd07b1c59eb3772d9862`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 1.0 MB (1043904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9cf4bc653a6604e800b019d0a825b4ada3bf7f7aaa4f6ba3c5ce102c19ae24`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f50c186b1d45914f5f64e33a938d194a340e905c4bc023a5c0687dc35bb3289`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:13c0044c6201c8e8247fa77481f05995988b7225abe564dfc5172cbb0ac6d659
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22190203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d17252efbe67f60eba0f5b45d163e3200f6e7187e47e631e193d0943bb3dcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 27 Mar 2019 09:16:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 27 Mar 2019 09:17:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 27 Mar 2019 10:12:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Mar 2019 10:12:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:13:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Mar 2019 10:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:13:08 GMT
USER memcache
# Wed, 27 Mar 2019 10:13:10 GMT
EXPOSE 11211
# Wed, 27 Mar 2019 10:13:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4e2e29320fb441fc0d623f7db44d27b17c0520e394f9ecb4dfe826fcf35f7`  
		Last Modified: Wed, 27 Mar 2019 10:13:26 GMT  
		Size: 1.0 MB (1024224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3d1d7aa3c2a4795c87ec7495620255a548a4d91221930bb14cf0e50f8f6e0`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1950c8c85a8e4092ed5e36462856c882b6dee09d4992914ac80479ca178c61`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5046d18040ea9aa6d623907031f647533de696457f2820220d4f5b57d3edd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20279398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6198901ecdf972190c7905b801664a48b3cbe8f63725d5a69cfb1d69645f1ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 12:02:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 12 Mar 2019 12:02:45 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 12 Mar 2019 12:02:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Thu, 14 Mar 2019 12:15:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 14 Mar 2019 12:15:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 14 Mar 2019 12:15:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 14 Mar 2019 12:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Mar 2019 12:15:24 GMT
USER memcache
# Thu, 14 Mar 2019 12:15:25 GMT
EXPOSE 11211
# Thu, 14 Mar 2019 12:15:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d7ea45298a4bc835e9bf7017b31d3a74418b80645ae75b68aca008928bb851`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4ddf1799dcdb859fdb2d756e8cb87abf3f0dcb810ba0b6ea5de60de8077c2`  
		Last Modified: Thu, 14 Mar 2019 13:02:40 GMT  
		Size: 991.6 KB (991583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fc2149a9a095e66da4a685674151555f15f3870e7b4f5da77766fdfc1e93e3`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55a837f894e586b859e8b1247c4b158f553c5a298875554067d0184ca799991`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:15790a1eaff6385805dcd825c6d39fbb9057589712891fdacdfb4f995cf0b1f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030e6cf69e72c13b096283f8979702cddb73a0ee12d78173a457297874e41986`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:40:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 11:40:48 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:50:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 11:54:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:54:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:54:08 GMT
USER memcache
# Wed, 06 Feb 2019 11:54:09 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:54:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b50cdf427d90954f4d264cd8fe97eda0110ed50c5d495c39e88d9dc7aba1bc`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8f9209a8e79789132bb21f781211ef126776eb5a3243b89cb319fb6a275df`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 1.0 MB (1006089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb7e862f4a569e52ab9d19050bd0bb671d3e92a1d7f333ec0e555b3fddff783`  
		Last Modified: Wed, 06 Feb 2019 12:01:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327112eab309118e75258c9d5a68a10690eeec80e4548d235dfd61e340baed0a`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:b6cdc4ead6b5f6fbe3296dc4e6c381d086fa06166ebae76f22a3b12e8e241aee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24183482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b97f306766831636b51448b98ec130315f82f9e03898f4f57fceec75e7b212a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:33:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 17:39:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 17:39:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 17:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:39:39 GMT
USER memcache
# Tue, 05 Mar 2019 17:39:39 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 17:39:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f66cf7adca2161f31bd91988bba052590b915d36fc63fa5bc9a99b5f0322f8a`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d176018a1a810040dbdb057e64424a90529999dea9464a84855e600de82dcd`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 1.1 MB (1052481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85735945967c485d04dd360bf3712fe55f2b9ec574ce1531713d93df64356ee`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ab490dfca786a60f4fdbf049600fc3482e2a0a05cf921428da3668f1e786e7`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:9b88fe38e26caa2b43f945efa65a3c412eaac388c89fbbd66b46c25b79b04cbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23793663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9094b4ec1972240f1afd8c793a01d203fa84038384d34b40c27234f141f0addf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:29:58 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 13:30:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 13:30:02 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 13:37:00 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 13:37:01 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 13:37:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 13:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 13:37:15 GMT
USER memcache
# Tue, 05 Mar 2019 13:37:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 13:37:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e7694836cbca448a2b880d9f3684c7e0820a2c1a7f1f4cabb467f2a3b1f74f`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b3994f5883a347d102aafd00e085bf39efc832ca7bb9e808643f66c178ce0e`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 1.0 MB (1036765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacec40dcf86177e66e7b187bd4bfd7c3b3307898cefdcfe7ae5893e854ebddd`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b59f2551eb3683ea0e1b729994a8e1a81b5fda15980920f42327f90c23abeed`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:b428d9742eb271414ef94e64bc323cc18a79cc220bc2bc2fd924de6502b9a10d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23351180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f204c9273d661bbadcee1e3a6da281d22ee05476ef8bf31c6b4c157c3d401ee7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:22:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 15:26:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 15:26:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 15:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:26:16 GMT
USER memcache
# Tue, 05 Mar 2019 15:26:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 15:26:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1236998060878732372ea92a2b455aa6062e653e065e53fe888aff5cd2ac6e`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08759a83df1ffaed73fadbfd68d9e12c783046065066ee263b8f36743c6f3c2b`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 1000.4 KB (1000350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff8b16f6c4ec2d57e91b1b7cdc0cb4b0f95e16553a1bfa3814d1eeab2d3a2e8`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c70000b81a3041d636298585de2b9dbf0f699b63545a9a2b307b30df9828a85`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.12`

```console
$ docker pull memcached@sha256:41f119ba0851f6d8f144d8d065fe59fe7c981999ef9f7f12398cd869bd2aa001
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
$ docker pull memcached@sha256:8b39743e07afb751741e37be018a45ca391ea16dfa93d3d73b8f75b7c59286cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473e196e2080274385d706ccd7b53e788efcf168ab2126ae6e3310552c118a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 26 Mar 2019 23:53:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Mar 2019 23:53:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:53:41 GMT
USER memcache
# Tue, 26 Mar 2019 23:53:41 GMT
EXPOSE 11211
# Tue, 26 Mar 2019 23:53:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1cad2d74da92dfd9857ae9733b990222920c3b6279bd07b1c59eb3772d9862`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 1.0 MB (1043904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9cf4bc653a6604e800b019d0a825b4ada3bf7f7aaa4f6ba3c5ce102c19ae24`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f50c186b1d45914f5f64e33a938d194a340e905c4bc023a5c0687dc35bb3289`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm variant v5

```console
$ docker pull memcached@sha256:13c0044c6201c8e8247fa77481f05995988b7225abe564dfc5172cbb0ac6d659
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22190203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d17252efbe67f60eba0f5b45d163e3200f6e7187e47e631e193d0943bb3dcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 27 Mar 2019 09:16:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 27 Mar 2019 09:17:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 27 Mar 2019 10:12:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Mar 2019 10:12:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:13:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Mar 2019 10:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:13:08 GMT
USER memcache
# Wed, 27 Mar 2019 10:13:10 GMT
EXPOSE 11211
# Wed, 27 Mar 2019 10:13:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4e2e29320fb441fc0d623f7db44d27b17c0520e394f9ecb4dfe826fcf35f7`  
		Last Modified: Wed, 27 Mar 2019 10:13:26 GMT  
		Size: 1.0 MB (1024224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3d1d7aa3c2a4795c87ec7495620255a548a4d91221930bb14cf0e50f8f6e0`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1950c8c85a8e4092ed5e36462856c882b6dee09d4992914ac80479ca178c61`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5046d18040ea9aa6d623907031f647533de696457f2820220d4f5b57d3edd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20279398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6198901ecdf972190c7905b801664a48b3cbe8f63725d5a69cfb1d69645f1ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 12:02:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 12 Mar 2019 12:02:45 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 12 Mar 2019 12:02:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Thu, 14 Mar 2019 12:15:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 14 Mar 2019 12:15:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 14 Mar 2019 12:15:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 14 Mar 2019 12:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Mar 2019 12:15:24 GMT
USER memcache
# Thu, 14 Mar 2019 12:15:25 GMT
EXPOSE 11211
# Thu, 14 Mar 2019 12:15:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d7ea45298a4bc835e9bf7017b31d3a74418b80645ae75b68aca008928bb851`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4ddf1799dcdb859fdb2d756e8cb87abf3f0dcb810ba0b6ea5de60de8077c2`  
		Last Modified: Thu, 14 Mar 2019 13:02:40 GMT  
		Size: 991.6 KB (991583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fc2149a9a095e66da4a685674151555f15f3870e7b4f5da77766fdfc1e93e3`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55a837f894e586b859e8b1247c4b158f553c5a298875554067d0184ca799991`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:15790a1eaff6385805dcd825c6d39fbb9057589712891fdacdfb4f995cf0b1f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030e6cf69e72c13b096283f8979702cddb73a0ee12d78173a457297874e41986`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:40:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 11:40:48 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:50:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 11:54:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:54:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:54:08 GMT
USER memcache
# Wed, 06 Feb 2019 11:54:09 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:54:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b50cdf427d90954f4d264cd8fe97eda0110ed50c5d495c39e88d9dc7aba1bc`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8f9209a8e79789132bb21f781211ef126776eb5a3243b89cb319fb6a275df`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 1.0 MB (1006089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb7e862f4a569e52ab9d19050bd0bb671d3e92a1d7f333ec0e555b3fddff783`  
		Last Modified: Wed, 06 Feb 2019 12:01:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327112eab309118e75258c9d5a68a10690eeec80e4548d235dfd61e340baed0a`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; 386

```console
$ docker pull memcached@sha256:b6cdc4ead6b5f6fbe3296dc4e6c381d086fa06166ebae76f22a3b12e8e241aee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24183482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b97f306766831636b51448b98ec130315f82f9e03898f4f57fceec75e7b212a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:33:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 17:39:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 17:39:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 17:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:39:39 GMT
USER memcache
# Tue, 05 Mar 2019 17:39:39 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 17:39:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f66cf7adca2161f31bd91988bba052590b915d36fc63fa5bc9a99b5f0322f8a`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d176018a1a810040dbdb057e64424a90529999dea9464a84855e600de82dcd`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 1.1 MB (1052481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85735945967c485d04dd360bf3712fe55f2b9ec574ce1531713d93df64356ee`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ab490dfca786a60f4fdbf049600fc3482e2a0a05cf921428da3668f1e786e7`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; ppc64le

```console
$ docker pull memcached@sha256:9b88fe38e26caa2b43f945efa65a3c412eaac388c89fbbd66b46c25b79b04cbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23793663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9094b4ec1972240f1afd8c793a01d203fa84038384d34b40c27234f141f0addf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:29:58 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 13:30:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 13:30:02 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 13:37:00 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 13:37:01 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 13:37:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 13:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 13:37:15 GMT
USER memcache
# Tue, 05 Mar 2019 13:37:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 13:37:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e7694836cbca448a2b880d9f3684c7e0820a2c1a7f1f4cabb467f2a3b1f74f`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b3994f5883a347d102aafd00e085bf39efc832ca7bb9e808643f66c178ce0e`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 1.0 MB (1036765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacec40dcf86177e66e7b187bd4bfd7c3b3307898cefdcfe7ae5893e854ebddd`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b59f2551eb3683ea0e1b729994a8e1a81b5fda15980920f42327f90c23abeed`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; s390x

```console
$ docker pull memcached@sha256:b428d9742eb271414ef94e64bc323cc18a79cc220bc2bc2fd924de6502b9a10d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23351180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f204c9273d661bbadcee1e3a6da281d22ee05476ef8bf31c6b4c157c3d401ee7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:22:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 15:26:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 15:26:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 15:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:26:16 GMT
USER memcache
# Tue, 05 Mar 2019 15:26:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 15:26:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1236998060878732372ea92a2b455aa6062e653e065e53fe888aff5cd2ac6e`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08759a83df1ffaed73fadbfd68d9e12c783046065066ee263b8f36743c6f3c2b`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 1000.4 KB (1000350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff8b16f6c4ec2d57e91b1b7cdc0cb4b0f95e16553a1bfa3814d1eeab2d3a2e8`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c70000b81a3041d636298585de2b9dbf0f699b63545a9a2b307b30df9828a85`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.12-alpine`

```console
$ docker pull memcached@sha256:66bb959374d67d1cc924413d974978ac8fa54a55ac176692df01959c154a2aac
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
$ docker pull memcached@sha256:465c370e67936afb0b1a6337a55e43705fea06dd362132dbee964e930caa71da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c2443012f494761005394dac668b1804c881b6e9bb50c38801f3469c0a1c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:17:25 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 03:23:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 03:23:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:23:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 03:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:23:23 GMT
USER memcache
# Fri, 08 Mar 2019 03:23:23 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 03:23:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d025c9fba241b61d6e0439caa9282820c461d03fffc38ee5c3907dff092234`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d57c5218060610ca16decdba28afd73ffc34cf3cccf221adabfbdd1c99b8db`  
		Last Modified: Fri, 08 Mar 2019 03:23:51 GMT  
		Size: 2.8 MB (2773342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a6e59b14d0a3a92017ee79295bf91d1cd9f9567d77f627e9eb32ea2903dc9`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38c125a36d1ee3df67716ebc832209f4a8f9975cccc59b01e5f940845b178a`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:83f2c78af7b064e9c3ab6727aa3db8f23304b96af683f4934e5676f1973e7603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7debbcdda6a2c0bfbc3c9ed108ba4605361daf71808313d2fd78492c053d0ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:10:58 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:10:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:16:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:16:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:16:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:16:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:16:53 GMT
USER memcache
# Fri, 08 Mar 2019 04:16:54 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:16:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d86b076279bdd392c22b8eb4c7be076b83e0b5c1bc1ab203321f5c6c924d618`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e28f8cec9235052f12c958f6ab9165fb6d48643cf8dc1491bbeaf16f9426bb0`  
		Last Modified: Fri, 08 Mar 2019 04:17:05 GMT  
		Size: 2.7 MB (2671108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a411f801fc26adaee74ec8a1d6882035f31d6bb858927278c15e4b2ed731e2`  
		Last Modified: Fri, 08 Mar 2019 04:17:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9186e4e8537bdf00dcdbdc1cc2043ce0c4c00eb0c154641379130c1b8b5952f`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b4b422aa09efedfdb39a002ebbfe9da1c8f6ca95e5a4d573237e476f0fe9bc8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6479ba593a2ffaaec5e2528659e12ecab4a28693400d0b4a16b6a419e6a0e14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:08:31 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 12:14:54 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 12:14:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 12:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 12:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:58 GMT
USER memcache
# Fri, 08 Mar 2019 12:14:59 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 12:14:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784d1d619fd5528a27fe2c34de5fe6025f848cabba2e33aab809dcb9db3234dd`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e31c8a8a11b727b076e2a80d07a70b9bc3f904cedef4100bfdeb85b8696de`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 2.8 MB (2751201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dc41a2236497c105677d8dbb2219540e9d1752db856724d43900bcc3b8e7b2`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2e2dea1123c1e58d6acfb81d337160267ff73b432d6f30418040c1a7e3ade`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; 386

```console
$ docker pull memcached@sha256:da75e48680e9f32f9c5010fdc67d0c586318fe966f327445cda0752bc46d7bae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa10d9f08adf7b5e918ae9c932400a3ef41cdabbf07b10b3d1085624836a323`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:15:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:15:43 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:15:44 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:21:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:21:48 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:21:49 GMT
USER memcache
# Fri, 08 Mar 2019 04:21:49 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:21:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf51bb4697f7db5e67ada978166e76ffe022fdcef9431a1fa8197f41660eb0b`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a693cfa566500d215755b23b3848706a630bf4b762ee4b32bc5522d021acda`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 2.9 MB (2852058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61ea1bf48da1365da64b19737f60d58ede349c4a93f6de301727c3c5a17d0b6`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f3bbb69c60e95fba0ba46b9c8de793f10a2c28ec0017a262b880c29d481cac`  
		Last Modified: Fri, 08 Mar 2019 04:22:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:d8cc0dcde8e0f63598af70f0f0a74657ace166389243265e81f78af29f56c806
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5596841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd6141aa97363c6060df56279f5eb0f2c5ec2aa15f1f753202a6162857ec987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:11:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 07:11:35 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 07:11:41 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 07:17:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 07:17:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:17:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 07:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:17:40 GMT
USER memcache
# Fri, 08 Mar 2019 07:17:42 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 07:17:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7b969ade03bd25c5fb09f7b17e5c36f706a65d6f80e7f44dc09c62cb09094`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea18ebda443b237d5e5b25b6b68c5d435efa47966512aaa931c51014e840f9`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 2.8 MB (2816508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b40399d3fa7009e6d58f7efda7a442a54a5e3cc27d0f3bef1da2f27b4f7db`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e3135e6305d7395e5bfa4cf726ee5b5f1f3f93873b58d5f7b320f9b247414f`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:cc2591e04de67325c5ef02b9f32aeb9555c6c81c276461190f2eb751d541361a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5199859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10117a1e0fa92c3a53ea149fb6b3cc874e36e58f9735e6c05118102a5acca4be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:07:39 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:11:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:11:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:11:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:11:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:10 GMT
USER memcache
# Fri, 08 Mar 2019 04:11:10 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:11:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5901c211a77e93be361b0271857b97dead1a068c632dca376e3f8c6795f62`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145ff21f06059f323a19c1cd3f3bd385e8280c1978815919b1684444cf49e4d1`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 2.7 MB (2656894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df12ff0e4925b0ee9e98c8543914d06734ba0bf0a7ae9e0d13d3d9ba3cd4be14`  
		Last Modified: Fri, 08 Mar 2019 04:11:32 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df769a1a4b634cf1bee5bff26dff142c29e693610a61b1dfc25593cfca53ca5`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:66bb959374d67d1cc924413d974978ac8fa54a55ac176692df01959c154a2aac
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
$ docker pull memcached@sha256:465c370e67936afb0b1a6337a55e43705fea06dd362132dbee964e930caa71da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c2443012f494761005394dac668b1804c881b6e9bb50c38801f3469c0a1c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:17:25 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 03:23:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 03:23:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:23:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 03:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:23:23 GMT
USER memcache
# Fri, 08 Mar 2019 03:23:23 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 03:23:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d025c9fba241b61d6e0439caa9282820c461d03fffc38ee5c3907dff092234`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d57c5218060610ca16decdba28afd73ffc34cf3cccf221adabfbdd1c99b8db`  
		Last Modified: Fri, 08 Mar 2019 03:23:51 GMT  
		Size: 2.8 MB (2773342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a6e59b14d0a3a92017ee79295bf91d1cd9f9567d77f627e9eb32ea2903dc9`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38c125a36d1ee3df67716ebc832209f4a8f9975cccc59b01e5f940845b178a`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:83f2c78af7b064e9c3ab6727aa3db8f23304b96af683f4934e5676f1973e7603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7debbcdda6a2c0bfbc3c9ed108ba4605361daf71808313d2fd78492c053d0ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:10:58 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:10:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:16:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:16:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:16:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:16:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:16:53 GMT
USER memcache
# Fri, 08 Mar 2019 04:16:54 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:16:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d86b076279bdd392c22b8eb4c7be076b83e0b5c1bc1ab203321f5c6c924d618`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e28f8cec9235052f12c958f6ab9165fb6d48643cf8dc1491bbeaf16f9426bb0`  
		Last Modified: Fri, 08 Mar 2019 04:17:05 GMT  
		Size: 2.7 MB (2671108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a411f801fc26adaee74ec8a1d6882035f31d6bb858927278c15e4b2ed731e2`  
		Last Modified: Fri, 08 Mar 2019 04:17:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9186e4e8537bdf00dcdbdc1cc2043ce0c4c00eb0c154641379130c1b8b5952f`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b4b422aa09efedfdb39a002ebbfe9da1c8f6ca95e5a4d573237e476f0fe9bc8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6479ba593a2ffaaec5e2528659e12ecab4a28693400d0b4a16b6a419e6a0e14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:08:31 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 12:14:54 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 12:14:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 12:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 12:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:58 GMT
USER memcache
# Fri, 08 Mar 2019 12:14:59 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 12:14:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784d1d619fd5528a27fe2c34de5fe6025f848cabba2e33aab809dcb9db3234dd`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e31c8a8a11b727b076e2a80d07a70b9bc3f904cedef4100bfdeb85b8696de`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 2.8 MB (2751201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dc41a2236497c105677d8dbb2219540e9d1752db856724d43900bcc3b8e7b2`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2e2dea1123c1e58d6acfb81d337160267ff73b432d6f30418040c1a7e3ade`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:da75e48680e9f32f9c5010fdc67d0c586318fe966f327445cda0752bc46d7bae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa10d9f08adf7b5e918ae9c932400a3ef41cdabbf07b10b3d1085624836a323`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:15:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:15:43 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:15:44 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:21:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:21:48 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:21:49 GMT
USER memcache
# Fri, 08 Mar 2019 04:21:49 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:21:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf51bb4697f7db5e67ada978166e76ffe022fdcef9431a1fa8197f41660eb0b`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a693cfa566500d215755b23b3848706a630bf4b762ee4b32bc5522d021acda`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 2.9 MB (2852058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61ea1bf48da1365da64b19737f60d58ede349c4a93f6de301727c3c5a17d0b6`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f3bbb69c60e95fba0ba46b9c8de793f10a2c28ec0017a262b880c29d481cac`  
		Last Modified: Fri, 08 Mar 2019 04:22:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:d8cc0dcde8e0f63598af70f0f0a74657ace166389243265e81f78af29f56c806
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5596841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd6141aa97363c6060df56279f5eb0f2c5ec2aa15f1f753202a6162857ec987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:11:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 07:11:35 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 07:11:41 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 07:17:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 07:17:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:17:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 07:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:17:40 GMT
USER memcache
# Fri, 08 Mar 2019 07:17:42 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 07:17:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7b969ade03bd25c5fb09f7b17e5c36f706a65d6f80e7f44dc09c62cb09094`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea18ebda443b237d5e5b25b6b68c5d435efa47966512aaa931c51014e840f9`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 2.8 MB (2816508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b40399d3fa7009e6d58f7efda7a442a54a5e3cc27d0f3bef1da2f27b4f7db`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e3135e6305d7395e5bfa4cf726ee5b5f1f3f93873b58d5f7b320f9b247414f`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:cc2591e04de67325c5ef02b9f32aeb9555c6c81c276461190f2eb751d541361a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5199859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10117a1e0fa92c3a53ea149fb6b3cc874e36e58f9735e6c05118102a5acca4be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:07:39 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:11:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:11:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:11:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:11:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:10 GMT
USER memcache
# Fri, 08 Mar 2019 04:11:10 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:11:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5901c211a77e93be361b0271857b97dead1a068c632dca376e3f8c6795f62`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145ff21f06059f323a19c1cd3f3bd385e8280c1978815919b1684444cf49e4d1`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 2.7 MB (2656894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df12ff0e4925b0ee9e98c8543914d06734ba0bf0a7ae9e0d13d3d9ba3cd4be14`  
		Last Modified: Fri, 08 Mar 2019 04:11:32 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df769a1a4b634cf1bee5bff26dff142c29e693610a61b1dfc25593cfca53ca5`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:66bb959374d67d1cc924413d974978ac8fa54a55ac176692df01959c154a2aac
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
$ docker pull memcached@sha256:465c370e67936afb0b1a6337a55e43705fea06dd362132dbee964e930caa71da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c2443012f494761005394dac668b1804c881b6e9bb50c38801f3469c0a1c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:17:25 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 03:23:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 03:23:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:23:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 03:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:23:23 GMT
USER memcache
# Fri, 08 Mar 2019 03:23:23 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 03:23:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d025c9fba241b61d6e0439caa9282820c461d03fffc38ee5c3907dff092234`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d57c5218060610ca16decdba28afd73ffc34cf3cccf221adabfbdd1c99b8db`  
		Last Modified: Fri, 08 Mar 2019 03:23:51 GMT  
		Size: 2.8 MB (2773342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a6e59b14d0a3a92017ee79295bf91d1cd9f9567d77f627e9eb32ea2903dc9`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38c125a36d1ee3df67716ebc832209f4a8f9975cccc59b01e5f940845b178a`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:83f2c78af7b064e9c3ab6727aa3db8f23304b96af683f4934e5676f1973e7603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7debbcdda6a2c0bfbc3c9ed108ba4605361daf71808313d2fd78492c053d0ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:10:58 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:10:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:16:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:16:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:16:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:16:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:16:53 GMT
USER memcache
# Fri, 08 Mar 2019 04:16:54 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:16:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d86b076279bdd392c22b8eb4c7be076b83e0b5c1bc1ab203321f5c6c924d618`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e28f8cec9235052f12c958f6ab9165fb6d48643cf8dc1491bbeaf16f9426bb0`  
		Last Modified: Fri, 08 Mar 2019 04:17:05 GMT  
		Size: 2.7 MB (2671108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a411f801fc26adaee74ec8a1d6882035f31d6bb858927278c15e4b2ed731e2`  
		Last Modified: Fri, 08 Mar 2019 04:17:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9186e4e8537bdf00dcdbdc1cc2043ce0c4c00eb0c154641379130c1b8b5952f`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b4b422aa09efedfdb39a002ebbfe9da1c8f6ca95e5a4d573237e476f0fe9bc8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6479ba593a2ffaaec5e2528659e12ecab4a28693400d0b4a16b6a419e6a0e14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:08:31 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 12:14:54 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 12:14:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 12:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 12:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:58 GMT
USER memcache
# Fri, 08 Mar 2019 12:14:59 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 12:14:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784d1d619fd5528a27fe2c34de5fe6025f848cabba2e33aab809dcb9db3234dd`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e31c8a8a11b727b076e2a80d07a70b9bc3f904cedef4100bfdeb85b8696de`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 2.8 MB (2751201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dc41a2236497c105677d8dbb2219540e9d1752db856724d43900bcc3b8e7b2`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2e2dea1123c1e58d6acfb81d337160267ff73b432d6f30418040c1a7e3ade`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:da75e48680e9f32f9c5010fdc67d0c586318fe966f327445cda0752bc46d7bae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa10d9f08adf7b5e918ae9c932400a3ef41cdabbf07b10b3d1085624836a323`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:15:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:15:43 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:15:44 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:21:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:21:48 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:21:49 GMT
USER memcache
# Fri, 08 Mar 2019 04:21:49 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:21:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf51bb4697f7db5e67ada978166e76ffe022fdcef9431a1fa8197f41660eb0b`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a693cfa566500d215755b23b3848706a630bf4b762ee4b32bc5522d021acda`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 2.9 MB (2852058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61ea1bf48da1365da64b19737f60d58ede349c4a93f6de301727c3c5a17d0b6`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f3bbb69c60e95fba0ba46b9c8de793f10a2c28ec0017a262b880c29d481cac`  
		Last Modified: Fri, 08 Mar 2019 04:22:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:d8cc0dcde8e0f63598af70f0f0a74657ace166389243265e81f78af29f56c806
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5596841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd6141aa97363c6060df56279f5eb0f2c5ec2aa15f1f753202a6162857ec987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:11:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 07:11:35 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 07:11:41 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 07:17:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 07:17:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:17:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 07:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:17:40 GMT
USER memcache
# Fri, 08 Mar 2019 07:17:42 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 07:17:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7b969ade03bd25c5fb09f7b17e5c36f706a65d6f80e7f44dc09c62cb09094`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea18ebda443b237d5e5b25b6b68c5d435efa47966512aaa931c51014e840f9`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 2.8 MB (2816508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b40399d3fa7009e6d58f7efda7a442a54a5e3cc27d0f3bef1da2f27b4f7db`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e3135e6305d7395e5bfa4cf726ee5b5f1f3f93873b58d5f7b320f9b247414f`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:cc2591e04de67325c5ef02b9f32aeb9555c6c81c276461190f2eb751d541361a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5199859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10117a1e0fa92c3a53ea149fb6b3cc874e36e58f9735e6c05118102a5acca4be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:07:39 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:11:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:11:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:11:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:11:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:10 GMT
USER memcache
# Fri, 08 Mar 2019 04:11:10 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:11:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5901c211a77e93be361b0271857b97dead1a068c632dca376e3f8c6795f62`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145ff21f06059f323a19c1cd3f3bd385e8280c1978815919b1684444cf49e4d1`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 2.7 MB (2656894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df12ff0e4925b0ee9e98c8543914d06734ba0bf0a7ae9e0d13d3d9ba3cd4be14`  
		Last Modified: Fri, 08 Mar 2019 04:11:32 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df769a1a4b634cf1bee5bff26dff142c29e693610a61b1dfc25593cfca53ca5`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:66bb959374d67d1cc924413d974978ac8fa54a55ac176692df01959c154a2aac
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
$ docker pull memcached@sha256:465c370e67936afb0b1a6337a55e43705fea06dd362132dbee964e930caa71da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5529734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c2443012f494761005394dac668b1804c881b6e9bb50c38801f3469c0a1c90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:17:25 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 03:17:25 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 03:23:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 03:23:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:23:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 03:23:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:23:23 GMT
USER memcache
# Fri, 08 Mar 2019 03:23:23 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 03:23:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d025c9fba241b61d6e0439caa9282820c461d03fffc38ee5c3907dff092234`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d57c5218060610ca16decdba28afd73ffc34cf3cccf221adabfbdd1c99b8db`  
		Last Modified: Fri, 08 Mar 2019 03:23:51 GMT  
		Size: 2.8 MB (2773342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277a6e59b14d0a3a92017ee79295bf91d1cd9f9567d77f627e9eb32ea2903dc9`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38c125a36d1ee3df67716ebc832209f4a8f9975cccc59b01e5f940845b178a`  
		Last Modified: Fri, 08 Mar 2019 03:23:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:83f2c78af7b064e9c3ab6727aa3db8f23304b96af683f4934e5676f1973e7603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7debbcdda6a2c0bfbc3c9ed108ba4605361daf71808313d2fd78492c053d0ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:10:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:10:58 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:10:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:16:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:16:51 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:16:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:16:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:16:53 GMT
USER memcache
# Fri, 08 Mar 2019 04:16:54 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:16:54 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d86b076279bdd392c22b8eb4c7be076b83e0b5c1bc1ab203321f5c6c924d618`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e28f8cec9235052f12c958f6ab9165fb6d48643cf8dc1491bbeaf16f9426bb0`  
		Last Modified: Fri, 08 Mar 2019 04:17:05 GMT  
		Size: 2.7 MB (2671108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a411f801fc26adaee74ec8a1d6882035f31d6bb858927278c15e4b2ed731e2`  
		Last Modified: Fri, 08 Mar 2019 04:17:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9186e4e8537bdf00dcdbdc1cc2043ce0c4c00eb0c154641379130c1b8b5952f`  
		Last Modified: Fri, 08 Mar 2019 04:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:b4b422aa09efedfdb39a002ebbfe9da1c8f6ca95e5a4d573237e476f0fe9bc8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6479ba593a2ffaaec5e2528659e12ecab4a28693400d0b4a16b6a419e6a0e14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 12:08:31 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 12:08:32 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 12:14:54 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 12:14:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 12:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 12:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 12:14:58 GMT
USER memcache
# Fri, 08 Mar 2019 12:14:59 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 12:14:59 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784d1d619fd5528a27fe2c34de5fe6025f848cabba2e33aab809dcb9db3234dd`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e31c8a8a11b727b076e2a80d07a70b9bc3f904cedef4100bfdeb85b8696de`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 2.8 MB (2751201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75dc41a2236497c105677d8dbb2219540e9d1752db856724d43900bcc3b8e7b2`  
		Last Modified: Fri, 08 Mar 2019 12:15:25 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2e2dea1123c1e58d6acfb81d337160267ff73b432d6f30418040c1a7e3ade`  
		Last Modified: Fri, 08 Mar 2019 12:15:26 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:da75e48680e9f32f9c5010fdc67d0c586318fe966f327445cda0752bc46d7bae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5603077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa10d9f08adf7b5e918ae9c932400a3ef41cdabbf07b10b3d1085624836a323`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:15:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:15:43 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:15:44 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:21:48 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:21:48 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:21:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:21:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:21:49 GMT
USER memcache
# Fri, 08 Mar 2019 04:21:49 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:21:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf51bb4697f7db5e67ada978166e76ffe022fdcef9431a1fa8197f41660eb0b`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a693cfa566500d215755b23b3848706a630bf4b762ee4b32bc5522d021acda`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 2.9 MB (2852058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61ea1bf48da1365da64b19737f60d58ede349c4a93f6de301727c3c5a17d0b6`  
		Last Modified: Fri, 08 Mar 2019 04:22:06 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f3bbb69c60e95fba0ba46b9c8de793f10a2c28ec0017a262b880c29d481cac`  
		Last Modified: Fri, 08 Mar 2019 04:22:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:d8cc0dcde8e0f63598af70f0f0a74657ace166389243265e81f78af29f56c806
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5596841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd6141aa97363c6060df56279f5eb0f2c5ec2aa15f1f753202a6162857ec987`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:11:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 07:11:35 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 07:11:41 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 07:17:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 07:17:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:17:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 07:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:17:40 GMT
USER memcache
# Fri, 08 Mar 2019 07:17:42 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 07:17:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c7b969ade03bd25c5fb09f7b17e5c36f706a65d6f80e7f44dc09c62cb09094`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea18ebda443b237d5e5b25b6b68c5d435efa47966512aaa931c51014e840f9`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 2.8 MB (2816508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b40399d3fa7009e6d58f7efda7a442a54a5e3cc27d0f3bef1da2f27b4f7db`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e3135e6305d7395e5bfa4cf726ee5b5f1f3f93873b58d5f7b320f9b247414f`  
		Last Modified: Fri, 08 Mar 2019 07:18:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:cc2591e04de67325c5ef02b9f32aeb9555c6c81c276461190f2eb751d541361a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5199859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10117a1e0fa92c3a53ea149fb6b3cc874e36e58f9735e6c05118102a5acca4be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:07:39 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_VERSION=1.5.12
# Fri, 08 Mar 2019 04:07:39 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Fri, 08 Mar 2019 04:11:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 08 Mar 2019 04:11:09 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:11:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 08 Mar 2019 04:11:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:11:10 GMT
USER memcache
# Fri, 08 Mar 2019 04:11:10 GMT
EXPOSE 11211
# Fri, 08 Mar 2019 04:11:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa5901c211a77e93be361b0271857b97dead1a068c632dca376e3f8c6795f62`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145ff21f06059f323a19c1cd3f3bd385e8280c1978815919b1684444cf49e4d1`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 2.7 MB (2656894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df12ff0e4925b0ee9e98c8543914d06734ba0bf0a7ae9e0d13d3d9ba3cd4be14`  
		Last Modified: Fri, 08 Mar 2019 04:11:32 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df769a1a4b634cf1bee5bff26dff142c29e693610a61b1dfc25593cfca53ca5`  
		Last Modified: Fri, 08 Mar 2019 04:11:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:41f119ba0851f6d8f144d8d065fe59fe7c981999ef9f7f12398cd869bd2aa001
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
$ docker pull memcached@sha256:8b39743e07afb751741e37be018a45ca391ea16dfa93d3d73b8f75b7c59286cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473e196e2080274385d706ccd7b53e788efcf168ab2126ae6e3310552c118a92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 26 Mar 2019 23:47:52 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 26 Mar 2019 23:53:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Mar 2019 23:53:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:53:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:53:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:53:41 GMT
USER memcache
# Tue, 26 Mar 2019 23:53:41 GMT
EXPOSE 11211
# Tue, 26 Mar 2019 23:53:42 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1cad2d74da92dfd9857ae9733b990222920c3b6279bd07b1c59eb3772d9862`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 1.0 MB (1043904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9cf4bc653a6604e800b019d0a825b4ada3bf7f7aaa4f6ba3c5ce102c19ae24`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f50c186b1d45914f5f64e33a938d194a340e905c4bc023a5c0687dc35bb3289`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:13c0044c6201c8e8247fa77481f05995988b7225abe564dfc5172cbb0ac6d659
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22190203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d17252efbe67f60eba0f5b45d163e3200f6e7187e47e631e193d0943bb3dcc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 27 Mar 2019 09:16:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 27 Mar 2019 09:17:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 27 Mar 2019 10:12:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Mar 2019 10:12:55 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:13:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Mar 2019 10:13:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:13:08 GMT
USER memcache
# Wed, 27 Mar 2019 10:13:10 GMT
EXPOSE 11211
# Wed, 27 Mar 2019 10:13:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a4e2e29320fb441fc0d623f7db44d27b17c0520e394f9ecb4dfe826fcf35f7`  
		Last Modified: Wed, 27 Mar 2019 10:13:26 GMT  
		Size: 1.0 MB (1024224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3d1d7aa3c2a4795c87ec7495620255a548a4d91221930bb14cf0e50f8f6e0`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1950c8c85a8e4092ed5e36462856c882b6dee09d4992914ac80479ca178c61`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:5046d18040ea9aa6d623907031f647533de696457f2820220d4f5b57d3edd850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20279398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6198901ecdf972190c7905b801664a48b3cbe8f63725d5a69cfb1d69645f1ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 12:02:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 12 Mar 2019 12:02:45 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 12 Mar 2019 12:02:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Thu, 14 Mar 2019 12:15:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 14 Mar 2019 12:15:10 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 14 Mar 2019 12:15:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 14 Mar 2019 12:15:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Mar 2019 12:15:24 GMT
USER memcache
# Thu, 14 Mar 2019 12:15:25 GMT
EXPOSE 11211
# Thu, 14 Mar 2019 12:15:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d7ea45298a4bc835e9bf7017b31d3a74418b80645ae75b68aca008928bb851`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4ddf1799dcdb859fdb2d756e8cb87abf3f0dcb810ba0b6ea5de60de8077c2`  
		Last Modified: Thu, 14 Mar 2019 13:02:40 GMT  
		Size: 991.6 KB (991583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fc2149a9a095e66da4a685674151555f15f3870e7b4f5da77766fdfc1e93e3`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55a837f894e586b859e8b1247c4b158f553c5a298875554067d0184ca799991`  
		Last Modified: Thu, 14 Mar 2019 13:02:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:15790a1eaff6385805dcd825c6d39fbb9057589712891fdacdfb4f995cf0b1f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030e6cf69e72c13b096283f8979702cddb73a0ee12d78173a457297874e41986`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:40:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 11:40:48 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:50:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 11:54:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:54:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:54:08 GMT
USER memcache
# Wed, 06 Feb 2019 11:54:09 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:54:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b50cdf427d90954f4d264cd8fe97eda0110ed50c5d495c39e88d9dc7aba1bc`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8f9209a8e79789132bb21f781211ef126776eb5a3243b89cb319fb6a275df`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 1.0 MB (1006089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb7e862f4a569e52ab9d19050bd0bb671d3e92a1d7f333ec0e555b3fddff783`  
		Last Modified: Wed, 06 Feb 2019 12:01:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327112eab309118e75258c9d5a68a10690eeec80e4548d235dfd61e340baed0a`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:b6cdc4ead6b5f6fbe3296dc4e6c381d086fa06166ebae76f22a3b12e8e241aee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24183482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b97f306766831636b51448b98ec130315f82f9e03898f4f57fceec75e7b212a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:33:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 17:33:59 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 17:39:38 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 17:39:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 17:39:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 17:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:39:39 GMT
USER memcache
# Tue, 05 Mar 2019 17:39:39 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 17:39:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f66cf7adca2161f31bd91988bba052590b915d36fc63fa5bc9a99b5f0322f8a`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d176018a1a810040dbdb057e64424a90529999dea9464a84855e600de82dcd`  
		Last Modified: Tue, 05 Mar 2019 17:39:52 GMT  
		Size: 1.1 MB (1052481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85735945967c485d04dd360bf3712fe55f2b9ec574ce1531713d93df64356ee`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ab490dfca786a60f4fdbf049600fc3482e2a0a05cf921428da3668f1e786e7`  
		Last Modified: Tue, 05 Mar 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:9b88fe38e26caa2b43f945efa65a3c412eaac388c89fbbd66b46c25b79b04cbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23793663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9094b4ec1972240f1afd8c793a01d203fa84038384d34b40c27234f141f0addf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:29:58 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 13:30:00 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 13:30:02 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 13:37:00 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 13:37:01 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 13:37:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 13:37:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 13:37:15 GMT
USER memcache
# Tue, 05 Mar 2019 13:37:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 13:37:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e7694836cbca448a2b880d9f3684c7e0820a2c1a7f1f4cabb467f2a3b1f74f`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b3994f5883a347d102aafd00e085bf39efc832ca7bb9e808643f66c178ce0e`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 1.0 MB (1036765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacec40dcf86177e66e7b187bd4bfd7c3b3307898cefdcfe7ae5893e854ebddd`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b59f2551eb3683ea0e1b729994a8e1a81b5fda15980920f42327f90c23abeed`  
		Last Modified: Tue, 05 Mar 2019 13:37:49 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:b428d9742eb271414ef94e64bc323cc18a79cc220bc2bc2fd924de6502b9a10d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23351180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f204c9273d661bbadcee1e3a6da281d22ee05476ef8bf31c6b4c157c3d401ee7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:22:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 15:22:46 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 15:26:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 15:26:15 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 15:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:26:16 GMT
USER memcache
# Tue, 05 Mar 2019 15:26:17 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 15:26:17 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1236998060878732372ea92a2b455aa6062e653e065e53fe888aff5cd2ac6e`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08759a83df1ffaed73fadbfd68d9e12c783046065066ee263b8f36743c6f3c2b`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 1000.4 KB (1000350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff8b16f6c4ec2d57e91b1b7cdc0cb4b0f95e16553a1bfa3814d1eeab2d3a2e8`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c70000b81a3041d636298585de2b9dbf0f699b63545a9a2b307b30df9828a85`  
		Last Modified: Tue, 05 Mar 2019 15:26:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

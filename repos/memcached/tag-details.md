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
$ docker pull memcached@sha256:18b721a8d183c63d46e53c704f6cf2afea51778793f832ee5bc97d790718de25
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
$ docker pull memcached@sha256:012c9f4c5c68634478707180327b9296ddc0e99f43237bb0618a180739397378
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26493421cee62ca00addc2c119a6ad8b3ea14d7a4d4668651c0a6ad8a8373da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 06:02:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 06:02:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 06:03:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 06:08:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 06:08:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 06:08:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 06:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 06:08:34 GMT
USER memcache
# Tue, 05 Mar 2019 06:08:35 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 06:08:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57288e7383f610c19064f96afc8c0575122ff14a29e4546ccc422d3e933fbb8c`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25760110916015867226c3c4eb9203cfdbd8837be0f1909263cbbd7b501aae0`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 1.0 MB (1043894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d929b18aee9a8c58eaed8621d6382019116279b961262a889071d6fedf06479`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6f9ac6be880529e61a7991c7d9e65bc8a3a6e1bb35a41294e49acaa9f6277`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:14af79243389277c8a82d582dc31bb941cff5031758fc59a080f20f80637444d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bafbb176c56fc03d663ec7ba2f30c6a3442ed7052ac4ecabbad66d049ef736`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:21:56 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 10:21:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:21:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 10:56:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 10:57:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 10:57:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:57:15 GMT
USER memcache
# Wed, 06 Feb 2019 10:57:16 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 10:57:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a71f9f8cfc0b08823f3a285dfa3ca44fea7df344c9656e73a822cf082431a`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef6f08ad6841d3064af124e56694aee21fafae2728497b611194bb9624d413`  
		Last Modified: Wed, 06 Feb 2019 10:57:41 GMT  
		Size: 1.0 MB (1024249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae41e8f35e6985eaad3fe96eaaecb1ca0d946bd5a58c350f91e399f5f08fd2`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62330ebf6b1cd83e4e8c209d98a0c022ff425e34a9b4799fab00b67e3fff3d9b`  
		Last Modified: Wed, 06 Feb 2019 10:57:40 GMT  
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
$ docker pull memcached@sha256:18b721a8d183c63d46e53c704f6cf2afea51778793f832ee5bc97d790718de25
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
$ docker pull memcached@sha256:012c9f4c5c68634478707180327b9296ddc0e99f43237bb0618a180739397378
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26493421cee62ca00addc2c119a6ad8b3ea14d7a4d4668651c0a6ad8a8373da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 06:02:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 06:02:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 06:03:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 06:08:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 06:08:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 06:08:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 06:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 06:08:34 GMT
USER memcache
# Tue, 05 Mar 2019 06:08:35 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 06:08:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57288e7383f610c19064f96afc8c0575122ff14a29e4546ccc422d3e933fbb8c`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25760110916015867226c3c4eb9203cfdbd8837be0f1909263cbbd7b501aae0`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 1.0 MB (1043894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d929b18aee9a8c58eaed8621d6382019116279b961262a889071d6fedf06479`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6f9ac6be880529e61a7991c7d9e65bc8a3a6e1bb35a41294e49acaa9f6277`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:14af79243389277c8a82d582dc31bb941cff5031758fc59a080f20f80637444d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bafbb176c56fc03d663ec7ba2f30c6a3442ed7052ac4ecabbad66d049ef736`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:21:56 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 10:21:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:21:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 10:56:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 10:57:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 10:57:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:57:15 GMT
USER memcache
# Wed, 06 Feb 2019 10:57:16 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 10:57:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a71f9f8cfc0b08823f3a285dfa3ca44fea7df344c9656e73a822cf082431a`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef6f08ad6841d3064af124e56694aee21fafae2728497b611194bb9624d413`  
		Last Modified: Wed, 06 Feb 2019 10:57:41 GMT  
		Size: 1.0 MB (1024249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae41e8f35e6985eaad3fe96eaaecb1ca0d946bd5a58c350f91e399f5f08fd2`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62330ebf6b1cd83e4e8c209d98a0c022ff425e34a9b4799fab00b67e3fff3d9b`  
		Last Modified: Wed, 06 Feb 2019 10:57:40 GMT  
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
$ docker pull memcached@sha256:18b721a8d183c63d46e53c704f6cf2afea51778793f832ee5bc97d790718de25
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
$ docker pull memcached@sha256:012c9f4c5c68634478707180327b9296ddc0e99f43237bb0618a180739397378
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26493421cee62ca00addc2c119a6ad8b3ea14d7a4d4668651c0a6ad8a8373da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 06:02:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 06:02:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 06:03:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 06:08:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 06:08:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 06:08:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 06:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 06:08:34 GMT
USER memcache
# Tue, 05 Mar 2019 06:08:35 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 06:08:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57288e7383f610c19064f96afc8c0575122ff14a29e4546ccc422d3e933fbb8c`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25760110916015867226c3c4eb9203cfdbd8837be0f1909263cbbd7b501aae0`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 1.0 MB (1043894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d929b18aee9a8c58eaed8621d6382019116279b961262a889071d6fedf06479`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6f9ac6be880529e61a7991c7d9e65bc8a3a6e1bb35a41294e49acaa9f6277`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.12` - linux; arm variant v5

```console
$ docker pull memcached@sha256:14af79243389277c8a82d582dc31bb941cff5031758fc59a080f20f80637444d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bafbb176c56fc03d663ec7ba2f30c6a3442ed7052ac4ecabbad66d049ef736`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:21:56 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 10:21:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:21:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 10:56:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 10:57:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 10:57:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:57:15 GMT
USER memcache
# Wed, 06 Feb 2019 10:57:16 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 10:57:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a71f9f8cfc0b08823f3a285dfa3ca44fea7df344c9656e73a822cf082431a`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef6f08ad6841d3064af124e56694aee21fafae2728497b611194bb9624d413`  
		Last Modified: Wed, 06 Feb 2019 10:57:41 GMT  
		Size: 1.0 MB (1024249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae41e8f35e6985eaad3fe96eaaecb1ca0d946bd5a58c350f91e399f5f08fd2`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62330ebf6b1cd83e4e8c209d98a0c022ff425e34a9b4799fab00b67e3fff3d9b`  
		Last Modified: Wed, 06 Feb 2019 10:57:40 GMT  
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
$ docker pull memcached@sha256:13ae6a6131df01f4f99828863538f078fddd6d8c03e1a972c2fdd853abed057b
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
$ docker pull memcached@sha256:93868e9bd50187d57b5bd8340b109b4491a185740392004d4557c49eaa7a29f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5439440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a19402eaf0dd282ce1a2a0b14c2c53f12d9b693a5290c8d686837b0cda875e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:54:23 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 11:54:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:54:26 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 12:00:59 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 12:01:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:01:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 12:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:01:06 GMT
USER memcache
# Wed, 06 Feb 2019 12:01:07 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 12:01:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6cf571229555597a9e435158f2209e9debf6c50c06c98d7c0dc771c2f5f292`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d671ff297a992aa71beb207257d41a1bb92d8054d702635c208551d5814ab412`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 2.7 MB (2749714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c827f543654fc554bbecc01ee006b10d8b271096107bb13301864235259c722a`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd2db05873dea2b637c34733a8da51de9715c29cdbe799c8119d4de7ad5840`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 121.0 B  
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
$ docker pull memcached@sha256:6924251cddad452b6448336cd781e117fc7e8923f0c1708bf7adcf964af325e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5595456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ace43dd3119d46302b082b398f778029230c7e212d19380020df1656ae3170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:57:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 10:57:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:58:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:10:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 11:10:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:10:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:10:22 GMT
USER memcache
# Wed, 06 Feb 2019 11:10:24 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:10:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71accc0b41b0fb38252d1228e7106db3ac05afb60cc2aa6f5058fdea47382d9d`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3944cc3f301ac3cd88d67644cfd22cf5534f1b6ef5081e612a34a6c584bca7ff`  
		Last Modified: Wed, 06 Feb 2019 11:11:15 GMT  
		Size: 2.8 MB (2814930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec0c7a7f658f3714b3b8a96fe3bad09e6dcde94019e5caf72ca3b7fab43f0e8`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e2077dc58a3af3259607bc58e5fb6bf6f3659686204dd313b8bca45df17e1`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
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
$ docker pull memcached@sha256:13ae6a6131df01f4f99828863538f078fddd6d8c03e1a972c2fdd853abed057b
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
$ docker pull memcached@sha256:93868e9bd50187d57b5bd8340b109b4491a185740392004d4557c49eaa7a29f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5439440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a19402eaf0dd282ce1a2a0b14c2c53f12d9b693a5290c8d686837b0cda875e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:54:23 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 11:54:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:54:26 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 12:00:59 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 12:01:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:01:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 12:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:01:06 GMT
USER memcache
# Wed, 06 Feb 2019 12:01:07 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 12:01:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6cf571229555597a9e435158f2209e9debf6c50c06c98d7c0dc771c2f5f292`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d671ff297a992aa71beb207257d41a1bb92d8054d702635c208551d5814ab412`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 2.7 MB (2749714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c827f543654fc554bbecc01ee006b10d8b271096107bb13301864235259c722a`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd2db05873dea2b637c34733a8da51de9715c29cdbe799c8119d4de7ad5840`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 121.0 B  
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
$ docker pull memcached@sha256:6924251cddad452b6448336cd781e117fc7e8923f0c1708bf7adcf964af325e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5595456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ace43dd3119d46302b082b398f778029230c7e212d19380020df1656ae3170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:57:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 10:57:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:58:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:10:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 11:10:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:10:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:10:22 GMT
USER memcache
# Wed, 06 Feb 2019 11:10:24 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:10:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71accc0b41b0fb38252d1228e7106db3ac05afb60cc2aa6f5058fdea47382d9d`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3944cc3f301ac3cd88d67644cfd22cf5534f1b6ef5081e612a34a6c584bca7ff`  
		Last Modified: Wed, 06 Feb 2019 11:11:15 GMT  
		Size: 2.8 MB (2814930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec0c7a7f658f3714b3b8a96fe3bad09e6dcde94019e5caf72ca3b7fab43f0e8`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e2077dc58a3af3259607bc58e5fb6bf6f3659686204dd313b8bca45df17e1`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
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
$ docker pull memcached@sha256:13ae6a6131df01f4f99828863538f078fddd6d8c03e1a972c2fdd853abed057b
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
$ docker pull memcached@sha256:93868e9bd50187d57b5bd8340b109b4491a185740392004d4557c49eaa7a29f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5439440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a19402eaf0dd282ce1a2a0b14c2c53f12d9b693a5290c8d686837b0cda875e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:54:23 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 11:54:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:54:26 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 12:00:59 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 12:01:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:01:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 12:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:01:06 GMT
USER memcache
# Wed, 06 Feb 2019 12:01:07 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 12:01:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6cf571229555597a9e435158f2209e9debf6c50c06c98d7c0dc771c2f5f292`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d671ff297a992aa71beb207257d41a1bb92d8054d702635c208551d5814ab412`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 2.7 MB (2749714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c827f543654fc554bbecc01ee006b10d8b271096107bb13301864235259c722a`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd2db05873dea2b637c34733a8da51de9715c29cdbe799c8119d4de7ad5840`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 121.0 B  
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
$ docker pull memcached@sha256:6924251cddad452b6448336cd781e117fc7e8923f0c1708bf7adcf964af325e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5595456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ace43dd3119d46302b082b398f778029230c7e212d19380020df1656ae3170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:57:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 10:57:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:58:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:10:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 11:10:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:10:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:10:22 GMT
USER memcache
# Wed, 06 Feb 2019 11:10:24 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:10:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71accc0b41b0fb38252d1228e7106db3ac05afb60cc2aa6f5058fdea47382d9d`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3944cc3f301ac3cd88d67644cfd22cf5534f1b6ef5081e612a34a6c584bca7ff`  
		Last Modified: Wed, 06 Feb 2019 11:11:15 GMT  
		Size: 2.8 MB (2814930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec0c7a7f658f3714b3b8a96fe3bad09e6dcde94019e5caf72ca3b7fab43f0e8`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e2077dc58a3af3259607bc58e5fb6bf6f3659686204dd313b8bca45df17e1`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
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
$ docker pull memcached@sha256:13ae6a6131df01f4f99828863538f078fddd6d8c03e1a972c2fdd853abed057b
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
$ docker pull memcached@sha256:93868e9bd50187d57b5bd8340b109b4491a185740392004d4557c49eaa7a29f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5439440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a19402eaf0dd282ce1a2a0b14c2c53f12d9b693a5290c8d686837b0cda875e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:54:23 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 11:54:25 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:54:26 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 12:00:59 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 12:01:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 12:01:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 12:01:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 12:01:06 GMT
USER memcache
# Wed, 06 Feb 2019 12:01:07 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 12:01:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6cf571229555597a9e435158f2209e9debf6c50c06c98d7c0dc771c2f5f292`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d671ff297a992aa71beb207257d41a1bb92d8054d702635c208551d5814ab412`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 2.7 MB (2749714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c827f543654fc554bbecc01ee006b10d8b271096107bb13301864235259c722a`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cd2db05873dea2b637c34733a8da51de9715c29cdbe799c8119d4de7ad5840`  
		Last Modified: Wed, 06 Feb 2019 12:01:43 GMT  
		Size: 121.0 B  
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
$ docker pull memcached@sha256:6924251cddad452b6448336cd781e117fc7e8923f0c1708bf7adcf964af325e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5595456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ace43dd3119d46302b082b398f778029230c7e212d19380020df1656ae3170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:57:58 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 06 Feb 2019 10:57:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:58:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:10:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Feb 2019 11:10:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:10:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:10:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:10:22 GMT
USER memcache
# Wed, 06 Feb 2019 11:10:24 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:10:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71accc0b41b0fb38252d1228e7106db3ac05afb60cc2aa6f5058fdea47382d9d`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3944cc3f301ac3cd88d67644cfd22cf5534f1b6ef5081e612a34a6c584bca7ff`  
		Last Modified: Wed, 06 Feb 2019 11:11:15 GMT  
		Size: 2.8 MB (2814930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec0c7a7f658f3714b3b8a96fe3bad09e6dcde94019e5caf72ca3b7fab43f0e8`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e2077dc58a3af3259607bc58e5fb6bf6f3659686204dd313b8bca45df17e1`  
		Last Modified: Wed, 06 Feb 2019 11:11:14 GMT  
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
$ docker pull memcached@sha256:18b721a8d183c63d46e53c704f6cf2afea51778793f832ee5bc97d790718de25
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
$ docker pull memcached@sha256:012c9f4c5c68634478707180327b9296ddc0e99f43237bb0618a180739397378
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23545333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26493421cee62ca00addc2c119a6ad8b3ea14d7a4d4668651c0a6ad8a8373da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 06:02:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 05 Mar 2019 06:02:59 GMT
ENV MEMCACHED_VERSION=1.5.12
# Tue, 05 Mar 2019 06:03:00 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Tue, 05 Mar 2019 06:08:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 05 Mar 2019 06:08:33 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 05 Mar 2019 06:08:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 06:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 06:08:34 GMT
USER memcache
# Tue, 05 Mar 2019 06:08:35 GMT
EXPOSE 11211
# Tue, 05 Mar 2019 06:08:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57288e7383f610c19064f96afc8c0575122ff14a29e4546ccc422d3e933fbb8c`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25760110916015867226c3c4eb9203cfdbd8837be0f1909263cbbd7b501aae0`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 1.0 MB (1043894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d929b18aee9a8c58eaed8621d6382019116279b961262a889071d6fedf06479`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d6f9ac6be880529e61a7991c7d9e65bc8a3a6e1bb35a41294e49acaa9f6277`  
		Last Modified: Tue, 05 Mar 2019 06:08:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:14af79243389277c8a82d582dc31bb941cff5031758fc59a080f20f80637444d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bafbb176c56fc03d663ec7ba2f30c6a3442ed7052ac4ecabbad66d049ef736`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:21:56 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 10:21:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:21:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 10:56:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 10:57:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 10:57:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:57:15 GMT
USER memcache
# Wed, 06 Feb 2019 10:57:16 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 10:57:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a71f9f8cfc0b08823f3a285dfa3ca44fea7df344c9656e73a822cf082431a`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef6f08ad6841d3064af124e56694aee21fafae2728497b611194bb9624d413`  
		Last Modified: Wed, 06 Feb 2019 10:57:41 GMT  
		Size: 1.0 MB (1024249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae41e8f35e6985eaad3fe96eaaecb1ca0d946bd5a58c350f91e399f5f08fd2`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62330ebf6b1cd83e4e8c209d98a0c022ff425e34a9b4799fab00b67e3fff3d9b`  
		Last Modified: Wed, 06 Feb 2019 10:57:40 GMT  
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

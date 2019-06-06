<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.16`](#memcached1516)
-	[`memcached:1.5.16-alpine`](#memcached1516-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:daa1e689301cebe1863efad4efc6e6e06af2e707833d61081981c11aa3280aa7
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
$ docker pull memcached@sha256:fc19246b6d994c852922937b5d0d8a108694673b04ccc3ca3199cef3410c18d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e24f541dde43c5e02dfd5a6058ac0c5202d4980a1849b36ebc2f43cabc1b64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:26:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:32:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:32:17 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:32:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:32:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:32:18 GMT
USER memcache
# Wed, 05 Jun 2019 23:32:18 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:32:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0b5939d95a673f64d4be601e09453850c01b91941a4572129fd51f9a2605`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 2.0 MB (1956975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2ea9f666c5cda7d512c54130faab6e25054c85724adc34a5724b8806bcd11e`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 1.1 MB (1080321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31daffaca16c63f566ca379139613247746ad030b08e55fbf36ce55909137de`  
		Last Modified: Wed, 05 Jun 2019 23:38:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b58c99f1d296fc7e964bcf6db3a155fedeaa1ad9846ed2f583279e7eed99511`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f886200367432abd66d6f5b80d95f106b4401db390444cb1754d3899788920c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22194292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab533be3fb46ac3405adcac2e133a00b9daf6fb154b64f582b445277a95aa2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:16:49 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 29 May 2019 21:47:55 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 29 May 2019 21:47:56 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 29 May 2019 22:29:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 29 May 2019 22:29:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 29 May 2019 22:29:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 29 May 2019 22:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 22:29:34 GMT
USER memcache
# Wed, 29 May 2019 22:29:36 GMT
EXPOSE 11211
# Wed, 29 May 2019 22:29:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fe35fc91e34dd54d4adf29a51a47b9d340e60b69d64a3fdac96ee070f4ac42`  
		Last Modified: Thu, 23 May 2019 22:32:40 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c5686dedb8aa970425adc9318f6bb8426062ae042166b3f6190236febca1c2`  
		Last Modified: Wed, 29 May 2019 22:30:02 GMT  
		Size: 1.0 MB (1033110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eacbdbc606d19d5806818bf88e819a0b9ce74f406efb513f48606d338fb120`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad23295f755e0af634146d73570a3447c05293105f25cd1aa6305af88150d4e`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a2cac2c67c8079ad94fa42db0c6c836d8b2834144fcbd8101a19cc0a107ad043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21936019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511ac189a889126013aa53485b26a1aca5773f79123130a6d8de12823a6db929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:27:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:51:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:51:34 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:51:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Thu, 06 Jun 2019 00:31:15 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Thu, 06 Jun 2019 00:31:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 06 Jun 2019 00:31:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jun 2019 00:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jun 2019 00:31:34 GMT
USER memcache
# Thu, 06 Jun 2019 00:31:36 GMT
EXPOSE 11211
# Thu, 06 Jun 2019 00:31:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f96b8c4b0dd6cdb14d863cbf6585aed7a38830243ac0c52e6350649f09d35ce`  
		Last Modified: Sat, 11 May 2019 13:37:10 GMT  
		Size: 4.9 KB (4895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2503ee128cdd08ff0a58de21cf1b41e202b66c3ba19af33414e652a034208`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.6 MB (1625900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8025c66a6c518e12254834a04966d90a8d96fe1a8ece0d2b02dd72db93cdeb79`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.0 MB (1028591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddbea420836ab50823c3c1682042d0306fef42064682b756c7967a19d7b353`  
		Last Modified: Thu, 06 Jun 2019 01:26:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476870cc53d42ee0f5c30b6400e9ed34f5e7ffc9d25a3debd81bb9f560be2b4`  
		Last Modified: Thu, 06 Jun 2019 01:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9709081f43cb21e588e517c46f8ac1c250272718a61a446d2d5dc321c860a489
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d44cda63be5d1f7c7054a2b211e6dee25085bdb35c86f69c257ecc67f4614a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 23 May 2019 21:41:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:59:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:59:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:59:10 GMT
USER memcache
# Wed, 05 Jun 2019 22:59:11 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:59:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f177c3d3e1466dadd60ae5159840c8532ca001f7b45710f034727ad2fc2532`  
		Last Modified: Wed, 29 May 2019 21:05:47 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14df8f0152e7ab3f5e7eea10baa407c437303cc75b6bd20443677572dbf6080`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.7 MB (1679037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a00a944b30134edfa72a2ddf027eec95d9d9158a80bc5c6a48a8dab13baf9c`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.0 MB (1038925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921b491d1039b87e8c0ba2d52b403c396306907970662ffffd4e5a4706b9719`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1f9ad7d40b2d5a011b3b0abf4a3f99eb164052662ad455123a8f4799a9fb0`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:558d7f87be6852215e25dcfb71ff5662cd41b1b62beb3ada33e131fdb21dadac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f856b761ff39f921265ccd69e142dd7286018fdc6709be6798d08dc0a439e9ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:20:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:46:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:57:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:57:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:57:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:57:45 GMT
USER memcache
# Wed, 05 Jun 2019 22:57:45 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:57:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9165bad2a168e865881c36673a14c56e93d18f3bd0dfa2ad05b22cfed71481`  
		Last Modified: Wed, 08 May 2019 19:26:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621d02b72bea12a0b3f6db3e502a55aa959dd77874a0478ceb3b27c41afef14f`  
		Last Modified: Wed, 05 Jun 2019 23:04:19 GMT  
		Size: 2.0 MB (1957571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26aadcc1f19ec302e6d37eb1b29f35f4e7cdff0c7fb51e0292c8f031c8109a`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 1.1 MB (1087912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e691cad5b150d3e320052595bde2039f5330098380597e6e08cb9b74988031e7`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b4af582169408f5b65959330e69c5ddbd5befa2113a810877b615d0447018`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:7bda7b4ead88b834882322027bcb4a6bb98aea0381cde7c2c3a7eed1f75534d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba413c5485dd551fa4b76bf7f3b1fa358062b623c4613ad5e9340d895964c1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:40:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:28:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:28:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:28:13 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:35:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:35:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:35:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:35:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:35:53 GMT
USER memcache
# Wed, 05 Jun 2019 23:35:56 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:35:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcb31c4f2b841b4505a5de0e60cee34247617f0488abb40a2075984fe58630`  
		Last Modified: Thu, 30 May 2019 18:56:43 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e021d3419f7aa10558404629f7a843d31d6ea4e3fab49a9aea0c96168f9629e7`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.6 MB (1641146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb72b8869fe4055851e198d7409cea04bb8dd1ecbac0fe51eed741162e29e6a`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.1 MB (1072704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1486485ce46b87913dc345d8d52ce9f835237603d5b7cdcc3aeda9c48865f47b`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb8d8b9999045ccc61de1ad3ea74cdd4921c371e63d519d359b99586f266ae`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:b36fed02bbb893e58284ba5018bbf877c4d4c754b91d14d3a79e56b8e7d0e8f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857d93cc442267041ffdc967d036d3187f2b00b52c29d35579dcade95534939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:49:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:49:43 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:49:44 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:54:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:54:13 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:54:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:54:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:54:15 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864b2cd7066486aecb00303cbb09ed5b7ae8c4c7c46b8cbd24b852496d9af2a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.7 MB (1692039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2812eb7d491f54a6882ee886dac468e5e62fc53d8beb69d0e66fbb1b081247`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.0 MB (1035824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47b7d9ea13868aa0e272b29240c977419a599013b7b5fc4574621cbf58f2b7`  
		Last Modified: Wed, 05 Jun 2019 22:59:04 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13a5c98b8a4e71e3dce6ca42e0902061b086684f495d35501c7d170852f74a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:daa1e689301cebe1863efad4efc6e6e06af2e707833d61081981c11aa3280aa7
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
$ docker pull memcached@sha256:fc19246b6d994c852922937b5d0d8a108694673b04ccc3ca3199cef3410c18d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e24f541dde43c5e02dfd5a6058ac0c5202d4980a1849b36ebc2f43cabc1b64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:26:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:32:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:32:17 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:32:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:32:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:32:18 GMT
USER memcache
# Wed, 05 Jun 2019 23:32:18 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:32:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0b5939d95a673f64d4be601e09453850c01b91941a4572129fd51f9a2605`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 2.0 MB (1956975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2ea9f666c5cda7d512c54130faab6e25054c85724adc34a5724b8806bcd11e`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 1.1 MB (1080321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31daffaca16c63f566ca379139613247746ad030b08e55fbf36ce55909137de`  
		Last Modified: Wed, 05 Jun 2019 23:38:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b58c99f1d296fc7e964bcf6db3a155fedeaa1ad9846ed2f583279e7eed99511`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f886200367432abd66d6f5b80d95f106b4401db390444cb1754d3899788920c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22194292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab533be3fb46ac3405adcac2e133a00b9daf6fb154b64f582b445277a95aa2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:16:49 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 29 May 2019 21:47:55 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 29 May 2019 21:47:56 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 29 May 2019 22:29:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 29 May 2019 22:29:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 29 May 2019 22:29:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 29 May 2019 22:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 22:29:34 GMT
USER memcache
# Wed, 29 May 2019 22:29:36 GMT
EXPOSE 11211
# Wed, 29 May 2019 22:29:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fe35fc91e34dd54d4adf29a51a47b9d340e60b69d64a3fdac96ee070f4ac42`  
		Last Modified: Thu, 23 May 2019 22:32:40 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c5686dedb8aa970425adc9318f6bb8426062ae042166b3f6190236febca1c2`  
		Last Modified: Wed, 29 May 2019 22:30:02 GMT  
		Size: 1.0 MB (1033110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eacbdbc606d19d5806818bf88e819a0b9ce74f406efb513f48606d338fb120`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad23295f755e0af634146d73570a3447c05293105f25cd1aa6305af88150d4e`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a2cac2c67c8079ad94fa42db0c6c836d8b2834144fcbd8101a19cc0a107ad043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21936019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511ac189a889126013aa53485b26a1aca5773f79123130a6d8de12823a6db929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:27:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:51:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:51:34 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:51:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Thu, 06 Jun 2019 00:31:15 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Thu, 06 Jun 2019 00:31:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 06 Jun 2019 00:31:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jun 2019 00:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jun 2019 00:31:34 GMT
USER memcache
# Thu, 06 Jun 2019 00:31:36 GMT
EXPOSE 11211
# Thu, 06 Jun 2019 00:31:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f96b8c4b0dd6cdb14d863cbf6585aed7a38830243ac0c52e6350649f09d35ce`  
		Last Modified: Sat, 11 May 2019 13:37:10 GMT  
		Size: 4.9 KB (4895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2503ee128cdd08ff0a58de21cf1b41e202b66c3ba19af33414e652a034208`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.6 MB (1625900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8025c66a6c518e12254834a04966d90a8d96fe1a8ece0d2b02dd72db93cdeb79`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.0 MB (1028591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddbea420836ab50823c3c1682042d0306fef42064682b756c7967a19d7b353`  
		Last Modified: Thu, 06 Jun 2019 01:26:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476870cc53d42ee0f5c30b6400e9ed34f5e7ffc9d25a3debd81bb9f560be2b4`  
		Last Modified: Thu, 06 Jun 2019 01:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9709081f43cb21e588e517c46f8ac1c250272718a61a446d2d5dc321c860a489
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d44cda63be5d1f7c7054a2b211e6dee25085bdb35c86f69c257ecc67f4614a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 23 May 2019 21:41:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:59:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:59:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:59:10 GMT
USER memcache
# Wed, 05 Jun 2019 22:59:11 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:59:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f177c3d3e1466dadd60ae5159840c8532ca001f7b45710f034727ad2fc2532`  
		Last Modified: Wed, 29 May 2019 21:05:47 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14df8f0152e7ab3f5e7eea10baa407c437303cc75b6bd20443677572dbf6080`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.7 MB (1679037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a00a944b30134edfa72a2ddf027eec95d9d9158a80bc5c6a48a8dab13baf9c`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.0 MB (1038925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921b491d1039b87e8c0ba2d52b403c396306907970662ffffd4e5a4706b9719`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1f9ad7d40b2d5a011b3b0abf4a3f99eb164052662ad455123a8f4799a9fb0`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:558d7f87be6852215e25dcfb71ff5662cd41b1b62beb3ada33e131fdb21dadac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f856b761ff39f921265ccd69e142dd7286018fdc6709be6798d08dc0a439e9ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:20:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:46:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:57:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:57:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:57:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:57:45 GMT
USER memcache
# Wed, 05 Jun 2019 22:57:45 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:57:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9165bad2a168e865881c36673a14c56e93d18f3bd0dfa2ad05b22cfed71481`  
		Last Modified: Wed, 08 May 2019 19:26:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621d02b72bea12a0b3f6db3e502a55aa959dd77874a0478ceb3b27c41afef14f`  
		Last Modified: Wed, 05 Jun 2019 23:04:19 GMT  
		Size: 2.0 MB (1957571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26aadcc1f19ec302e6d37eb1b29f35f4e7cdff0c7fb51e0292c8f031c8109a`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 1.1 MB (1087912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e691cad5b150d3e320052595bde2039f5330098380597e6e08cb9b74988031e7`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b4af582169408f5b65959330e69c5ddbd5befa2113a810877b615d0447018`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:7bda7b4ead88b834882322027bcb4a6bb98aea0381cde7c2c3a7eed1f75534d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba413c5485dd551fa4b76bf7f3b1fa358062b623c4613ad5e9340d895964c1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:40:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:28:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:28:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:28:13 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:35:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:35:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:35:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:35:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:35:53 GMT
USER memcache
# Wed, 05 Jun 2019 23:35:56 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:35:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcb31c4f2b841b4505a5de0e60cee34247617f0488abb40a2075984fe58630`  
		Last Modified: Thu, 30 May 2019 18:56:43 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e021d3419f7aa10558404629f7a843d31d6ea4e3fab49a9aea0c96168f9629e7`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.6 MB (1641146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb72b8869fe4055851e198d7409cea04bb8dd1ecbac0fe51eed741162e29e6a`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.1 MB (1072704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1486485ce46b87913dc345d8d52ce9f835237603d5b7cdcc3aeda9c48865f47b`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb8d8b9999045ccc61de1ad3ea74cdd4921c371e63d519d359b99586f266ae`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:b36fed02bbb893e58284ba5018bbf877c4d4c754b91d14d3a79e56b8e7d0e8f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857d93cc442267041ffdc967d036d3187f2b00b52c29d35579dcade95534939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:49:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:49:43 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:49:44 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:54:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:54:13 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:54:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:54:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:54:15 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864b2cd7066486aecb00303cbb09ed5b7ae8c4c7c46b8cbd24b852496d9af2a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.7 MB (1692039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2812eb7d491f54a6882ee886dac468e5e62fc53d8beb69d0e66fbb1b081247`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.0 MB (1035824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47b7d9ea13868aa0e272b29240c977419a599013b7b5fc4574621cbf58f2b7`  
		Last Modified: Wed, 05 Jun 2019 22:59:04 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13a5c98b8a4e71e3dce6ca42e0902061b086684f495d35501c7d170852f74a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.16`

```console
$ docker pull memcached@sha256:daa1e689301cebe1863efad4efc6e6e06af2e707833d61081981c11aa3280aa7
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

### `memcached:1.5.16` - linux; amd64

```console
$ docker pull memcached@sha256:fc19246b6d994c852922937b5d0d8a108694673b04ccc3ca3199cef3410c18d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e24f541dde43c5e02dfd5a6058ac0c5202d4980a1849b36ebc2f43cabc1b64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:26:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:32:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:32:17 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:32:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:32:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:32:18 GMT
USER memcache
# Wed, 05 Jun 2019 23:32:18 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:32:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0b5939d95a673f64d4be601e09453850c01b91941a4572129fd51f9a2605`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 2.0 MB (1956975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2ea9f666c5cda7d512c54130faab6e25054c85724adc34a5724b8806bcd11e`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 1.1 MB (1080321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31daffaca16c63f566ca379139613247746ad030b08e55fbf36ce55909137de`  
		Last Modified: Wed, 05 Jun 2019 23:38:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b58c99f1d296fc7e964bcf6db3a155fedeaa1ad9846ed2f583279e7eed99511`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f886200367432abd66d6f5b80d95f106b4401db390444cb1754d3899788920c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22194292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab533be3fb46ac3405adcac2e133a00b9daf6fb154b64f582b445277a95aa2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:16:49 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 29 May 2019 21:47:55 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 29 May 2019 21:47:56 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 29 May 2019 22:29:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 29 May 2019 22:29:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 29 May 2019 22:29:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 29 May 2019 22:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 22:29:34 GMT
USER memcache
# Wed, 29 May 2019 22:29:36 GMT
EXPOSE 11211
# Wed, 29 May 2019 22:29:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fe35fc91e34dd54d4adf29a51a47b9d340e60b69d64a3fdac96ee070f4ac42`  
		Last Modified: Thu, 23 May 2019 22:32:40 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c5686dedb8aa970425adc9318f6bb8426062ae042166b3f6190236febca1c2`  
		Last Modified: Wed, 29 May 2019 22:30:02 GMT  
		Size: 1.0 MB (1033110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eacbdbc606d19d5806818bf88e819a0b9ce74f406efb513f48606d338fb120`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad23295f755e0af634146d73570a3447c05293105f25cd1aa6305af88150d4e`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a2cac2c67c8079ad94fa42db0c6c836d8b2834144fcbd8101a19cc0a107ad043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21936019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511ac189a889126013aa53485b26a1aca5773f79123130a6d8de12823a6db929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:27:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:51:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:51:34 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:51:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Thu, 06 Jun 2019 00:31:15 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Thu, 06 Jun 2019 00:31:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 06 Jun 2019 00:31:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jun 2019 00:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jun 2019 00:31:34 GMT
USER memcache
# Thu, 06 Jun 2019 00:31:36 GMT
EXPOSE 11211
# Thu, 06 Jun 2019 00:31:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f96b8c4b0dd6cdb14d863cbf6585aed7a38830243ac0c52e6350649f09d35ce`  
		Last Modified: Sat, 11 May 2019 13:37:10 GMT  
		Size: 4.9 KB (4895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2503ee128cdd08ff0a58de21cf1b41e202b66c3ba19af33414e652a034208`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.6 MB (1625900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8025c66a6c518e12254834a04966d90a8d96fe1a8ece0d2b02dd72db93cdeb79`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.0 MB (1028591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddbea420836ab50823c3c1682042d0306fef42064682b756c7967a19d7b353`  
		Last Modified: Thu, 06 Jun 2019 01:26:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476870cc53d42ee0f5c30b6400e9ed34f5e7ffc9d25a3debd81bb9f560be2b4`  
		Last Modified: Thu, 06 Jun 2019 01:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9709081f43cb21e588e517c46f8ac1c250272718a61a446d2d5dc321c860a489
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d44cda63be5d1f7c7054a2b211e6dee25085bdb35c86f69c257ecc67f4614a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 23 May 2019 21:41:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:59:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:59:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:59:10 GMT
USER memcache
# Wed, 05 Jun 2019 22:59:11 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:59:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f177c3d3e1466dadd60ae5159840c8532ca001f7b45710f034727ad2fc2532`  
		Last Modified: Wed, 29 May 2019 21:05:47 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14df8f0152e7ab3f5e7eea10baa407c437303cc75b6bd20443677572dbf6080`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.7 MB (1679037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a00a944b30134edfa72a2ddf027eec95d9d9158a80bc5c6a48a8dab13baf9c`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.0 MB (1038925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921b491d1039b87e8c0ba2d52b403c396306907970662ffffd4e5a4706b9719`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1f9ad7d40b2d5a011b3b0abf4a3f99eb164052662ad455123a8f4799a9fb0`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; 386

```console
$ docker pull memcached@sha256:558d7f87be6852215e25dcfb71ff5662cd41b1b62beb3ada33e131fdb21dadac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f856b761ff39f921265ccd69e142dd7286018fdc6709be6798d08dc0a439e9ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:20:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:46:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:57:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:57:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:57:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:57:45 GMT
USER memcache
# Wed, 05 Jun 2019 22:57:45 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:57:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9165bad2a168e865881c36673a14c56e93d18f3bd0dfa2ad05b22cfed71481`  
		Last Modified: Wed, 08 May 2019 19:26:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621d02b72bea12a0b3f6db3e502a55aa959dd77874a0478ceb3b27c41afef14f`  
		Last Modified: Wed, 05 Jun 2019 23:04:19 GMT  
		Size: 2.0 MB (1957571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26aadcc1f19ec302e6d37eb1b29f35f4e7cdff0c7fb51e0292c8f031c8109a`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 1.1 MB (1087912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e691cad5b150d3e320052595bde2039f5330098380597e6e08cb9b74988031e7`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b4af582169408f5b65959330e69c5ddbd5befa2113a810877b615d0447018`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; ppc64le

```console
$ docker pull memcached@sha256:7bda7b4ead88b834882322027bcb4a6bb98aea0381cde7c2c3a7eed1f75534d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba413c5485dd551fa4b76bf7f3b1fa358062b623c4613ad5e9340d895964c1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:40:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:28:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:28:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:28:13 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:35:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:35:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:35:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:35:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:35:53 GMT
USER memcache
# Wed, 05 Jun 2019 23:35:56 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:35:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcb31c4f2b841b4505a5de0e60cee34247617f0488abb40a2075984fe58630`  
		Last Modified: Thu, 30 May 2019 18:56:43 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e021d3419f7aa10558404629f7a843d31d6ea4e3fab49a9aea0c96168f9629e7`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.6 MB (1641146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb72b8869fe4055851e198d7409cea04bb8dd1ecbac0fe51eed741162e29e6a`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.1 MB (1072704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1486485ce46b87913dc345d8d52ce9f835237603d5b7cdcc3aeda9c48865f47b`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb8d8b9999045ccc61de1ad3ea74cdd4921c371e63d519d359b99586f266ae`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; s390x

```console
$ docker pull memcached@sha256:b36fed02bbb893e58284ba5018bbf877c4d4c754b91d14d3a79e56b8e7d0e8f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857d93cc442267041ffdc967d036d3187f2b00b52c29d35579dcade95534939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:49:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:49:43 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:49:44 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:54:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:54:13 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:54:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:54:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:54:15 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864b2cd7066486aecb00303cbb09ed5b7ae8c4c7c46b8cbd24b852496d9af2a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.7 MB (1692039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2812eb7d491f54a6882ee886dac468e5e62fc53d8beb69d0e66fbb1b081247`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.0 MB (1035824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47b7d9ea13868aa0e272b29240c977419a599013b7b5fc4574621cbf58f2b7`  
		Last Modified: Wed, 05 Jun 2019 22:59:04 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13a5c98b8a4e71e3dce6ca42e0902061b086684f495d35501c7d170852f74a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.16-alpine`

```console
$ docker pull memcached@sha256:ba0429a868a8ee195885f4896f715b92206c30e116736f38756fa44e3033a860
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

### `memcached:1.5.16-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:07955ea48bce4ab0b31ed69e835f699d3b79f486e43ccec5456afee09504091a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5560114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b818d42f06c9ed270e741296347b6d06516093a13666fc44f62e7802eff2fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:27:16 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:32:25 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:38:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:38:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:38:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:38:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:38:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f068b59d6a0b9e9502529a5786b94eaaabea8555694dbbd55e26c866f9b848d`  
		Last Modified: Sat, 11 May 2019 02:34:02 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a2927343cf962acfa0ba01047b55429f3f9741339f763ec1399ea577b3f20`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 15.2 KB (15153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3eb5b68391c282ba166887f5755c41b47b9331ed9d377dac28236e00a56ef`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 2.8 MB (2786271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a30930af554c072b86b01086bb8e9117098e7b9c6bcf7d26b9f1c6a990b1fd`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39afee6d6b2d452e3531b43e713a7747758b4396679092326eb8781a1cf7f4be`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:b40bdb8b56e0ccf191f9934e3046e81e18c217fc59c1f71cc96071ee778211cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee76d2e2a9b850bf89cf5ef4cf8c3b0cec0dd8c4ca845f4140ddee98c17f5bef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:21:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:52:11 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:52:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:52:12 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:16 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2ad2ae7a47794462262fd967fb9f4c245048522a9192f235b41effa82c8149`  
		Last Modified: Sat, 11 May 2019 09:28:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c7d0ad631b790a1eadf9599ecda140e39bd4924be051f723bdb94254bea95`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8cfee1dcdf4370aad8ec3c64af7d6af1dcb4b0899ffbe9384ddae4369651d`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 2.7 MB (2685095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1da37a7cdfcb4f195bcd7531926fe32e4e5bc2ee10873a8c3e9b5d64c1b4abf`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6209a8695b9068c39396ca97d86e4f6fd1bdc42b2c37ec4555ecfbb40756131`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16-alpine` - linux; arm variant v7

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

### `memcached:1.5.16-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c9d4fb0f075e6e5faa77674e5dde870f6f48846f7ce91cbea6685c1f47c4f97a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5469229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527e8ebeecfb350dc189d511479ff5819f2dde946a3c178a53b3e2850e3f952c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:00:28 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:59:21 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:17:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:17:26 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:17:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:29 GMT
USER memcache
# Wed, 05 Jun 2019 23:17:29 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:17:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3726b84045900faed28cc9aefe046fb99e0a5f8c0dbfbb82f57da203583193b`  
		Last Modified: Thu, 23 May 2019 22:13:07 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263582021fa291640d4483a1867fa5c639124bee6745124d02568f5631f7bc15`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 15.4 KB (15405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf164967a95538aa36871660db664ddcc0d2ea28ef88897c8fa204d75eff0c`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 2.8 MB (2763357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca322deb5eed4831ed947f472728399ea88adc1d17ed6b74a4db28c8028876`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b667547d8a7a158a173c4d363b6d99d6ae95d7b9b384563be092aa8e132012a`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16-alpine` - linux; 386

```console
$ docker pull memcached@sha256:3d6bb9074e7164fa9727a9e558c24c1dbf61f3a166e0c5cf468770d6b1d0f4ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5632889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9217a2bf321bd271a903bd8c141fb95fad297d0c10c61154506e7b5118442d37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:33:41 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:57:57 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:04:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:04:07 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:04:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:04:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:04:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:04:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccf1fc6a72e53b492f2b68d7452f6f87756082540c65ebf36cf2cd96684575f`  
		Last Modified: Sat, 11 May 2019 13:39:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4418445da93345d40dc35ccacff097cd483c70d9a077ef7aadeb02730a6a1b`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 16.2 KB (16162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d68cabb0af936fcfdd5551214331302e1d8a2c1df67aebec747de9fc2bcdb0`  
		Last Modified: Wed, 05 Jun 2019 23:04:25 GMT  
		Size: 2.9 MB (2862978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ce0fa11d283ce76bfe923b900c29ceb9156139f4b560f743733bbb0afafddd`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ba6c2cabb24ae2e397e45231e22feacad86370fc6920f85881cb763d27435`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1de5c5e850f8e4e48a0c80c4e2c33ac2804565ab72cff03c8f9731a0b37398bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5623010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49c4f72f4706b2353ab4be8c406c8275ec789ecbf7d130c24e332a093e45812`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:49:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:36:14 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:36:15 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:36:17 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:42:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:42:21 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:42:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:42:31 GMT
USER memcache
# Wed, 05 Jun 2019 23:42:33 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940c43adcc86947115e18437c0e24485bf280f0c972bd86ac091034724f8a110`  
		Last Modified: Thu, 30 May 2019 18:56:58 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6366904ce849dd37026579a547a1ebd6c1ebf2e76d2e1c5c61fb253a14ad5f48`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 16.0 KB (16005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e934cffe3ab361cd727edc2f4c502c7cc120831ad991c1d7554be27c609912`  
		Last Modified: Wed, 05 Jun 2019 23:43:17 GMT  
		Size: 2.8 MB (2824295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa4fa49d60fd240b2dec6ccf9fa4cbe9430f09b4701359b3b940da0ad528d41`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53621c44ea88af7cace44ebcd6c02cfbf79822555a1ad295cd4847f9333d07`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c04c6500cd259b15f7e54be368cd3f2172c74e708a218e232ab09c197208f14a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5225116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c6ae55a146d7f422d41ef98f90628df55759405fbe56cec79d13f860507cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:22:15 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:54:35 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:54:35 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:54:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:25 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:26 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becf8ffae887639c699db529f2b4bc2633548df1d01ccbc04d14e051599b478b`  
		Last Modified: Sat, 11 May 2019 12:25:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc12358b5a6a98e12d8078b4c26c5487e091ba1a1210ae2a0078ae3a16d5066`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 15.3 KB (15257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a39cb0554c1ac5437fcc9844eda82a775833bfb89ae1a6488dc6ba0724a845e`  
		Last Modified: Wed, 05 Jun 2019 22:59:14 GMT  
		Size: 2.7 MB (2664867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e02a8c7ba4887b482f2ca964d3b6949f463dd5f58c8f9d4c622f59259ef74b`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e07ad03a83d23becb3078bc6c19fffd7ddf6f03119b24ecc4a024354d3953e`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:ba0429a868a8ee195885f4896f715b92206c30e116736f38756fa44e3033a860
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

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:07955ea48bce4ab0b31ed69e835f699d3b79f486e43ccec5456afee09504091a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5560114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b818d42f06c9ed270e741296347b6d06516093a13666fc44f62e7802eff2fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:27:16 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:32:25 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:38:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:38:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:38:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:38:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:38:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f068b59d6a0b9e9502529a5786b94eaaabea8555694dbbd55e26c866f9b848d`  
		Last Modified: Sat, 11 May 2019 02:34:02 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a2927343cf962acfa0ba01047b55429f3f9741339f763ec1399ea577b3f20`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 15.2 KB (15153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3eb5b68391c282ba166887f5755c41b47b9331ed9d377dac28236e00a56ef`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 2.8 MB (2786271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a30930af554c072b86b01086bb8e9117098e7b9c6bcf7d26b9f1c6a990b1fd`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39afee6d6b2d452e3531b43e713a7747758b4396679092326eb8781a1cf7f4be`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:b40bdb8b56e0ccf191f9934e3046e81e18c217fc59c1f71cc96071ee778211cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee76d2e2a9b850bf89cf5ef4cf8c3b0cec0dd8c4ca845f4140ddee98c17f5bef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:21:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:52:11 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:52:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:52:12 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:16 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2ad2ae7a47794462262fd967fb9f4c245048522a9192f235b41effa82c8149`  
		Last Modified: Sat, 11 May 2019 09:28:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c7d0ad631b790a1eadf9599ecda140e39bd4924be051f723bdb94254bea95`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8cfee1dcdf4370aad8ec3c64af7d6af1dcb4b0899ffbe9384ddae4369651d`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 2.7 MB (2685095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1da37a7cdfcb4f195bcd7531926fe32e4e5bc2ee10873a8c3e9b5d64c1b4abf`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6209a8695b9068c39396ca97d86e4f6fd1bdc42b2c37ec4555ecfbb40756131`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v7

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

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c9d4fb0f075e6e5faa77674e5dde870f6f48846f7ce91cbea6685c1f47c4f97a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5469229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527e8ebeecfb350dc189d511479ff5819f2dde946a3c178a53b3e2850e3f952c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:00:28 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:59:21 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:17:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:17:26 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:17:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:29 GMT
USER memcache
# Wed, 05 Jun 2019 23:17:29 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:17:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3726b84045900faed28cc9aefe046fb99e0a5f8c0dbfbb82f57da203583193b`  
		Last Modified: Thu, 23 May 2019 22:13:07 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263582021fa291640d4483a1867fa5c639124bee6745124d02568f5631f7bc15`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 15.4 KB (15405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf164967a95538aa36871660db664ddcc0d2ea28ef88897c8fa204d75eff0c`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 2.8 MB (2763357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca322deb5eed4831ed947f472728399ea88adc1d17ed6b74a4db28c8028876`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b667547d8a7a158a173c4d363b6d99d6ae95d7b9b384563be092aa8e132012a`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:3d6bb9074e7164fa9727a9e558c24c1dbf61f3a166e0c5cf468770d6b1d0f4ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5632889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9217a2bf321bd271a903bd8c141fb95fad297d0c10c61154506e7b5118442d37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:33:41 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:57:57 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:04:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:04:07 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:04:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:04:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:04:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:04:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccf1fc6a72e53b492f2b68d7452f6f87756082540c65ebf36cf2cd96684575f`  
		Last Modified: Sat, 11 May 2019 13:39:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4418445da93345d40dc35ccacff097cd483c70d9a077ef7aadeb02730a6a1b`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 16.2 KB (16162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d68cabb0af936fcfdd5551214331302e1d8a2c1df67aebec747de9fc2bcdb0`  
		Last Modified: Wed, 05 Jun 2019 23:04:25 GMT  
		Size: 2.9 MB (2862978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ce0fa11d283ce76bfe923b900c29ceb9156139f4b560f743733bbb0afafddd`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ba6c2cabb24ae2e397e45231e22feacad86370fc6920f85881cb763d27435`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1de5c5e850f8e4e48a0c80c4e2c33ac2804565ab72cff03c8f9731a0b37398bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5623010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49c4f72f4706b2353ab4be8c406c8275ec789ecbf7d130c24e332a093e45812`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:49:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:36:14 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:36:15 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:36:17 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:42:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:42:21 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:42:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:42:31 GMT
USER memcache
# Wed, 05 Jun 2019 23:42:33 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940c43adcc86947115e18437c0e24485bf280f0c972bd86ac091034724f8a110`  
		Last Modified: Thu, 30 May 2019 18:56:58 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6366904ce849dd37026579a547a1ebd6c1ebf2e76d2e1c5c61fb253a14ad5f48`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 16.0 KB (16005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e934cffe3ab361cd727edc2f4c502c7cc120831ad991c1d7554be27c609912`  
		Last Modified: Wed, 05 Jun 2019 23:43:17 GMT  
		Size: 2.8 MB (2824295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa4fa49d60fd240b2dec6ccf9fa4cbe9430f09b4701359b3b940da0ad528d41`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53621c44ea88af7cace44ebcd6c02cfbf79822555a1ad295cd4847f9333d07`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c04c6500cd259b15f7e54be368cd3f2172c74e708a218e232ab09c197208f14a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5225116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c6ae55a146d7f422d41ef98f90628df55759405fbe56cec79d13f860507cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:22:15 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:54:35 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:54:35 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:54:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:25 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:26 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becf8ffae887639c699db529f2b4bc2633548df1d01ccbc04d14e051599b478b`  
		Last Modified: Sat, 11 May 2019 12:25:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc12358b5a6a98e12d8078b4c26c5487e091ba1a1210ae2a0078ae3a16d5066`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 15.3 KB (15257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a39cb0554c1ac5437fcc9844eda82a775833bfb89ae1a6488dc6ba0724a845e`  
		Last Modified: Wed, 05 Jun 2019 22:59:14 GMT  
		Size: 2.7 MB (2664867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e02a8c7ba4887b482f2ca964d3b6949f463dd5f58c8f9d4c622f59259ef74b`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e07ad03a83d23becb3078bc6c19fffd7ddf6f03119b24ecc4a024354d3953e`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:ba0429a868a8ee195885f4896f715b92206c30e116736f38756fa44e3033a860
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
$ docker pull memcached@sha256:07955ea48bce4ab0b31ed69e835f699d3b79f486e43ccec5456afee09504091a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5560114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b818d42f06c9ed270e741296347b6d06516093a13666fc44f62e7802eff2fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:27:16 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:32:25 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:38:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:38:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:38:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:38:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:38:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f068b59d6a0b9e9502529a5786b94eaaabea8555694dbbd55e26c866f9b848d`  
		Last Modified: Sat, 11 May 2019 02:34:02 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a2927343cf962acfa0ba01047b55429f3f9741339f763ec1399ea577b3f20`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 15.2 KB (15153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3eb5b68391c282ba166887f5755c41b47b9331ed9d377dac28236e00a56ef`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 2.8 MB (2786271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a30930af554c072b86b01086bb8e9117098e7b9c6bcf7d26b9f1c6a990b1fd`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39afee6d6b2d452e3531b43e713a7747758b4396679092326eb8781a1cf7f4be`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:b40bdb8b56e0ccf191f9934e3046e81e18c217fc59c1f71cc96071ee778211cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee76d2e2a9b850bf89cf5ef4cf8c3b0cec0dd8c4ca845f4140ddee98c17f5bef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:21:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:52:11 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:52:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:52:12 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:16 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2ad2ae7a47794462262fd967fb9f4c245048522a9192f235b41effa82c8149`  
		Last Modified: Sat, 11 May 2019 09:28:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c7d0ad631b790a1eadf9599ecda140e39bd4924be051f723bdb94254bea95`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8cfee1dcdf4370aad8ec3c64af7d6af1dcb4b0899ffbe9384ddae4369651d`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 2.7 MB (2685095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1da37a7cdfcb4f195bcd7531926fe32e4e5bc2ee10873a8c3e9b5d64c1b4abf`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6209a8695b9068c39396ca97d86e4f6fd1bdc42b2c37ec4555ecfbb40756131`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
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
$ docker pull memcached@sha256:c9d4fb0f075e6e5faa77674e5dde870f6f48846f7ce91cbea6685c1f47c4f97a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5469229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527e8ebeecfb350dc189d511479ff5819f2dde946a3c178a53b3e2850e3f952c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:00:28 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:59:21 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:17:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:17:26 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:17:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:29 GMT
USER memcache
# Wed, 05 Jun 2019 23:17:29 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:17:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3726b84045900faed28cc9aefe046fb99e0a5f8c0dbfbb82f57da203583193b`  
		Last Modified: Thu, 23 May 2019 22:13:07 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263582021fa291640d4483a1867fa5c639124bee6745124d02568f5631f7bc15`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 15.4 KB (15405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf164967a95538aa36871660db664ddcc0d2ea28ef88897c8fa204d75eff0c`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 2.8 MB (2763357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca322deb5eed4831ed947f472728399ea88adc1d17ed6b74a4db28c8028876`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b667547d8a7a158a173c4d363b6d99d6ae95d7b9b384563be092aa8e132012a`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:3d6bb9074e7164fa9727a9e558c24c1dbf61f3a166e0c5cf468770d6b1d0f4ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5632889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9217a2bf321bd271a903bd8c141fb95fad297d0c10c61154506e7b5118442d37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:33:41 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:57:57 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:04:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:04:07 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:04:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:04:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:04:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:04:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccf1fc6a72e53b492f2b68d7452f6f87756082540c65ebf36cf2cd96684575f`  
		Last Modified: Sat, 11 May 2019 13:39:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4418445da93345d40dc35ccacff097cd483c70d9a077ef7aadeb02730a6a1b`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 16.2 KB (16162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d68cabb0af936fcfdd5551214331302e1d8a2c1df67aebec747de9fc2bcdb0`  
		Last Modified: Wed, 05 Jun 2019 23:04:25 GMT  
		Size: 2.9 MB (2862978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ce0fa11d283ce76bfe923b900c29ceb9156139f4b560f743733bbb0afafddd`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ba6c2cabb24ae2e397e45231e22feacad86370fc6920f85881cb763d27435`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1de5c5e850f8e4e48a0c80c4e2c33ac2804565ab72cff03c8f9731a0b37398bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5623010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49c4f72f4706b2353ab4be8c406c8275ec789ecbf7d130c24e332a093e45812`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:49:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:36:14 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:36:15 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:36:17 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:42:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:42:21 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:42:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:42:31 GMT
USER memcache
# Wed, 05 Jun 2019 23:42:33 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940c43adcc86947115e18437c0e24485bf280f0c972bd86ac091034724f8a110`  
		Last Modified: Thu, 30 May 2019 18:56:58 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6366904ce849dd37026579a547a1ebd6c1ebf2e76d2e1c5c61fb253a14ad5f48`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 16.0 KB (16005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e934cffe3ab361cd727edc2f4c502c7cc120831ad991c1d7554be27c609912`  
		Last Modified: Wed, 05 Jun 2019 23:43:17 GMT  
		Size: 2.8 MB (2824295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa4fa49d60fd240b2dec6ccf9fa4cbe9430f09b4701359b3b940da0ad528d41`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53621c44ea88af7cace44ebcd6c02cfbf79822555a1ad295cd4847f9333d07`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c04c6500cd259b15f7e54be368cd3f2172c74e708a218e232ab09c197208f14a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5225116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c6ae55a146d7f422d41ef98f90628df55759405fbe56cec79d13f860507cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:22:15 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:54:35 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:54:35 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:54:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:25 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:26 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becf8ffae887639c699db529f2b4bc2633548df1d01ccbc04d14e051599b478b`  
		Last Modified: Sat, 11 May 2019 12:25:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc12358b5a6a98e12d8078b4c26c5487e091ba1a1210ae2a0078ae3a16d5066`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 15.3 KB (15257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a39cb0554c1ac5437fcc9844eda82a775833bfb89ae1a6488dc6ba0724a845e`  
		Last Modified: Wed, 05 Jun 2019 22:59:14 GMT  
		Size: 2.7 MB (2664867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e02a8c7ba4887b482f2ca964d3b6949f463dd5f58c8f9d4c622f59259ef74b`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e07ad03a83d23becb3078bc6c19fffd7ddf6f03119b24ecc4a024354d3953e`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:ba0429a868a8ee195885f4896f715b92206c30e116736f38756fa44e3033a860
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

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:07955ea48bce4ab0b31ed69e835f699d3b79f486e43ccec5456afee09504091a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5560114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b818d42f06c9ed270e741296347b6d06516093a13666fc44f62e7802eff2fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:27:16 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:32:25 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:32:26 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:38:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:38:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:38:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:38:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:38:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:38:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f068b59d6a0b9e9502529a5786b94eaaabea8555694dbbd55e26c866f9b848d`  
		Last Modified: Sat, 11 May 2019 02:34:02 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861a2927343cf962acfa0ba01047b55429f3f9741339f763ec1399ea577b3f20`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 15.2 KB (15153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3eb5b68391c282ba166887f5755c41b47b9331ed9d377dac28236e00a56ef`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 2.8 MB (2786271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a30930af554c072b86b01086bb8e9117098e7b9c6bcf7d26b9f1c6a990b1fd`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39afee6d6b2d452e3531b43e713a7747758b4396679092326eb8781a1cf7f4be`  
		Last Modified: Wed, 05 Jun 2019 23:38:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:b40bdb8b56e0ccf191f9934e3046e81e18c217fc59c1f71cc96071ee778211cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee76d2e2a9b850bf89cf5ef4cf8c3b0cec0dd8c4ca845f4140ddee98c17f5bef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:21:56 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:52:11 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:52:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:52:12 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:11 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:16 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2ad2ae7a47794462262fd967fb9f4c245048522a9192f235b41effa82c8149`  
		Last Modified: Sat, 11 May 2019 09:28:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c7d0ad631b790a1eadf9599ecda140e39bd4924be051f723bdb94254bea95`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 14.4 KB (14426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8cfee1dcdf4370aad8ec3c64af7d6af1dcb4b0899ffbe9384ddae4369651d`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 2.7 MB (2685095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1da37a7cdfcb4f195bcd7531926fe32e4e5bc2ee10873a8c3e9b5d64c1b4abf`  
		Last Modified: Wed, 05 Jun 2019 22:58:34 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6209a8695b9068c39396ca97d86e4f6fd1bdc42b2c37ec4555ecfbb40756131`  
		Last Modified: Wed, 05 Jun 2019 22:58:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v7

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

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c9d4fb0f075e6e5faa77674e5dde870f6f48846f7ce91cbea6685c1f47c4f97a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5469229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527e8ebeecfb350dc189d511479ff5819f2dde946a3c178a53b3e2850e3f952c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:00:28 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:59:21 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:59:22 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:17:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:17:26 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:17:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:29 GMT
USER memcache
# Wed, 05 Jun 2019 23:17:29 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:17:30 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3726b84045900faed28cc9aefe046fb99e0a5f8c0dbfbb82f57da203583193b`  
		Last Modified: Thu, 23 May 2019 22:13:07 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263582021fa291640d4483a1867fa5c639124bee6745124d02568f5631f7bc15`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 15.4 KB (15405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf164967a95538aa36871660db664ddcc0d2ea28ef88897c8fa204d75eff0c`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 2.8 MB (2763357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca322deb5eed4831ed947f472728399ea88adc1d17ed6b74a4db28c8028876`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b667547d8a7a158a173c4d363b6d99d6ae95d7b9b384563be092aa8e132012a`  
		Last Modified: Wed, 05 Jun 2019 23:18:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:3d6bb9074e7164fa9727a9e558c24c1dbf61f3a166e0c5cf468770d6b1d0f4ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5632889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9217a2bf321bd271a903bd8c141fb95fad297d0c10c61154506e7b5118442d37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:33:41 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:57:57 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:57:57 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:04:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:04:07 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:04:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:04:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:04:09 GMT
USER memcache
# Wed, 05 Jun 2019 23:04:09 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:04:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccf1fc6a72e53b492f2b68d7452f6f87756082540c65ebf36cf2cd96684575f`  
		Last Modified: Sat, 11 May 2019 13:39:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4418445da93345d40dc35ccacff097cd483c70d9a077ef7aadeb02730a6a1b`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 16.2 KB (16162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d68cabb0af936fcfdd5551214331302e1d8a2c1df67aebec747de9fc2bcdb0`  
		Last Modified: Wed, 05 Jun 2019 23:04:25 GMT  
		Size: 2.9 MB (2862978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ce0fa11d283ce76bfe923b900c29ceb9156139f4b560f743733bbb0afafddd`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08ba6c2cabb24ae2e397e45231e22feacad86370fc6920f85881cb763d27435`  
		Last Modified: Wed, 05 Jun 2019 23:04:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1de5c5e850f8e4e48a0c80c4e2c33ac2804565ab72cff03c8f9731a0b37398bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5623010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d49c4f72f4706b2353ab4be8c406c8275ec789ecbf7d130c24e332a093e45812`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Thu, 30 May 2019 18:49:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 23:36:14 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 23:36:15 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:36:17 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:42:19 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 23:42:21 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:42:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:42:31 GMT
USER memcache
# Wed, 05 Jun 2019 23:42:33 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:42:36 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940c43adcc86947115e18437c0e24485bf280f0c972bd86ac091034724f8a110`  
		Last Modified: Thu, 30 May 2019 18:56:58 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6366904ce849dd37026579a547a1ebd6c1ebf2e76d2e1c5c61fb253a14ad5f48`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 16.0 KB (16005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e934cffe3ab361cd727edc2f4c502c7cc120831ad991c1d7554be27c609912`  
		Last Modified: Wed, 05 Jun 2019 23:43:17 GMT  
		Size: 2.8 MB (2824295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa4fa49d60fd240b2dec6ccf9fa4cbe9430f09b4701359b3b940da0ad528d41`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53621c44ea88af7cace44ebcd6c02cfbf79822555a1ad295cd4847f9333d07`  
		Last Modified: Wed, 05 Jun 2019 23:43:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:c04c6500cd259b15f7e54be368cd3f2172c74e708a218e232ab09c197208f14a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5225116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c6ae55a146d7f422d41ef98f90628df55759405fbe56cec79d13f860507cca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:22:15 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Wed, 05 Jun 2019 22:54:35 GMT
RUN apk add --no-cache cyrus-sasl-plain
# Wed, 05 Jun 2019 22:54:35 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:54:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:58:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 05 Jun 2019 22:58:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:58:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:58:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:58:25 GMT
USER memcache
# Wed, 05 Jun 2019 22:58:26 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:58:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becf8ffae887639c699db529f2b4bc2633548df1d01ccbc04d14e051599b478b`  
		Last Modified: Sat, 11 May 2019 12:25:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc12358b5a6a98e12d8078b4c26c5487e091ba1a1210ae2a0078ae3a16d5066`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 15.3 KB (15257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a39cb0554c1ac5437fcc9844eda82a775833bfb89ae1a6488dc6ba0724a845e`  
		Last Modified: Wed, 05 Jun 2019 22:59:14 GMT  
		Size: 2.7 MB (2664867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e02a8c7ba4887b482f2ca964d3b6949f463dd5f58c8f9d4c622f59259ef74b`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e07ad03a83d23becb3078bc6c19fffd7ddf6f03119b24ecc4a024354d3953e`  
		Last Modified: Wed, 05 Jun 2019 22:59:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:daa1e689301cebe1863efad4efc6e6e06af2e707833d61081981c11aa3280aa7
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
$ docker pull memcached@sha256:fc19246b6d994c852922937b5d0d8a108694673b04ccc3ca3199cef3410c18d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e24f541dde43c5e02dfd5a6058ac0c5202d4980a1849b36ebc2f43cabc1b64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:26:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:26:28 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:32:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:32:17 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:32:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:32:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:32:18 GMT
USER memcache
# Wed, 05 Jun 2019 23:32:18 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:32:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d426054b20f1adcf09d20ba2857b17cab3bc04d15bbc22f067e7f2856b0582f`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6a0b5939d95a673f64d4be601e09453850c01b91941a4572129fd51f9a2605`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 2.0 MB (1956975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2ea9f666c5cda7d512c54130faab6e25054c85724adc34a5724b8806bcd11e`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 1.1 MB (1080321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31daffaca16c63f566ca379139613247746ad030b08e55fbf36ce55909137de`  
		Last Modified: Wed, 05 Jun 2019 23:38:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b58c99f1d296fc7e964bcf6db3a155fedeaa1ad9846ed2f583279e7eed99511`  
		Last Modified: Wed, 05 Jun 2019 23:38:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:f886200367432abd66d6f5b80d95f106b4401db390444cb1754d3899788920c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22194292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab533be3fb46ac3405adcac2e133a00b9daf6fb154b64f582b445277a95aa2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:16:49 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 29 May 2019 21:47:55 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 29 May 2019 21:47:56 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 29 May 2019 22:29:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 29 May 2019 22:29:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 29 May 2019 22:29:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 29 May 2019 22:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 May 2019 22:29:34 GMT
USER memcache
# Wed, 29 May 2019 22:29:36 GMT
EXPOSE 11211
# Wed, 29 May 2019 22:29:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fe35fc91e34dd54d4adf29a51a47b9d340e60b69d64a3fdac96ee070f4ac42`  
		Last Modified: Thu, 23 May 2019 22:32:40 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c5686dedb8aa970425adc9318f6bb8426062ae042166b3f6190236febca1c2`  
		Last Modified: Wed, 29 May 2019 22:30:02 GMT  
		Size: 1.0 MB (1033110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eacbdbc606d19d5806818bf88e819a0b9ce74f406efb513f48606d338fb120`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad23295f755e0af634146d73570a3447c05293105f25cd1aa6305af88150d4e`  
		Last Modified: Wed, 29 May 2019 22:30:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a2cac2c67c8079ad94fa42db0c6c836d8b2834144fcbd8101a19cc0a107ad043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21936019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511ac189a889126013aa53485b26a1aca5773f79123130a6d8de12823a6db929`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:27:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:51:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:51:34 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:51:36 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Thu, 06 Jun 2019 00:31:15 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Thu, 06 Jun 2019 00:31:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 06 Jun 2019 00:31:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Jun 2019 00:31:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Jun 2019 00:31:34 GMT
USER memcache
# Thu, 06 Jun 2019 00:31:36 GMT
EXPOSE 11211
# Thu, 06 Jun 2019 00:31:38 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f96b8c4b0dd6cdb14d863cbf6585aed7a38830243ac0c52e6350649f09d35ce`  
		Last Modified: Sat, 11 May 2019 13:37:10 GMT  
		Size: 4.9 KB (4895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2503ee128cdd08ff0a58de21cf1b41e202b66c3ba19af33414e652a034208`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.6 MB (1625900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8025c66a6c518e12254834a04966d90a8d96fe1a8ece0d2b02dd72db93cdeb79`  
		Last Modified: Thu, 06 Jun 2019 01:26:45 GMT  
		Size: 1.0 MB (1028591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ddbea420836ab50823c3c1682042d0306fef42064682b756c7967a19d7b353`  
		Last Modified: Thu, 06 Jun 2019 01:26:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476870cc53d42ee0f5c30b6400e9ed34f5e7ffc9d25a3debd81bb9f560be2b4`  
		Last Modified: Thu, 06 Jun 2019 01:26:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9709081f43cb21e588e517c46f8ac1c250272718a61a446d2d5dc321c860a489
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d44cda63be5d1f7c7054a2b211e6dee25085bdb35c86f69c257ecc67f4614a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Thu, 23 May 2019 21:41:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:53:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:53:09 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:59:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:59:08 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:59:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:59:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:59:10 GMT
USER memcache
# Wed, 05 Jun 2019 22:59:11 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:59:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f177c3d3e1466dadd60ae5159840c8532ca001f7b45710f034727ad2fc2532`  
		Last Modified: Wed, 29 May 2019 21:05:47 GMT  
		Size: 5.0 KB (5031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14df8f0152e7ab3f5e7eea10baa407c437303cc75b6bd20443677572dbf6080`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.7 MB (1679037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a00a944b30134edfa72a2ddf027eec95d9d9158a80bc5c6a48a8dab13baf9c`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 1.0 MB (1038925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1921b491d1039b87e8c0ba2d52b403c396306907970662ffffd4e5a4706b9719`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1f9ad7d40b2d5a011b3b0abf4a3f99eb164052662ad455123a8f4799a9fb0`  
		Last Modified: Wed, 05 Jun 2019 23:17:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:558d7f87be6852215e25dcfb71ff5662cd41b1b62beb3ada33e131fdb21dadac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f856b761ff39f921265ccd69e142dd7286018fdc6709be6798d08dc0a439e9ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:20:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:46:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:46:01 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:57:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:57:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:57:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:57:45 GMT
USER memcache
# Wed, 05 Jun 2019 22:57:45 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:57:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9165bad2a168e865881c36673a14c56e93d18f3bd0dfa2ad05b22cfed71481`  
		Last Modified: Wed, 08 May 2019 19:26:52 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621d02b72bea12a0b3f6db3e502a55aa959dd77874a0478ceb3b27c41afef14f`  
		Last Modified: Wed, 05 Jun 2019 23:04:19 GMT  
		Size: 2.0 MB (1957571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26aadcc1f19ec302e6d37eb1b29f35f4e7cdff0c7fb51e0292c8f031c8109a`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 1.1 MB (1087912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e691cad5b150d3e320052595bde2039f5330098380597e6e08cb9b74988031e7`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b4af582169408f5b65959330e69c5ddbd5befa2113a810877b615d0447018`  
		Last Modified: Wed, 05 Jun 2019 23:04:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:7bda7b4ead88b834882322027bcb4a6bb98aea0381cde7c2c3a7eed1f75534d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba413c5485dd551fa4b76bf7f3b1fa358062b623c4613ad5e9340d895964c1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Thu, 30 May 2019 18:40:43 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 23:28:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:28:11 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 23:28:13 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 23:35:42 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 23:35:42 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:35:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 23:35:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:35:53 GMT
USER memcache
# Wed, 05 Jun 2019 23:35:56 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 23:35:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bcb31c4f2b841b4505a5de0e60cee34247617f0488abb40a2075984fe58630`  
		Last Modified: Thu, 30 May 2019 18:56:43 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e021d3419f7aa10558404629f7a843d31d6ea4e3fab49a9aea0c96168f9629e7`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.6 MB (1641146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb72b8869fe4055851e198d7409cea04bb8dd1ecbac0fe51eed741162e29e6a`  
		Last Modified: Wed, 05 Jun 2019 23:43:00 GMT  
		Size: 1.1 MB (1072704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1486485ce46b87913dc345d8d52ce9f835237603d5b7cdcc3aeda9c48865f47b`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb8d8b9999045ccc61de1ad3ea74cdd4921c371e63d519d359b99586f266ae`  
		Last Modified: Wed, 05 Jun 2019 23:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:b36fed02bbb893e58284ba5018bbf877c4d4c754b91d14d3a79e56b8e7d0e8f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c857d93cc442267041ffdc967d036d3187f2b00b52c29d35579dcade95534939`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 05 Jun 2019 22:49:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 22:49:43 GMT
ENV MEMCACHED_VERSION=1.5.16
# Wed, 05 Jun 2019 22:49:44 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Wed, 05 Jun 2019 22:54:12 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Wed, 05 Jun 2019 22:54:13 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:54:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Jun 2019 22:54:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:54:15 GMT
USER memcache
# Wed, 05 Jun 2019 22:54:15 GMT
EXPOSE 11211
# Wed, 05 Jun 2019 22:54:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36798865fbca3ec6db67583993c06bf7c9eef385c3ab2b85b0b9f52d898f2427`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7864b2cd7066486aecb00303cbb09ed5b7ae8c4c7c46b8cbd24b852496d9af2a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.7 MB (1692039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2812eb7d491f54a6882ee886dac468e5e62fc53d8beb69d0e66fbb1b081247`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 1.0 MB (1035824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef47b7d9ea13868aa0e272b29240c977419a599013b7b5fc4574621cbf58f2b7`  
		Last Modified: Wed, 05 Jun 2019 22:59:04 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13a5c98b8a4e71e3dce6ca42e0902061b086684f495d35501c7d170852f74a`  
		Last Modified: Wed, 05 Jun 2019 22:59:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

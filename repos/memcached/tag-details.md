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
$ docker pull memcached@sha256:5d1d9bdd12197ead02a0744d5950ba6f31d0d2fa50076dc8babbc8d8b9abe567
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
$ docker pull memcached@sha256:7e4580913221dd37bc06036134c6f232e85b4c12936cb2ad4c21a3dd01f07044
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8ed9aa9b7e6715c9b4cd2ac9ac2f89a8723c1b5bd729502f78e31129fc0723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:12:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:19:02 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:19:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:19:04 GMT
USER memcache
# Tue, 11 Jun 2019 00:19:05 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8621af3d6f80279321d65ea20a27c1f4b22d1f2545153a3bdba4ee0e31b7087`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc497fea65dde0c563c13926f60c3dd9865f9c47654079286eace91ff32e416`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 2.0 MB (1956988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334430e3ffea8d5d74e563d6f30aa6d306664286544ee21fd3e8137a0b54ffab`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 1.1 MB (1080340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0d547eec187d8e2ee1eebedb597e741f8e88daee45a951ed9d393a42a9bc2d`  
		Last Modified: Tue, 11 Jun 2019 00:19:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94bd584c897edfdd49df68ab65a504b2c4f111c040dded81ba1f2eed47362c0`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c8166e319ec86c65a801a8a0b76284c1a0e8591381dc0caef02ef5d44d7afd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23911613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015d50b5faf6ff28660f048b59f71a4cb30a6d19eb73adae3452917e379e775d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:18:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:18:40 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:18:41 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:38:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:39:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:39:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:39:16 GMT
USER memcache
# Tue, 11 Jun 2019 00:39:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d43a58a0973b0af0f0bfb5a47b5898e1254254d766776b2900dc3ce9bb7a27`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e9cc8a293c7f4a15fa793d91b0d4b20547d75305b33fb0a620669d3ba3d76c`  
		Last Modified: Tue, 11 Jun 2019 00:39:41 GMT  
		Size: 1.7 MB (1689870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a456df7d2ec6da3dc69acb5d643148850a48edbc0740a62efd307ae1e5c3b27b`  
		Last Modified: Tue, 11 Jun 2019 00:39:40 GMT  
		Size: 1.1 MB (1060588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6401b04d7be8d171d9d6273ac608c4313280446ee19973bd852f4ebab66cbbe2`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dba0d7a506b90bb19bfecaada760af0c253405ec7064d180a3d7062288b3a94`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:145723af17ae9975350a57f4b1d4498a6404de1115c7259a2f7114c2d0469217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21935915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0723f300d171d19021b666fb1d94612f2e808888042292efaab594517a912a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:43:04 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:43:06 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 01:02:59 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 01:03:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:03:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 01:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:03:18 GMT
USER memcache
# Tue, 11 Jun 2019 01:03:19 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 01:03:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24c78591f19588f05229cf77c07bc8db0fa14437163e8da06e04802e9e833bd`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c226c1f892ef7aecbdd0925e9df3ead8098f3f62545158a8b74e8e1b80b338`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.6 MB (1625874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc6b5b63df918ed8c960d894028426d3d82d9dac2e85571f9c3abd0346fb003`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.0 MB (1028543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61c355f124055b47a4b4dd7701fa316df6b74b93c515bc6bf66d7cbaa34764`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5ef2138ef74e8da764d79ea89ea0f59dce011a8758df2741ff83fdac1fc52a`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:ff9d42496253b76159e3dc324e429ef116b67188f76ee95f04297e3312047252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dee77c1c66bfec89ade779415291bb1b441ea0d7d7479e97bb4f6963755ab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:22:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 03:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 03:40:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 03:40:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 03:40:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 03:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 03:40:17 GMT
USER memcache
# Tue, 11 Jun 2019 03:40:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 03:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd77db72fd349db41bcdba404bab172ce9fe4730af2c9aa4fe8a7ea2e5d615e`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfb5d191e5dc879c77ee911746c6e45a56937c14ecc2e16a1cb4b0c94612f2`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.7 MB (1679078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054e6866b587d8002441c474a7a95f664c2da00625d96e017e5a918f8b7e0e88`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.0 MB (1038979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f7b0562bf5325e2f3516dc5b63ae2fc37d6a4427e76383b600a0e768bc49b`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b8ed829e0e4e363b0708f04e87533982e52cee6d5ca41162fcaccc47f8620`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:5f3f1748b730f8b2e7311516737328d66326ada749771ec8c056c8d179647658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be03d0ccab81775e5c8e124850e242c60a55b8b072fe70e33f0487e02b55ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:00:28 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 09:00:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 09:07:04 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 09:07:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:07:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 09:07:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:07:06 GMT
USER memcache
# Tue, 11 Jun 2019 09:07:06 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 09:07:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10aec70bf3af1224fdb620f1cc8b8170fb686851cf3086693e7dca2b32ec4cf`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31eb14beae6e9e319a4d86047d5ce576181bc2f6fa4d3049e7fba4b402b27f0`  
		Last Modified: Tue, 11 Jun 2019 09:07:27 GMT  
		Size: 2.0 MB (1957528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c39ae1df6a95a03ad46d1c67e817898737aa281f847149883588d037c3e92`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 1.1 MB (1087911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1863fe1f17e6feaa1d927fa1a169ad8486f0d24c705a8b2e8ec311272efa65fa`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd5da28869a658806fbc5d7db00a91d9b6bf54e3591c4a09a8dc2abc928ae9`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:e39eaafabaf8e2e346d0a34a3f58e12cb3eaf99bf2bbcb65688c26f9b42de23f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30fd3338a449615b2d58a61c26dc1b708f90863c21056f8a399571129a415c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 04:56:13 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 04:56:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:56:29 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 04:56:31 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 05:10:35 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 05:10:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 05:10:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 05:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 05:10:46 GMT
USER memcache
# Tue, 11 Jun 2019 05:10:48 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 05:10:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0644789dae667b2d4732599fd7dd21d83bc638f122694bf91d47745dceda96`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4afe5e97c8cc1045ed0c0cf351412fcf367f404d851eeb9e84323c8c7ac710`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 1.6 MB (1641128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bde251d261cc058ae0b46fc654dc2eefd94c27c222073b26a97a72f3656d52`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 1.1 MB (1072677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5fd908b7454cae5f16f84d04e3880c11d35769c49341b552cc369c0f1049cc`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0c42d9f7a342e05f5e09536f6380b973ff74f65cf67dc64b2dfe2b13ad07f`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:688272609deadbf3283ee2c246c0785a1b6d440959adc13ed16c4c12d69947dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d17ddfb62f91cc85b1ba6680f9fdbe8559baa932eb9abd3eb1e1c36029e98ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:03:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:03:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:07:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:07:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:07:20 GMT
USER memcache
# Tue, 11 Jun 2019 00:07:20 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:07:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825f5e7f32037e88dc3fa328d349d50fec9404b65a6c688e6a25e0cff182e073`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 5.0 KB (5028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e428d9f4ab6ebee507da84a5dcc719a4bcc681de2933f05dbf0cd9e74b79545`  
		Last Modified: Tue, 11 Jun 2019 00:07:44 GMT  
		Size: 1.7 MB (1691996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7254fc7eace507f68640def5a87006e5bf14e40dd59ccc7e00e32a6e12c034e9`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 1.0 MB (1035724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748408fd9e5b3d18acba1ebb9f280c871fd6278aae614ce3679bd7a1cc2c1e84`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb552b39a75dcc10c606b0936bc399e3e8b3df81ea30b97b0541cc4b98c1d797`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:5d1d9bdd12197ead02a0744d5950ba6f31d0d2fa50076dc8babbc8d8b9abe567
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
$ docker pull memcached@sha256:7e4580913221dd37bc06036134c6f232e85b4c12936cb2ad4c21a3dd01f07044
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8ed9aa9b7e6715c9b4cd2ac9ac2f89a8723c1b5bd729502f78e31129fc0723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:12:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:19:02 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:19:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:19:04 GMT
USER memcache
# Tue, 11 Jun 2019 00:19:05 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8621af3d6f80279321d65ea20a27c1f4b22d1f2545153a3bdba4ee0e31b7087`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc497fea65dde0c563c13926f60c3dd9865f9c47654079286eace91ff32e416`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 2.0 MB (1956988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334430e3ffea8d5d74e563d6f30aa6d306664286544ee21fd3e8137a0b54ffab`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 1.1 MB (1080340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0d547eec187d8e2ee1eebedb597e741f8e88daee45a951ed9d393a42a9bc2d`  
		Last Modified: Tue, 11 Jun 2019 00:19:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94bd584c897edfdd49df68ab65a504b2c4f111c040dded81ba1f2eed47362c0`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c8166e319ec86c65a801a8a0b76284c1a0e8591381dc0caef02ef5d44d7afd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23911613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015d50b5faf6ff28660f048b59f71a4cb30a6d19eb73adae3452917e379e775d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:18:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:18:40 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:18:41 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:38:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:39:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:39:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:39:16 GMT
USER memcache
# Tue, 11 Jun 2019 00:39:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d43a58a0973b0af0f0bfb5a47b5898e1254254d766776b2900dc3ce9bb7a27`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e9cc8a293c7f4a15fa793d91b0d4b20547d75305b33fb0a620669d3ba3d76c`  
		Last Modified: Tue, 11 Jun 2019 00:39:41 GMT  
		Size: 1.7 MB (1689870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a456df7d2ec6da3dc69acb5d643148850a48edbc0740a62efd307ae1e5c3b27b`  
		Last Modified: Tue, 11 Jun 2019 00:39:40 GMT  
		Size: 1.1 MB (1060588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6401b04d7be8d171d9d6273ac608c4313280446ee19973bd852f4ebab66cbbe2`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dba0d7a506b90bb19bfecaada760af0c253405ec7064d180a3d7062288b3a94`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:145723af17ae9975350a57f4b1d4498a6404de1115c7259a2f7114c2d0469217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21935915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0723f300d171d19021b666fb1d94612f2e808888042292efaab594517a912a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:43:04 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:43:06 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 01:02:59 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 01:03:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:03:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 01:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:03:18 GMT
USER memcache
# Tue, 11 Jun 2019 01:03:19 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 01:03:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24c78591f19588f05229cf77c07bc8db0fa14437163e8da06e04802e9e833bd`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c226c1f892ef7aecbdd0925e9df3ead8098f3f62545158a8b74e8e1b80b338`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.6 MB (1625874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc6b5b63df918ed8c960d894028426d3d82d9dac2e85571f9c3abd0346fb003`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.0 MB (1028543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61c355f124055b47a4b4dd7701fa316df6b74b93c515bc6bf66d7cbaa34764`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5ef2138ef74e8da764d79ea89ea0f59dce011a8758df2741ff83fdac1fc52a`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:ff9d42496253b76159e3dc324e429ef116b67188f76ee95f04297e3312047252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dee77c1c66bfec89ade779415291bb1b441ea0d7d7479e97bb4f6963755ab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:22:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 03:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 03:40:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 03:40:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 03:40:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 03:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 03:40:17 GMT
USER memcache
# Tue, 11 Jun 2019 03:40:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 03:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd77db72fd349db41bcdba404bab172ce9fe4730af2c9aa4fe8a7ea2e5d615e`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfb5d191e5dc879c77ee911746c6e45a56937c14ecc2e16a1cb4b0c94612f2`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.7 MB (1679078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054e6866b587d8002441c474a7a95f664c2da00625d96e017e5a918f8b7e0e88`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.0 MB (1038979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f7b0562bf5325e2f3516dc5b63ae2fc37d6a4427e76383b600a0e768bc49b`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b8ed829e0e4e363b0708f04e87533982e52cee6d5ca41162fcaccc47f8620`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:5f3f1748b730f8b2e7311516737328d66326ada749771ec8c056c8d179647658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be03d0ccab81775e5c8e124850e242c60a55b8b072fe70e33f0487e02b55ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:00:28 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 09:00:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 09:07:04 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 09:07:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:07:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 09:07:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:07:06 GMT
USER memcache
# Tue, 11 Jun 2019 09:07:06 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 09:07:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10aec70bf3af1224fdb620f1cc8b8170fb686851cf3086693e7dca2b32ec4cf`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31eb14beae6e9e319a4d86047d5ce576181bc2f6fa4d3049e7fba4b402b27f0`  
		Last Modified: Tue, 11 Jun 2019 09:07:27 GMT  
		Size: 2.0 MB (1957528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c39ae1df6a95a03ad46d1c67e817898737aa281f847149883588d037c3e92`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 1.1 MB (1087911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1863fe1f17e6feaa1d927fa1a169ad8486f0d24c705a8b2e8ec311272efa65fa`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd5da28869a658806fbc5d7db00a91d9b6bf54e3591c4a09a8dc2abc928ae9`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:e39eaafabaf8e2e346d0a34a3f58e12cb3eaf99bf2bbcb65688c26f9b42de23f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30fd3338a449615b2d58a61c26dc1b708f90863c21056f8a399571129a415c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 04:56:13 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 04:56:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:56:29 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 04:56:31 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 05:10:35 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 05:10:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 05:10:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 05:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 05:10:46 GMT
USER memcache
# Tue, 11 Jun 2019 05:10:48 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 05:10:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0644789dae667b2d4732599fd7dd21d83bc638f122694bf91d47745dceda96`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4afe5e97c8cc1045ed0c0cf351412fcf367f404d851eeb9e84323c8c7ac710`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 1.6 MB (1641128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bde251d261cc058ae0b46fc654dc2eefd94c27c222073b26a97a72f3656d52`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 1.1 MB (1072677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5fd908b7454cae5f16f84d04e3880c11d35769c49341b552cc369c0f1049cc`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0c42d9f7a342e05f5e09536f6380b973ff74f65cf67dc64b2dfe2b13ad07f`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:688272609deadbf3283ee2c246c0785a1b6d440959adc13ed16c4c12d69947dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d17ddfb62f91cc85b1ba6680f9fdbe8559baa932eb9abd3eb1e1c36029e98ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:03:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:03:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:07:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:07:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:07:20 GMT
USER memcache
# Tue, 11 Jun 2019 00:07:20 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:07:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825f5e7f32037e88dc3fa328d349d50fec9404b65a6c688e6a25e0cff182e073`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 5.0 KB (5028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e428d9f4ab6ebee507da84a5dcc719a4bcc681de2933f05dbf0cd9e74b79545`  
		Last Modified: Tue, 11 Jun 2019 00:07:44 GMT  
		Size: 1.7 MB (1691996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7254fc7eace507f68640def5a87006e5bf14e40dd59ccc7e00e32a6e12c034e9`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 1.0 MB (1035724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748408fd9e5b3d18acba1ebb9f280c871fd6278aae614ce3679bd7a1cc2c1e84`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb552b39a75dcc10c606b0936bc399e3e8b3df81ea30b97b0541cc4b98c1d797`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.16`

```console
$ docker pull memcached@sha256:5d1d9bdd12197ead02a0744d5950ba6f31d0d2fa50076dc8babbc8d8b9abe567
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
$ docker pull memcached@sha256:7e4580913221dd37bc06036134c6f232e85b4c12936cb2ad4c21a3dd01f07044
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8ed9aa9b7e6715c9b4cd2ac9ac2f89a8723c1b5bd729502f78e31129fc0723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:12:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:19:02 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:19:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:19:04 GMT
USER memcache
# Tue, 11 Jun 2019 00:19:05 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8621af3d6f80279321d65ea20a27c1f4b22d1f2545153a3bdba4ee0e31b7087`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc497fea65dde0c563c13926f60c3dd9865f9c47654079286eace91ff32e416`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 2.0 MB (1956988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334430e3ffea8d5d74e563d6f30aa6d306664286544ee21fd3e8137a0b54ffab`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 1.1 MB (1080340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0d547eec187d8e2ee1eebedb597e741f8e88daee45a951ed9d393a42a9bc2d`  
		Last Modified: Tue, 11 Jun 2019 00:19:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94bd584c897edfdd49df68ab65a504b2c4f111c040dded81ba1f2eed47362c0`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c8166e319ec86c65a801a8a0b76284c1a0e8591381dc0caef02ef5d44d7afd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23911613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015d50b5faf6ff28660f048b59f71a4cb30a6d19eb73adae3452917e379e775d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:18:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:18:40 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:18:41 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:38:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:39:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:39:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:39:16 GMT
USER memcache
# Tue, 11 Jun 2019 00:39:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d43a58a0973b0af0f0bfb5a47b5898e1254254d766776b2900dc3ce9bb7a27`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e9cc8a293c7f4a15fa793d91b0d4b20547d75305b33fb0a620669d3ba3d76c`  
		Last Modified: Tue, 11 Jun 2019 00:39:41 GMT  
		Size: 1.7 MB (1689870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a456df7d2ec6da3dc69acb5d643148850a48edbc0740a62efd307ae1e5c3b27b`  
		Last Modified: Tue, 11 Jun 2019 00:39:40 GMT  
		Size: 1.1 MB (1060588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6401b04d7be8d171d9d6273ac608c4313280446ee19973bd852f4ebab66cbbe2`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dba0d7a506b90bb19bfecaada760af0c253405ec7064d180a3d7062288b3a94`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; arm variant v7

```console
$ docker pull memcached@sha256:145723af17ae9975350a57f4b1d4498a6404de1115c7259a2f7114c2d0469217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21935915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0723f300d171d19021b666fb1d94612f2e808888042292efaab594517a912a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:43:04 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:43:06 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 01:02:59 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 01:03:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:03:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 01:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:03:18 GMT
USER memcache
# Tue, 11 Jun 2019 01:03:19 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 01:03:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24c78591f19588f05229cf77c07bc8db0fa14437163e8da06e04802e9e833bd`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c226c1f892ef7aecbdd0925e9df3ead8098f3f62545158a8b74e8e1b80b338`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.6 MB (1625874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc6b5b63df918ed8c960d894028426d3d82d9dac2e85571f9c3abd0346fb003`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.0 MB (1028543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61c355f124055b47a4b4dd7701fa316df6b74b93c515bc6bf66d7cbaa34764`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5ef2138ef74e8da764d79ea89ea0f59dce011a8758df2741ff83fdac1fc52a`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:ff9d42496253b76159e3dc324e429ef116b67188f76ee95f04297e3312047252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dee77c1c66bfec89ade779415291bb1b441ea0d7d7479e97bb4f6963755ab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:22:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 03:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 03:40:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 03:40:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 03:40:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 03:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 03:40:17 GMT
USER memcache
# Tue, 11 Jun 2019 03:40:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 03:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd77db72fd349db41bcdba404bab172ce9fe4730af2c9aa4fe8a7ea2e5d615e`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfb5d191e5dc879c77ee911746c6e45a56937c14ecc2e16a1cb4b0c94612f2`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.7 MB (1679078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054e6866b587d8002441c474a7a95f664c2da00625d96e017e5a918f8b7e0e88`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.0 MB (1038979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f7b0562bf5325e2f3516dc5b63ae2fc37d6a4427e76383b600a0e768bc49b`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b8ed829e0e4e363b0708f04e87533982e52cee6d5ca41162fcaccc47f8620`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; 386

```console
$ docker pull memcached@sha256:5f3f1748b730f8b2e7311516737328d66326ada749771ec8c056c8d179647658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be03d0ccab81775e5c8e124850e242c60a55b8b072fe70e33f0487e02b55ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:00:28 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 09:00:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 09:07:04 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 09:07:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:07:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 09:07:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:07:06 GMT
USER memcache
# Tue, 11 Jun 2019 09:07:06 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 09:07:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10aec70bf3af1224fdb620f1cc8b8170fb686851cf3086693e7dca2b32ec4cf`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31eb14beae6e9e319a4d86047d5ce576181bc2f6fa4d3049e7fba4b402b27f0`  
		Last Modified: Tue, 11 Jun 2019 09:07:27 GMT  
		Size: 2.0 MB (1957528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c39ae1df6a95a03ad46d1c67e817898737aa281f847149883588d037c3e92`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 1.1 MB (1087911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1863fe1f17e6feaa1d927fa1a169ad8486f0d24c705a8b2e8ec311272efa65fa`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd5da28869a658806fbc5d7db00a91d9b6bf54e3591c4a09a8dc2abc928ae9`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; ppc64le

```console
$ docker pull memcached@sha256:e39eaafabaf8e2e346d0a34a3f58e12cb3eaf99bf2bbcb65688c26f9b42de23f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30fd3338a449615b2d58a61c26dc1b708f90863c21056f8a399571129a415c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 04:56:13 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 04:56:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:56:29 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 04:56:31 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 05:10:35 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 05:10:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 05:10:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 05:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 05:10:46 GMT
USER memcache
# Tue, 11 Jun 2019 05:10:48 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 05:10:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0644789dae667b2d4732599fd7dd21d83bc638f122694bf91d47745dceda96`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4afe5e97c8cc1045ed0c0cf351412fcf367f404d851eeb9e84323c8c7ac710`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 1.6 MB (1641128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bde251d261cc058ae0b46fc654dc2eefd94c27c222073b26a97a72f3656d52`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 1.1 MB (1072677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5fd908b7454cae5f16f84d04e3880c11d35769c49341b552cc369c0f1049cc`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0c42d9f7a342e05f5e09536f6380b973ff74f65cf67dc64b2dfe2b13ad07f`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.16` - linux; s390x

```console
$ docker pull memcached@sha256:688272609deadbf3283ee2c246c0785a1b6d440959adc13ed16c4c12d69947dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d17ddfb62f91cc85b1ba6680f9fdbe8559baa932eb9abd3eb1e1c36029e98ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:03:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:03:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:07:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:07:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:07:20 GMT
USER memcache
# Tue, 11 Jun 2019 00:07:20 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:07:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825f5e7f32037e88dc3fa328d349d50fec9404b65a6c688e6a25e0cff182e073`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 5.0 KB (5028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e428d9f4ab6ebee507da84a5dcc719a4bcc681de2933f05dbf0cd9e74b79545`  
		Last Modified: Tue, 11 Jun 2019 00:07:44 GMT  
		Size: 1.7 MB (1691996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7254fc7eace507f68640def5a87006e5bf14e40dd59ccc7e00e32a6e12c034e9`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 1.0 MB (1035724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748408fd9e5b3d18acba1ebb9f280c871fd6278aae614ce3679bd7a1cc2c1e84`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb552b39a75dcc10c606b0936bc399e3e8b3df81ea30b97b0541cc4b98c1d797`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
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
$ docker pull memcached@sha256:5d1d9bdd12197ead02a0744d5950ba6f31d0d2fa50076dc8babbc8d8b9abe567
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
$ docker pull memcached@sha256:7e4580913221dd37bc06036134c6f232e85b4c12936cb2ad4c21a3dd01f07044
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25532030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8ed9aa9b7e6715c9b4cd2ac9ac2f89a8723c1b5bd729502f78e31129fc0723`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:59 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:12:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:12:07 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:19:02 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:19:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:19:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:19:04 GMT
USER memcache
# Tue, 11 Jun 2019 00:19:05 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:19:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8621af3d6f80279321d65ea20a27c1f4b22d1f2545153a3bdba4ee0e31b7087`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc497fea65dde0c563c13926f60c3dd9865f9c47654079286eace91ff32e416`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 2.0 MB (1956988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334430e3ffea8d5d74e563d6f30aa6d306664286544ee21fd3e8137a0b54ffab`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 1.1 MB (1080340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0d547eec187d8e2ee1eebedb597e741f8e88daee45a951ed9d393a42a9bc2d`  
		Last Modified: Tue, 11 Jun 2019 00:19:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94bd584c897edfdd49df68ab65a504b2c4f111c040dded81ba1f2eed47362c0`  
		Last Modified: Tue, 11 Jun 2019 00:19:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:c8166e319ec86c65a801a8a0b76284c1a0e8591381dc0caef02ef5d44d7afd28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23911613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015d50b5faf6ff28660f048b59f71a4cb30a6d19eb73adae3452917e379e775d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:18:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:18:40 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:18:41 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:38:57 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:39:00 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:39:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:39:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:39:16 GMT
USER memcache
# Tue, 11 Jun 2019 00:39:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d43a58a0973b0af0f0bfb5a47b5898e1254254d766776b2900dc3ce9bb7a27`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e9cc8a293c7f4a15fa793d91b0d4b20547d75305b33fb0a620669d3ba3d76c`  
		Last Modified: Tue, 11 Jun 2019 00:39:41 GMT  
		Size: 1.7 MB (1689870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a456df7d2ec6da3dc69acb5d643148850a48edbc0740a62efd307ae1e5c3b27b`  
		Last Modified: Tue, 11 Jun 2019 00:39:40 GMT  
		Size: 1.1 MB (1060588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6401b04d7be8d171d9d6273ac608c4313280446ee19973bd852f4ebab66cbbe2`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dba0d7a506b90bb19bfecaada760af0c253405ec7064d180a3d7062288b3a94`  
		Last Modified: Tue, 11 Jun 2019 00:39:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:145723af17ae9975350a57f4b1d4498a6404de1115c7259a2f7114c2d0469217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21935915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0723f300d171d19021b666fb1d94612f2e808888042292efaab594517a912a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:53 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:43:04 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:43:06 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 01:02:59 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 01:03:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:03:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 01:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:03:18 GMT
USER memcache
# Tue, 11 Jun 2019 01:03:19 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 01:03:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24c78591f19588f05229cf77c07bc8db0fa14437163e8da06e04802e9e833bd`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c226c1f892ef7aecbdd0925e9df3ead8098f3f62545158a8b74e8e1b80b338`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.6 MB (1625874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc6b5b63df918ed8c960d894028426d3d82d9dac2e85571f9c3abd0346fb003`  
		Last Modified: Tue, 11 Jun 2019 01:03:36 GMT  
		Size: 1.0 MB (1028543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61c355f124055b47a4b4dd7701fa316df6b74b93c515bc6bf66d7cbaa34764`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5ef2138ef74e8da764d79ea89ea0f59dce011a8758df2741ff83fdac1fc52a`  
		Last Modified: Tue, 11 Jun 2019 01:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:ff9d42496253b76159e3dc324e429ef116b67188f76ee95f04297e3312047252
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23057290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1dee77c1c66bfec89ade779415291bb1b441ea0d7d7479e97bb4f6963755ab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:22:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 03:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 03:22:23 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 03:40:11 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 03:40:12 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 03:40:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 03:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 03:40:17 GMT
USER memcache
# Tue, 11 Jun 2019 03:40:18 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 03:40:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd77db72fd349db41bcdba404bab172ce9fe4730af2c9aa4fe8a7ea2e5d615e`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfb5d191e5dc879c77ee911746c6e45a56937c14ecc2e16a1cb4b0c94612f2`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.7 MB (1679078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054e6866b587d8002441c474a7a95f664c2da00625d96e017e5a918f8b7e0e88`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 1.0 MB (1038979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7f7b0562bf5325e2f3516dc5b63ae2fc37d6a4427e76383b600a0e768bc49b`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b8ed829e0e4e363b0708f04e87533982e52cee6d5ca41162fcaccc47f8620`  
		Last Modified: Tue, 11 Jun 2019 03:40:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:5f3f1748b730f8b2e7311516737328d66326ada749771ec8c056c8d179647658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26171619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be03d0ccab81775e5c8e124850e242c60a55b8b072fe70e33f0487e02b55ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 09:00:28 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 09:00:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 09:00:37 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 09:07:04 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 09:07:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 09:07:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 09:07:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 09:07:06 GMT
USER memcache
# Tue, 11 Jun 2019 09:07:06 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 09:07:07 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10aec70bf3af1224fdb620f1cc8b8170fb686851cf3086693e7dca2b32ec4cf`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31eb14beae6e9e319a4d86047d5ce576181bc2f6fa4d3049e7fba4b402b27f0`  
		Last Modified: Tue, 11 Jun 2019 09:07:27 GMT  
		Size: 2.0 MB (1957528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c39ae1df6a95a03ad46d1c67e817898737aa281f847149883588d037c3e92`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 1.1 MB (1087911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1863fe1f17e6feaa1d927fa1a169ad8486f0d24c705a8b2e8ec311272efa65fa`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cd5da28869a658806fbc5d7db00a91d9b6bf54e3591c4a09a8dc2abc928ae9`  
		Last Modified: Tue, 11 Jun 2019 09:07:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:e39eaafabaf8e2e346d0a34a3f58e12cb3eaf99bf2bbcb65688c26f9b42de23f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25464119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30fd3338a449615b2d58a61c26dc1b708f90863c21056f8a399571129a415c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 04:56:13 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 04:56:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:56:29 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 04:56:31 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 05:10:35 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 05:10:38 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 05:10:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 05:10:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 05:10:46 GMT
USER memcache
# Tue, 11 Jun 2019 05:10:48 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 05:10:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0644789dae667b2d4732599fd7dd21d83bc638f122694bf91d47745dceda96`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4afe5e97c8cc1045ed0c0cf351412fcf367f404d851eeb9e84323c8c7ac710`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 1.6 MB (1641128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6bde251d261cc058ae0b46fc654dc2eefd94c27c222073b26a97a72f3656d52`  
		Last Modified: Tue, 11 Jun 2019 05:11:16 GMT  
		Size: 1.1 MB (1072677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5fd908b7454cae5f16f84d04e3880c11d35769c49341b552cc369c0f1049cc`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0c42d9f7a342e05f5e09536f6380b973ff74f65cf67dc64b2dfe2b13ad07f`  
		Last Modified: Tue, 11 Jun 2019 05:11:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:688272609deadbf3283ee2c246c0785a1b6d440959adc13ed16c4c12d69947dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25072016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d17ddfb62f91cc85b1ba6680f9fdbe8559baa932eb9abd3eb1e1c36029e98ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:03:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 11 Jun 2019 00:03:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		libsasl2-modules 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_VERSION=1.5.16
# Tue, 11 Jun 2019 00:03:27 GMT
ENV MEMCACHED_SHA1=06a9661638cb20232d0ccea088f52ca10b959968
# Tue, 11 Jun 2019 00:07:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		--enable-sasl-pwdb 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark > /dev/null 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& memcached -V
# Tue, 11 Jun 2019 00:07:18 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 11 Jun 2019 00:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:07:20 GMT
USER memcache
# Tue, 11 Jun 2019 00:07:20 GMT
EXPOSE 11211
# Tue, 11 Jun 2019 00:07:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825f5e7f32037e88dc3fa328d349d50fec9404b65a6c688e6a25e0cff182e073`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 5.0 KB (5028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e428d9f4ab6ebee507da84a5dcc719a4bcc681de2933f05dbf0cd9e74b79545`  
		Last Modified: Tue, 11 Jun 2019 00:07:44 GMT  
		Size: 1.7 MB (1691996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7254fc7eace507f68640def5a87006e5bf14e40dd59ccc7e00e32a6e12c034e9`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 1.0 MB (1035724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748408fd9e5b3d18acba1ebb9f280c871fd6278aae614ce3679bd7a1cc2c1e84`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb552b39a75dcc10c606b0936bc399e3e8b3df81ea30b97b0541cc4b98c1d797`  
		Last Modified: Tue, 11 Jun 2019 00:07:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

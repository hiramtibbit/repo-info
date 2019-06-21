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

### `memcached:1.5.16-alpine` - linux; amd64

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

### `memcached:1.5.16-alpine` - linux; arm variant v6

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

### `memcached:1.5.16-alpine` - linux; 386

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

### `memcached:1.5.16-alpine` - linux; ppc64le

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

### `memcached:1.5.16-alpine` - linux; s390x

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

## `memcached:1.5-alpine`

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

### `memcached:1.5-alpine` - linux; amd64

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

### `memcached:1.5-alpine` - linux; arm variant v6

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

### `memcached:1.5-alpine` - linux; 386

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

### `memcached:1.5-alpine` - linux; ppc64le

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

### `memcached:1.5-alpine` - linux; s390x

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

## `memcached:alpine`

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

### `memcached:alpine` - linux; amd64

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

### `memcached:alpine` - linux; arm variant v6

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

### `memcached:alpine` - linux; 386

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

### `memcached:alpine` - linux; ppc64le

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

### `memcached:alpine` - linux; s390x

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

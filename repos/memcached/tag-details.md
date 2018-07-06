<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.8`](#memcached158)
-	[`memcached:1.5.8-alpine`](#memcached158-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:c405c8fb4fe14d99671e0bb113dd6edae76bd0f4d834484a2143ed1a5536b8bd
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
$ docker pull memcached@sha256:53b0621a4ce6e1f628e851e191820cf2f21f2119b75e9eb6a1c442fb8698fc09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23536317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26edf253ee405170267efcda4d441fb82b3740fcccb5ab5d6046d6b4fb036d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_VERSION=1.5.8
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 26 Jun 2018 23:00:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Jun 2018 23:00:20 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:00:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:00:21 GMT
USER [memcache]
# Tue, 26 Jun 2018 23:00:22 GMT
EXPOSE 11211/tcp
# Tue, 26 Jun 2018 23:00:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebad33fff3adbd3ec77d3b3a5a792c3c8ba6583c5905efe38c6c095c9ec9fb5`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.0 MB (1037184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55c7b09a89fe78b39ebbf8cf7dd4e75a3cc299b45a21032714346a36f72848b`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa47a1e89299335fb375202706ce7aa304ff78f0f1b0ca69f6eeb32d257433`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a27b0f568aca23c5d3fc1698d41747e4f15fa27bb65d55ba793db785d0218647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4558851cfead0dd1d85bce183f8ce4fbea7bc97c443a95287af52da997f5fde4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 11:46:17 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 11:46:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 11:53:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 11:53:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:54:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 11:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:54:09 GMT
USER [memcache]
# Wed, 27 Jun 2018 11:54:09 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 11:54:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8be1d51ccf1f8679b781f18c85d6a1456a623266b8ebe8908322dfabbffbd3c`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 997.2 KB (997176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3467bd2b175838be15e2ba4dbda00bd9383aecf3c07174735afc68d686d1edad`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34756646aa68bdaecbb814146bff766b656f57d86ce188619dd29d41184fe3d`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:92a4e73c7875089bf7df3dc7f7f73166ee57ad92d0f2473695737dbe837aff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb43b9123eb7422ceb28eae57a0b164d4282fbbdfc06fb5c8b96ad0a858a982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:18:09 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:18:10 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:23:37 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:23:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:23:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:23:39 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:23:40 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:23:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e62e32e728a4648c2a72bba8073f45cf7d98cdaee5df6cac3b10d3d3fcc552`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.0 MB (1045286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6261aee254d5983fdb9bfa3ee5f456f77cab8bcacdf1a52e14cdcd9c1002c83`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6ff01f6643c1d5191249a7e0241f12c93ca96d24e00eacf4095df490c0790`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:16e9db08215077bb3e028297508903b6451dbe5dad22ea358bc0c371f14cb746
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096b0f8d5670c2889661e10c7764128a3ef49bbe02853d86b9d0017e62ffece6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 10:11:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 10:11:43 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 10:19:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 10:19:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:19:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 10:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:19:30 GMT
USER [memcache]
# Wed, 27 Jun 2018 10:19:31 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 10:19:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bce73ec561a8e2e92cc18d5962023fe28d68ca4b8a05c421aff4207089db40`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.0 MB (1028219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6673ff587bea0dacfd60b77d30715ae5d1a0cec9dadb26928066ba8860f4e4c7`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ba7aced89e48e86b6c874cc347ba304b54975adb3203475045f7ef796f8f5b`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:fde9456ec0f6c60af881c916ce2008d1db2778df7fa2a34fca88673dce204b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9a2b31031d3490654e900cc4e08679d875afe0ba807974e5228e4a1544a4b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:28:49 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:28:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:28:50 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:28:50 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:28:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171de5e51482337e3dfe493aaf8c6d88907115528168d018e0fffd91b8fb32ad`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 997.7 KB (997660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702423434de3b45bc67b6b9e258313936ba3d82d6122cff70457001ca7132b12`  
		Last Modified: Wed, 27 Jun 2018 12:29:19 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c02d0a354d37b261dc0e89426fbe44209d5759febff814b1ad764889431d24f`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:c405c8fb4fe14d99671e0bb113dd6edae76bd0f4d834484a2143ed1a5536b8bd
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
$ docker pull memcached@sha256:53b0621a4ce6e1f628e851e191820cf2f21f2119b75e9eb6a1c442fb8698fc09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23536317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26edf253ee405170267efcda4d441fb82b3740fcccb5ab5d6046d6b4fb036d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_VERSION=1.5.8
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 26 Jun 2018 23:00:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Jun 2018 23:00:20 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:00:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:00:21 GMT
USER [memcache]
# Tue, 26 Jun 2018 23:00:22 GMT
EXPOSE 11211/tcp
# Tue, 26 Jun 2018 23:00:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebad33fff3adbd3ec77d3b3a5a792c3c8ba6583c5905efe38c6c095c9ec9fb5`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.0 MB (1037184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55c7b09a89fe78b39ebbf8cf7dd4e75a3cc299b45a21032714346a36f72848b`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa47a1e89299335fb375202706ce7aa304ff78f0f1b0ca69f6eeb32d257433`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a27b0f568aca23c5d3fc1698d41747e4f15fa27bb65d55ba793db785d0218647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4558851cfead0dd1d85bce183f8ce4fbea7bc97c443a95287af52da997f5fde4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 11:46:17 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 11:46:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 11:53:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 11:53:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:54:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 11:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:54:09 GMT
USER [memcache]
# Wed, 27 Jun 2018 11:54:09 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 11:54:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8be1d51ccf1f8679b781f18c85d6a1456a623266b8ebe8908322dfabbffbd3c`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 997.2 KB (997176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3467bd2b175838be15e2ba4dbda00bd9383aecf3c07174735afc68d686d1edad`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34756646aa68bdaecbb814146bff766b656f57d86ce188619dd29d41184fe3d`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:92a4e73c7875089bf7df3dc7f7f73166ee57ad92d0f2473695737dbe837aff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb43b9123eb7422ceb28eae57a0b164d4282fbbdfc06fb5c8b96ad0a858a982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:18:09 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:18:10 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:23:37 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:23:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:23:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:23:39 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:23:40 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:23:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e62e32e728a4648c2a72bba8073f45cf7d98cdaee5df6cac3b10d3d3fcc552`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.0 MB (1045286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6261aee254d5983fdb9bfa3ee5f456f77cab8bcacdf1a52e14cdcd9c1002c83`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6ff01f6643c1d5191249a7e0241f12c93ca96d24e00eacf4095df490c0790`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:16e9db08215077bb3e028297508903b6451dbe5dad22ea358bc0c371f14cb746
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096b0f8d5670c2889661e10c7764128a3ef49bbe02853d86b9d0017e62ffece6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 10:11:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 10:11:43 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 10:19:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 10:19:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:19:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 10:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:19:30 GMT
USER [memcache]
# Wed, 27 Jun 2018 10:19:31 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 10:19:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bce73ec561a8e2e92cc18d5962023fe28d68ca4b8a05c421aff4207089db40`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.0 MB (1028219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6673ff587bea0dacfd60b77d30715ae5d1a0cec9dadb26928066ba8860f4e4c7`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ba7aced89e48e86b6c874cc347ba304b54975adb3203475045f7ef796f8f5b`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:fde9456ec0f6c60af881c916ce2008d1db2778df7fa2a34fca88673dce204b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9a2b31031d3490654e900cc4e08679d875afe0ba807974e5228e4a1544a4b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:28:49 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:28:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:28:50 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:28:50 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:28:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171de5e51482337e3dfe493aaf8c6d88907115528168d018e0fffd91b8fb32ad`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 997.7 KB (997660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702423434de3b45bc67b6b9e258313936ba3d82d6122cff70457001ca7132b12`  
		Last Modified: Wed, 27 Jun 2018 12:29:19 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c02d0a354d37b261dc0e89426fbe44209d5759febff814b1ad764889431d24f`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.8`

```console
$ docker pull memcached@sha256:c405c8fb4fe14d99671e0bb113dd6edae76bd0f4d834484a2143ed1a5536b8bd
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

### `memcached:1.5.8` - linux; amd64

```console
$ docker pull memcached@sha256:53b0621a4ce6e1f628e851e191820cf2f21f2119b75e9eb6a1c442fb8698fc09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23536317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26edf253ee405170267efcda4d441fb82b3740fcccb5ab5d6046d6b4fb036d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_VERSION=1.5.8
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 26 Jun 2018 23:00:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Jun 2018 23:00:20 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:00:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:00:21 GMT
USER [memcache]
# Tue, 26 Jun 2018 23:00:22 GMT
EXPOSE 11211/tcp
# Tue, 26 Jun 2018 23:00:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebad33fff3adbd3ec77d3b3a5a792c3c8ba6583c5905efe38c6c095c9ec9fb5`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.0 MB (1037184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55c7b09a89fe78b39ebbf8cf7dd4e75a3cc299b45a21032714346a36f72848b`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa47a1e89299335fb375202706ce7aa304ff78f0f1b0ca69f6eeb32d257433`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a27b0f568aca23c5d3fc1698d41747e4f15fa27bb65d55ba793db785d0218647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4558851cfead0dd1d85bce183f8ce4fbea7bc97c443a95287af52da997f5fde4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 11:46:17 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 11:46:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 11:53:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 11:53:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:54:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 11:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:54:09 GMT
USER [memcache]
# Wed, 27 Jun 2018 11:54:09 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 11:54:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8be1d51ccf1f8679b781f18c85d6a1456a623266b8ebe8908322dfabbffbd3c`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 997.2 KB (997176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3467bd2b175838be15e2ba4dbda00bd9383aecf3c07174735afc68d686d1edad`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34756646aa68bdaecbb814146bff766b656f57d86ce188619dd29d41184fe3d`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; 386

```console
$ docker pull memcached@sha256:92a4e73c7875089bf7df3dc7f7f73166ee57ad92d0f2473695737dbe837aff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb43b9123eb7422ceb28eae57a0b164d4282fbbdfc06fb5c8b96ad0a858a982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:18:09 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:18:10 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:23:37 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:23:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:23:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:23:39 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:23:40 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:23:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e62e32e728a4648c2a72bba8073f45cf7d98cdaee5df6cac3b10d3d3fcc552`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.0 MB (1045286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6261aee254d5983fdb9bfa3ee5f456f77cab8bcacdf1a52e14cdcd9c1002c83`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6ff01f6643c1d5191249a7e0241f12c93ca96d24e00eacf4095df490c0790`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; ppc64le

```console
$ docker pull memcached@sha256:16e9db08215077bb3e028297508903b6451dbe5dad22ea358bc0c371f14cb746
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096b0f8d5670c2889661e10c7764128a3ef49bbe02853d86b9d0017e62ffece6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 10:11:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 10:11:43 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 10:19:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 10:19:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:19:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 10:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:19:30 GMT
USER [memcache]
# Wed, 27 Jun 2018 10:19:31 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 10:19:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bce73ec561a8e2e92cc18d5962023fe28d68ca4b8a05c421aff4207089db40`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.0 MB (1028219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6673ff587bea0dacfd60b77d30715ae5d1a0cec9dadb26928066ba8860f4e4c7`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ba7aced89e48e86b6c874cc347ba304b54975adb3203475045f7ef796f8f5b`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; s390x

```console
$ docker pull memcached@sha256:fde9456ec0f6c60af881c916ce2008d1db2778df7fa2a34fca88673dce204b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9a2b31031d3490654e900cc4e08679d875afe0ba807974e5228e4a1544a4b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:28:49 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:28:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:28:50 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:28:50 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:28:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171de5e51482337e3dfe493aaf8c6d88907115528168d018e0fffd91b8fb32ad`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 997.7 KB (997660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702423434de3b45bc67b6b9e258313936ba3d82d6122cff70457001ca7132b12`  
		Last Modified: Wed, 27 Jun 2018 12:29:19 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c02d0a354d37b261dc0e89426fbe44209d5759febff814b1ad764889431d24f`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.8-alpine`

```console
$ docker pull memcached@sha256:176898c39012f1711edde575b6c4542cda685b8c5edebf18d554f2f5ee7a37ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.8-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:ac848d96d21dd6df7c23ef9199423bdf82b807998d68a8ac103713aad5a2b473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4733543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95220d440628f9b08fcbe0aa54b6d8ba04aa25c1433cd49b47ae4a0b36d6e98a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Fri, 06 Jul 2018 17:26:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 06 Jul 2018 17:26:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:26:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jul 2018 17:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:26:44 GMT
USER [memcache]
# Fri, 06 Jul 2018 17:26:45 GMT
EXPOSE 11211/tcp
# Fri, 06 Jul 2018 17:26:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9aac25d7070a362269931aedba8bce05364aed97d086a009563c9fd45859a7`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 2.6 MB (2628340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93df8e10373329f64831323370f1b3c649aa06332dfa511b34c9dd1c7042f1f`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ec4e4d268f32abac0fc94ea27df32bc87f7a266722237e3a5da9275d534ec`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:78ad5ce9cd3c4473ad5357b11895a08064b3335ea9a240e0f5259efb8002e6cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3784411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfaf74131ff4bef208fe092f4ad3e195c40a1c9b733ac96c8f26b5d501ef7e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:34:17 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 07:49:23 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 07:49:24 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 29 May 2018 18:28:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 07:49:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 07:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 07:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 07:49:32 GMT
USER [memcache]
# Thu, 07 Jun 2018 07:49:33 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 07:49:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0db37bdf4c1c0304d8047f54e7745edf943f360cbd6bcd830a60c72b84807a3`  
		Last Modified: Mon, 02 Apr 2018 17:45:04 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f82f1ee737191300d772dc49ee70d8586b7547281f13ac938b7f221f3ec26bb`  
		Last Modified: Thu, 07 Jun 2018 07:49:47 GMT  
		Size: 1.7 MB (1744255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdf8870eb902d234090967894f4c446081e3c8779d6d0caec9570ac9a411296`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9c697f648fdb8074be09f9b3f4eb223d64a3bc479cc7b53e12fe0ff1d049`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bd36f325bb48f9fd683e6048a9fa3c38869283cb21963bf57f86d32e51efefe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5507cb422510c06f801d3c06656f15e197329984561aaaba198ee274954aac35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:45:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:45:07 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:00:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 09:00:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:00:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:00:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:00:39 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:00:40 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:00:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb53dd7cc4e1cb08621b57bdc084ceebfe6ea58fb11207b51b3571604f8b1e`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 1.7 MB (1727445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279b97b14e3e44f2aa4126d3ef53d9900058c95a3e021a523cbbe79f823a5670`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f654268ce234bd3d8c812180b32df410d737969b483994560ca44ff4e98adb`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8-alpine` - linux; 386

```console
$ docker pull memcached@sha256:a6a8b073e28a16404257fd77727847709c5f90da091622e07ed451ec37ee669a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd418c9150398328d2d5c7b9b8e409148de8fa2e9e2b31d7cbeaea4d67d0943`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:05:16 GMT
RUN adduser -D memcache
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:57:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 10:57:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:57:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:57:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:57:10 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:57:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:57:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd87a390862ce9119e192578c00742f2c9faba9770746f24d136ae91a50c68da`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee8bd2a69c31900263fcbde7a96f9555ed4759aabf68687f380bde7290c3060`  
		Last Modified: Thu, 07 Jun 2018 10:58:14 GMT  
		Size: 1.9 MB (1890960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427b4d7f0bc5f35f9d12138a6f32a1e36c670a72624eca8dbe5083abc4b899f`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124d077f3afbcf126be130859ba2b574f22b33bc61c6cfd70790eb27621e303`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1ea0ba3b0218978ffa00267a1d4d158e4f90790f031d2bfef28d420b3225dbc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3873456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719f0cd980fcc3fd1a939d1a04c33a95a7cb135acf79cf3e57d4afd1a43b3884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:22:20 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:22:21 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:40:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 08:40:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:41:01 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:41:05 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90178e693601045970e304a95b413dce820ff41aff996f2efd11a5536326ec`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 1.8 MB (1790132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418db14f0b367bd246547202be3e306980037ac533bbaa9b0b15dca04c72235c`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9321b2f9dbb9c77d0afbbe2021346bf9b86069166ac3610768ecb80f7eaf3c5f`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a1d1ac68e3cc7eb2e809b08579a59c1efa9c2f41346544ce0b04fb21dc2789a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88865e333119eeaa38b326ccded547ac3d6bc1e9a01be1079442f4771861d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:15:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 12:15:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:15:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:15:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:15:11 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:15:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:15:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa600c6525d04b5828b8a26ecc1673add94cb8423fd1f07c80a8b7ba61d901`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 1.8 MB (1830375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9adbea2279a8e485b77c3a0af1f3ca3047b69d012853d4ea4905bf4b2c4fd2`  
		Last Modified: Thu, 07 Jun 2018 12:16:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2672a3ca61c3a12ebacb54f8f0437b52aa8eb3eecf6dfccedcfcfea1594c410`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:176898c39012f1711edde575b6c4542cda685b8c5edebf18d554f2f5ee7a37ef
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
$ docker pull memcached@sha256:ac848d96d21dd6df7c23ef9199423bdf82b807998d68a8ac103713aad5a2b473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4733543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95220d440628f9b08fcbe0aa54b6d8ba04aa25c1433cd49b47ae4a0b36d6e98a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Fri, 06 Jul 2018 17:26:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 06 Jul 2018 17:26:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:26:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jul 2018 17:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:26:44 GMT
USER [memcache]
# Fri, 06 Jul 2018 17:26:45 GMT
EXPOSE 11211/tcp
# Fri, 06 Jul 2018 17:26:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9aac25d7070a362269931aedba8bce05364aed97d086a009563c9fd45859a7`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 2.6 MB (2628340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93df8e10373329f64831323370f1b3c649aa06332dfa511b34c9dd1c7042f1f`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ec4e4d268f32abac0fc94ea27df32bc87f7a266722237e3a5da9275d534ec`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:78ad5ce9cd3c4473ad5357b11895a08064b3335ea9a240e0f5259efb8002e6cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3784411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfaf74131ff4bef208fe092f4ad3e195c40a1c9b733ac96c8f26b5d501ef7e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:34:17 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 07:49:23 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 07:49:24 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 29 May 2018 18:28:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 07:49:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 07:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 07:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 07:49:32 GMT
USER [memcache]
# Thu, 07 Jun 2018 07:49:33 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 07:49:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0db37bdf4c1c0304d8047f54e7745edf943f360cbd6bcd830a60c72b84807a3`  
		Last Modified: Mon, 02 Apr 2018 17:45:04 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f82f1ee737191300d772dc49ee70d8586b7547281f13ac938b7f221f3ec26bb`  
		Last Modified: Thu, 07 Jun 2018 07:49:47 GMT  
		Size: 1.7 MB (1744255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdf8870eb902d234090967894f4c446081e3c8779d6d0caec9570ac9a411296`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9c697f648fdb8074be09f9b3f4eb223d64a3bc479cc7b53e12fe0ff1d049`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bd36f325bb48f9fd683e6048a9fa3c38869283cb21963bf57f86d32e51efefe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5507cb422510c06f801d3c06656f15e197329984561aaaba198ee274954aac35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:45:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:45:07 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:00:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 09:00:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:00:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:00:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:00:39 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:00:40 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:00:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb53dd7cc4e1cb08621b57bdc084ceebfe6ea58fb11207b51b3571604f8b1e`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 1.7 MB (1727445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279b97b14e3e44f2aa4126d3ef53d9900058c95a3e021a523cbbe79f823a5670`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f654268ce234bd3d8c812180b32df410d737969b483994560ca44ff4e98adb`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:a6a8b073e28a16404257fd77727847709c5f90da091622e07ed451ec37ee669a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd418c9150398328d2d5c7b9b8e409148de8fa2e9e2b31d7cbeaea4d67d0943`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:05:16 GMT
RUN adduser -D memcache
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:57:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 10:57:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:57:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:57:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:57:10 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:57:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:57:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd87a390862ce9119e192578c00742f2c9faba9770746f24d136ae91a50c68da`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee8bd2a69c31900263fcbde7a96f9555ed4759aabf68687f380bde7290c3060`  
		Last Modified: Thu, 07 Jun 2018 10:58:14 GMT  
		Size: 1.9 MB (1890960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427b4d7f0bc5f35f9d12138a6f32a1e36c670a72624eca8dbe5083abc4b899f`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124d077f3afbcf126be130859ba2b574f22b33bc61c6cfd70790eb27621e303`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1ea0ba3b0218978ffa00267a1d4d158e4f90790f031d2bfef28d420b3225dbc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3873456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719f0cd980fcc3fd1a939d1a04c33a95a7cb135acf79cf3e57d4afd1a43b3884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:22:20 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:22:21 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:40:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 08:40:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:41:01 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:41:05 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90178e693601045970e304a95b413dce820ff41aff996f2efd11a5536326ec`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 1.8 MB (1790132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418db14f0b367bd246547202be3e306980037ac533bbaa9b0b15dca04c72235c`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9321b2f9dbb9c77d0afbbe2021346bf9b86069166ac3610768ecb80f7eaf3c5f`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a1d1ac68e3cc7eb2e809b08579a59c1efa9c2f41346544ce0b04fb21dc2789a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88865e333119eeaa38b326ccded547ac3d6bc1e9a01be1079442f4771861d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:15:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 12:15:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:15:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:15:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:15:11 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:15:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:15:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa600c6525d04b5828b8a26ecc1673add94cb8423fd1f07c80a8b7ba61d901`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 1.8 MB (1830375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9adbea2279a8e485b77c3a0af1f3ca3047b69d012853d4ea4905bf4b2c4fd2`  
		Last Modified: Thu, 07 Jun 2018 12:16:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2672a3ca61c3a12ebacb54f8f0437b52aa8eb3eecf6dfccedcfcfea1594c410`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:176898c39012f1711edde575b6c4542cda685b8c5edebf18d554f2f5ee7a37ef
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
$ docker pull memcached@sha256:ac848d96d21dd6df7c23ef9199423bdf82b807998d68a8ac103713aad5a2b473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4733543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95220d440628f9b08fcbe0aa54b6d8ba04aa25c1433cd49b47ae4a0b36d6e98a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Fri, 06 Jul 2018 17:26:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 06 Jul 2018 17:26:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:26:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jul 2018 17:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:26:44 GMT
USER [memcache]
# Fri, 06 Jul 2018 17:26:45 GMT
EXPOSE 11211/tcp
# Fri, 06 Jul 2018 17:26:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9aac25d7070a362269931aedba8bce05364aed97d086a009563c9fd45859a7`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 2.6 MB (2628340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93df8e10373329f64831323370f1b3c649aa06332dfa511b34c9dd1c7042f1f`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ec4e4d268f32abac0fc94ea27df32bc87f7a266722237e3a5da9275d534ec`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:78ad5ce9cd3c4473ad5357b11895a08064b3335ea9a240e0f5259efb8002e6cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3784411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfaf74131ff4bef208fe092f4ad3e195c40a1c9b733ac96c8f26b5d501ef7e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:34:17 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 07:49:23 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 07:49:24 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 29 May 2018 18:28:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 07:49:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 07:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 07:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 07:49:32 GMT
USER [memcache]
# Thu, 07 Jun 2018 07:49:33 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 07:49:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0db37bdf4c1c0304d8047f54e7745edf943f360cbd6bcd830a60c72b84807a3`  
		Last Modified: Mon, 02 Apr 2018 17:45:04 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f82f1ee737191300d772dc49ee70d8586b7547281f13ac938b7f221f3ec26bb`  
		Last Modified: Thu, 07 Jun 2018 07:49:47 GMT  
		Size: 1.7 MB (1744255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdf8870eb902d234090967894f4c446081e3c8779d6d0caec9570ac9a411296`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9c697f648fdb8074be09f9b3f4eb223d64a3bc479cc7b53e12fe0ff1d049`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bd36f325bb48f9fd683e6048a9fa3c38869283cb21963bf57f86d32e51efefe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5507cb422510c06f801d3c06656f15e197329984561aaaba198ee274954aac35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:45:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:45:07 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:00:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 09:00:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:00:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:00:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:00:39 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:00:40 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:00:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb53dd7cc4e1cb08621b57bdc084ceebfe6ea58fb11207b51b3571604f8b1e`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 1.7 MB (1727445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279b97b14e3e44f2aa4126d3ef53d9900058c95a3e021a523cbbe79f823a5670`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f654268ce234bd3d8c812180b32df410d737969b483994560ca44ff4e98adb`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:a6a8b073e28a16404257fd77727847709c5f90da091622e07ed451ec37ee669a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd418c9150398328d2d5c7b9b8e409148de8fa2e9e2b31d7cbeaea4d67d0943`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:05:16 GMT
RUN adduser -D memcache
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:57:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 10:57:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:57:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:57:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:57:10 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:57:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:57:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd87a390862ce9119e192578c00742f2c9faba9770746f24d136ae91a50c68da`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee8bd2a69c31900263fcbde7a96f9555ed4759aabf68687f380bde7290c3060`  
		Last Modified: Thu, 07 Jun 2018 10:58:14 GMT  
		Size: 1.9 MB (1890960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427b4d7f0bc5f35f9d12138a6f32a1e36c670a72624eca8dbe5083abc4b899f`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124d077f3afbcf126be130859ba2b574f22b33bc61c6cfd70790eb27621e303`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1ea0ba3b0218978ffa00267a1d4d158e4f90790f031d2bfef28d420b3225dbc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3873456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719f0cd980fcc3fd1a939d1a04c33a95a7cb135acf79cf3e57d4afd1a43b3884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:22:20 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:22:21 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:40:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 08:40:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:41:01 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:41:05 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90178e693601045970e304a95b413dce820ff41aff996f2efd11a5536326ec`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 1.8 MB (1790132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418db14f0b367bd246547202be3e306980037ac533bbaa9b0b15dca04c72235c`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9321b2f9dbb9c77d0afbbe2021346bf9b86069166ac3610768ecb80f7eaf3c5f`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a1d1ac68e3cc7eb2e809b08579a59c1efa9c2f41346544ce0b04fb21dc2789a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88865e333119eeaa38b326ccded547ac3d6bc1e9a01be1079442f4771861d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:15:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 12:15:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:15:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:15:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:15:11 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:15:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:15:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa600c6525d04b5828b8a26ecc1673add94cb8423fd1f07c80a8b7ba61d901`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 1.8 MB (1830375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9adbea2279a8e485b77c3a0af1f3ca3047b69d012853d4ea4905bf4b2c4fd2`  
		Last Modified: Thu, 07 Jun 2018 12:16:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2672a3ca61c3a12ebacb54f8f0437b52aa8eb3eecf6dfccedcfcfea1594c410`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:176898c39012f1711edde575b6c4542cda685b8c5edebf18d554f2f5ee7a37ef
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
$ docker pull memcached@sha256:ac848d96d21dd6df7c23ef9199423bdf82b807998d68a8ac103713aad5a2b473
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4733543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95220d440628f9b08fcbe0aa54b6d8ba04aa25c1433cd49b47ae4a0b36d6e98a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 06 Jul 2018 17:21:44 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Fri, 06 Jul 2018 17:26:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 06 Jul 2018 17:26:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:26:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jul 2018 17:26:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:26:44 GMT
USER [memcache]
# Fri, 06 Jul 2018 17:26:45 GMT
EXPOSE 11211/tcp
# Fri, 06 Jul 2018 17:26:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9aac25d7070a362269931aedba8bce05364aed97d086a009563c9fd45859a7`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 2.6 MB (2628340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93df8e10373329f64831323370f1b3c649aa06332dfa511b34c9dd1c7042f1f`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ec4e4d268f32abac0fc94ea27df32bc87f7a266722237e3a5da9275d534ec`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:78ad5ce9cd3c4473ad5357b11895a08064b3335ea9a240e0f5259efb8002e6cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3784411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfaf74131ff4bef208fe092f4ad3e195c40a1c9b733ac96c8f26b5d501ef7e4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Mon, 02 Apr 2018 17:34:17 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 07:49:23 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 07:49:24 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 29 May 2018 18:28:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 07:49:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 07:49:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 07:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 07:49:32 GMT
USER [memcache]
# Thu, 07 Jun 2018 07:49:33 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 07:49:33 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0db37bdf4c1c0304d8047f54e7745edf943f360cbd6bcd830a60c72b84807a3`  
		Last Modified: Mon, 02 Apr 2018 17:45:04 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f82f1ee737191300d772dc49ee70d8586b7547281f13ac938b7f221f3ec26bb`  
		Last Modified: Thu, 07 Jun 2018 07:49:47 GMT  
		Size: 1.7 MB (1744255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdf8870eb902d234090967894f4c446081e3c8779d6d0caec9570ac9a411296`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9c697f648fdb8074be09f9b3f4eb223d64a3bc479cc7b53e12fe0ff1d049`  
		Last Modified: Thu, 07 Jun 2018 07:49:46 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bd36f325bb48f9fd683e6048a9fa3c38869283cb21963bf57f86d32e51efefe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5507cb422510c06f801d3c06656f15e197329984561aaaba198ee274954aac35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 04:16:39 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:45:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:45:07 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:00:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 09:00:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:00:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:00:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:00:39 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:00:40 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:00:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151c071afab1ab7b08ef0dbe8e2ea271716a48481c9f03bf22500bddd9538556`  
		Last Modified: Fri, 19 Jan 2018 04:21:20 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb53dd7cc4e1cb08621b57bdc084ceebfe6ea58fb11207b51b3571604f8b1e`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 1.7 MB (1727445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279b97b14e3e44f2aa4126d3ef53d9900058c95a3e021a523cbbe79f823a5670`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f654268ce234bd3d8c812180b32df410d737969b483994560ca44ff4e98adb`  
		Last Modified: Thu, 07 Jun 2018 09:01:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:a6a8b073e28a16404257fd77727847709c5f90da091622e07ed451ec37ee669a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd418c9150398328d2d5c7b9b8e409148de8fa2e9e2b31d7cbeaea4d67d0943`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:05:16 GMT
RUN adduser -D memcache
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:05:16 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:57:08 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 10:57:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:57:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:57:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:57:10 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:57:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:57:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd87a390862ce9119e192578c00742f2c9faba9770746f24d136ae91a50c68da`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee8bd2a69c31900263fcbde7a96f9555ed4759aabf68687f380bde7290c3060`  
		Last Modified: Thu, 07 Jun 2018 10:58:14 GMT  
		Size: 1.9 MB (1890960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427b4d7f0bc5f35f9d12138a6f32a1e36c670a72624eca8dbe5083abc4b899f`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124d077f3afbcf126be130859ba2b574f22b33bc61c6cfd70790eb27621e303`  
		Last Modified: Thu, 07 Jun 2018 10:58:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:1ea0ba3b0218978ffa00267a1d4d158e4f90790f031d2bfef28d420b3225dbc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3873456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719f0cd980fcc3fd1a939d1a04c33a95a7cb135acf79cf3e57d4afd1a43b3884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 08:22:20 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:22:21 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:40:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 08:40:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:40:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:41:01 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:41:05 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab31b119386a086d3a80f01a107e952063d9f94f3a50fe9a2dabc1b8fdd2b087`  
		Last Modified: Fri, 19 Jan 2018 01:37:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e90178e693601045970e304a95b413dce820ff41aff996f2efd11a5536326ec`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 1.8 MB (1790132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418db14f0b367bd246547202be3e306980037ac533bbaa9b0b15dca04c72235c`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9321b2f9dbb9c77d0afbbe2021346bf9b86069166ac3610768ecb80f7eaf3c5f`  
		Last Modified: Thu, 07 Jun 2018 08:42:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a1d1ac68e3cc7eb2e809b08579a59c1efa9c2f41346544ce0b04fb21dc2789a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88865e333119eeaa38b326ccded547ac3d6bc1e9a01be1079442f4771861d97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 18:33:29 GMT
RUN adduser -D memcache
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:45:42 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:15:10 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 07 Jun 2018 12:15:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:15:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:15:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:15:11 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:15:11 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:15:12 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee38c4a66157820c6274c579d65ea2b83987e188f25c816a44863a47059c895`  
		Last Modified: Fri, 19 Jan 2018 18:37:09 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa600c6525d04b5828b8a26ecc1673add94cb8423fd1f07c80a8b7ba61d901`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 1.8 MB (1830375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9adbea2279a8e485b77c3a0af1f3ca3047b69d012853d4ea4905bf4b2c4fd2`  
		Last Modified: Thu, 07 Jun 2018 12:16:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2672a3ca61c3a12ebacb54f8f0437b52aa8eb3eecf6dfccedcfcfea1594c410`  
		Last Modified: Thu, 07 Jun 2018 12:16:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:c405c8fb4fe14d99671e0bb113dd6edae76bd0f4d834484a2143ed1a5536b8bd
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
$ docker pull memcached@sha256:53b0621a4ce6e1f628e851e191820cf2f21f2119b75e9eb6a1c442fb8698fc09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23536317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26edf253ee405170267efcda4d441fb82b3740fcccb5ab5d6046d6b4fb036d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_VERSION=1.5.8
# Tue, 26 Jun 2018 22:54:53 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Tue, 26 Jun 2018 23:00:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 26 Jun 2018 23:00:20 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:00:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:00:21 GMT
USER [memcache]
# Tue, 26 Jun 2018 23:00:22 GMT
EXPOSE 11211/tcp
# Tue, 26 Jun 2018 23:00:22 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebad33fff3adbd3ec77d3b3a5a792c3c8ba6583c5905efe38c6c095c9ec9fb5`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.0 MB (1037184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55c7b09a89fe78b39ebbf8cf7dd4e75a3cc299b45a21032714346a36f72848b`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42aa47a1e89299335fb375202706ce7aa304ff78f0f1b0ca69f6eeb32d257433`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:ae81e6ab6d735b848809a0622811c5f94c8222203104a86c73e70581cc62e12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20273286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27734c9660132cd41ccf5e5dc862627b4ee7893833e707bd6c5f88eaa982f944`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:57:38 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:57:39 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 09:18:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 09:19:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 09:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 09:19:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 09:19:05 GMT
USER [memcache]
# Thu, 07 Jun 2018 09:19:06 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 09:19:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d2f16e955d96914328645091ceed06b9a0d69564a8b49f909c13b70fc648b6`  
		Last Modified: Sat, 28 Apr 2018 12:49:37 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ffb0ca9d574024d090c81a23ac5554b14e98f44b95f89b0df1dd34df24c7f4`  
		Last Modified: Thu, 07 Jun 2018 09:19:34 GMT  
		Size: 984.3 KB (984343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b362f098c908f3534bab3ea5e0ca9c08e7dfdb7e8ae6deb0a3db6ca614a582d`  
		Last Modified: Thu, 07 Jun 2018 09:19:33 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1744a3862ae1389d028d680ddff91a494e28ef2d4827fcf169175d4ae23a58`  
		Last Modified: Thu, 07 Jun 2018 09:19:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a27b0f568aca23c5d3fc1698d41747e4f15fa27bb65d55ba793db785d0218647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4558851cfead0dd1d85bce183f8ce4fbea7bc97c443a95287af52da997f5fde4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 11:46:17 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 11:46:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 11:53:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 11:53:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:54:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 11:54:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:54:09 GMT
USER [memcache]
# Wed, 27 Jun 2018 11:54:09 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 11:54:10 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8be1d51ccf1f8679b781f18c85d6a1456a623266b8ebe8908322dfabbffbd3c`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 997.2 KB (997176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3467bd2b175838be15e2ba4dbda00bd9383aecf3c07174735afc68d686d1edad`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34756646aa68bdaecbb814146bff766b656f57d86ce188619dd29d41184fe3d`  
		Last Modified: Wed, 27 Jun 2018 11:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:92a4e73c7875089bf7df3dc7f7f73166ee57ad92d0f2473695737dbe837aff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24187536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb43b9123eb7422ceb28eae57a0b164d4282fbbdfc06fb5c8b96ad0a858a982`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:18:09 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:18:10 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:23:37 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:23:38 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:23:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:23:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:23:39 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:23:40 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:23:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e62e32e728a4648c2a72bba8073f45cf7d98cdaee5df6cac3b10d3d3fcc552`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.0 MB (1045286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6261aee254d5983fdb9bfa3ee5f456f77cab8bcacdf1a52e14cdcd9c1002c83`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6ff01f6643c1d5191249a7e0241f12c93ca96d24e00eacf4095df490c0790`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:16e9db08215077bb3e028297508903b6451dbe5dad22ea358bc0c371f14cb746
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096b0f8d5670c2889661e10c7764128a3ef49bbe02853d86b9d0017e62ffece6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 10:11:42 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 10:11:43 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 10:19:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 10:19:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:19:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 10:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:19:30 GMT
USER [memcache]
# Wed, 27 Jun 2018 10:19:31 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 10:19:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bce73ec561a8e2e92cc18d5962023fe28d68ca4b8a05c421aff4207089db40`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.0 MB (1028219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6673ff587bea0dacfd60b77d30715ae5d1a0cec9dadb26928066ba8860f4e4c7`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ba7aced89e48e86b6c874cc347ba304b54975adb3203475045f7ef796f8f5b`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:fde9456ec0f6c60af881c916ce2008d1db2778df7fa2a34fca88673dce204b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9a2b31031d3490654e900cc4e08679d875afe0ba807974e5228e4a1544a4b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 27 Jun 2018 12:25:19 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 27 Jun 2018 12:28:49 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 27 Jun 2018 12:28:49 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:28:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 27 Jun 2018 12:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:28:50 GMT
USER [memcache]
# Wed, 27 Jun 2018 12:28:50 GMT
EXPOSE 11211/tcp
# Wed, 27 Jun 2018 12:28:50 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171de5e51482337e3dfe493aaf8c6d88907115528168d018e0fffd91b8fb32ad`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 997.7 KB (997660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702423434de3b45bc67b6b9e258313936ba3d82d6122cff70457001ca7132b12`  
		Last Modified: Wed, 27 Jun 2018 12:29:19 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c02d0a354d37b261dc0e89426fbe44209d5759febff814b1ad764889431d24f`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

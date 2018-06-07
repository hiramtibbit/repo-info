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
$ docker pull memcached@sha256:69d5638275e4dc28bc3c7ca7f8d21741e84da2093db9d6ff9e6d04c52c306340
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
$ docker pull memcached@sha256:89e5e8b6e8dc7d05d1d0c9db9f41ad444c703892c5308df6191a0f1d7c2f0a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea27f66704bd868c3247b062a65c3dfc8866d1d1ac54c4048d9355bd9bb12c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:32:26 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:37:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Jun 2018 18:37:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:37:59 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:37:59 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:38:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5b3a7f1cf90e020291c645e5925a8b476390b69a7aecac512d90e03cdca672`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bdf31c9ed87e3e1f81cf6af82b920202790bbfec4d6ab466e03efc18618f05`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.0 MB (1037128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f36db505517933db43352a6b586c3095ef9e5eb2cf2cdda014c8d5e75fced4`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1069ed1927e805df8f4d810db154d8816a28b8107e75412b14b4d72e12cdc410`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
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
$ docker pull memcached@sha256:750196468d5b397e14b3bdeb6278878731c4b9dd8ea10f15ccbc51454f5a603a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402a50944acbfacc1a2a98ec9d3acc745b18f0c5fc85996a0258570ab26c68c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:05:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:39:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:39:38 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:54:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:54:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:54:29 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:54:30 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150c12a61ad4cb38b6f5f375524163b4508a289efad4a360d7d2121b4029fce`  
		Last Modified: Tue, 01 May 2018 12:14:06 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594c31db067681c40c48632b93aa964864e4aea368356c92463e70d91cd1c68b`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4fdc881140666ad4588b10b0dd8583eab7b8ecdff5bd6e08687bf266e55479`  
		Last Modified: Thu, 07 Jun 2018 09:01:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef322bb7d1bc93ebeccd76a22a1d0ef95d747b7516ad652a6674374165c02ca`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:2b85f2856e7bbfd212edef91a54f732e5bdd335960d4743ddb65cca630e28d3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24185959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a926e877648dc277c715c2c25acc7a57f080603ffafcc8fd98455bf4a2fdb20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 10:00:51 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:51:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 10:51:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:51:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:51:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:51:31 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:51:32 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:51:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d59d008002293600b66c92d516517ffdb8927063e5e5886a3b556443397b540`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04002fdb898593a746e319660477deca6688fcb11ead600d757ba92f6dc9c716`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 1.0 MB (1045287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a467eaf1742d19f39768f4dcdcee495040c92df89a4a9b7acfabcdb5f67bf34`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15913301701a4cc3b460af8a14516092e9c71cbec5b52c2b1a7d36b5ecfc14ed`  
		Last Modified: Thu, 07 Jun 2018 10:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:da0d8d40ac1b02bef410f7f732fa73eced36d45753d3499dc755d6b72f38a1c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1395dfd7d26367180fc72880431965c67ea949aee87ad940faf76c18a330a15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:23:57 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:16:45 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:16:46 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:34:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:34:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:34:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:34:43 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:34:44 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:34:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ace00e3c3a96af93d6777f25e74fff953c74264011fb1f9e560ab78346c6cd2`  
		Last Modified: Sat, 28 Apr 2018 09:29:37 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067849d552699054d033839bd25163ef89d31f18bbf83c004421424033540ea`  
		Last Modified: Thu, 07 Jun 2018 08:41:35 GMT  
		Size: 1.0 MB (1028112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e03d4ef919bc28327c6de076c60d2820c5a37c206764e17fded8c3a91a0b92a`  
		Last Modified: Thu, 07 Jun 2018 08:41:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2930d1f62a0ea3d5b7f008acff2f653e19b520feac429b227b1912bee46daae`  
		Last Modified: Thu, 07 Jun 2018 08:34:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:ba0d9583bd6fb499812d6b513c46a85a92d6858900d81d4fa998ed40be49ab7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef204cf3145c797b5dfcd25c4afba0254897b9c1d8b3174394b4bd7db66e1ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:26:10 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:11:23 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 12:11:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:11:24 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:11:25 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:11:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc88cc513f9e5b6488645fef9d6c446b0fa71ebc92f48c73133664e09134218`  
		Last Modified: Sat, 28 Apr 2018 14:30:20 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce54709cc4f2b18851abc35abc5bd3b00c281e1178c9a046daf8bc7434ee435`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 997.7 KB (997726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3070a9cbada259589b409c8fdc4ed0d0902835f6051d4af172b34b2ab77f2820`  
		Last Modified: Thu, 07 Jun 2018 12:15:32 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b597e45f46d7293754fbdef25b3a10f4978b3ff2da0c70455bfe23332f1a848`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:69d5638275e4dc28bc3c7ca7f8d21741e84da2093db9d6ff9e6d04c52c306340
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
$ docker pull memcached@sha256:89e5e8b6e8dc7d05d1d0c9db9f41ad444c703892c5308df6191a0f1d7c2f0a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea27f66704bd868c3247b062a65c3dfc8866d1d1ac54c4048d9355bd9bb12c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:32:26 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:37:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Jun 2018 18:37:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:37:59 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:37:59 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:38:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5b3a7f1cf90e020291c645e5925a8b476390b69a7aecac512d90e03cdca672`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bdf31c9ed87e3e1f81cf6af82b920202790bbfec4d6ab466e03efc18618f05`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.0 MB (1037128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f36db505517933db43352a6b586c3095ef9e5eb2cf2cdda014c8d5e75fced4`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1069ed1927e805df8f4d810db154d8816a28b8107e75412b14b4d72e12cdc410`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
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
$ docker pull memcached@sha256:750196468d5b397e14b3bdeb6278878731c4b9dd8ea10f15ccbc51454f5a603a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402a50944acbfacc1a2a98ec9d3acc745b18f0c5fc85996a0258570ab26c68c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:05:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:39:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:39:38 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:54:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:54:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:54:29 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:54:30 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150c12a61ad4cb38b6f5f375524163b4508a289efad4a360d7d2121b4029fce`  
		Last Modified: Tue, 01 May 2018 12:14:06 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594c31db067681c40c48632b93aa964864e4aea368356c92463e70d91cd1c68b`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4fdc881140666ad4588b10b0dd8583eab7b8ecdff5bd6e08687bf266e55479`  
		Last Modified: Thu, 07 Jun 2018 09:01:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef322bb7d1bc93ebeccd76a22a1d0ef95d747b7516ad652a6674374165c02ca`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:2b85f2856e7bbfd212edef91a54f732e5bdd335960d4743ddb65cca630e28d3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24185959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a926e877648dc277c715c2c25acc7a57f080603ffafcc8fd98455bf4a2fdb20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 10:00:51 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:51:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 10:51:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:51:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:51:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:51:31 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:51:32 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:51:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d59d008002293600b66c92d516517ffdb8927063e5e5886a3b556443397b540`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04002fdb898593a746e319660477deca6688fcb11ead600d757ba92f6dc9c716`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 1.0 MB (1045287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a467eaf1742d19f39768f4dcdcee495040c92df89a4a9b7acfabcdb5f67bf34`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15913301701a4cc3b460af8a14516092e9c71cbec5b52c2b1a7d36b5ecfc14ed`  
		Last Modified: Thu, 07 Jun 2018 10:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:da0d8d40ac1b02bef410f7f732fa73eced36d45753d3499dc755d6b72f38a1c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1395dfd7d26367180fc72880431965c67ea949aee87ad940faf76c18a330a15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:23:57 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:16:45 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:16:46 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:34:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:34:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:34:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:34:43 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:34:44 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:34:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ace00e3c3a96af93d6777f25e74fff953c74264011fb1f9e560ab78346c6cd2`  
		Last Modified: Sat, 28 Apr 2018 09:29:37 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067849d552699054d033839bd25163ef89d31f18bbf83c004421424033540ea`  
		Last Modified: Thu, 07 Jun 2018 08:41:35 GMT  
		Size: 1.0 MB (1028112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e03d4ef919bc28327c6de076c60d2820c5a37c206764e17fded8c3a91a0b92a`  
		Last Modified: Thu, 07 Jun 2018 08:41:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2930d1f62a0ea3d5b7f008acff2f653e19b520feac429b227b1912bee46daae`  
		Last Modified: Thu, 07 Jun 2018 08:34:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:ba0d9583bd6fb499812d6b513c46a85a92d6858900d81d4fa998ed40be49ab7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef204cf3145c797b5dfcd25c4afba0254897b9c1d8b3174394b4bd7db66e1ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:26:10 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:11:23 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 12:11:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:11:24 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:11:25 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:11:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc88cc513f9e5b6488645fef9d6c446b0fa71ebc92f48c73133664e09134218`  
		Last Modified: Sat, 28 Apr 2018 14:30:20 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce54709cc4f2b18851abc35abc5bd3b00c281e1178c9a046daf8bc7434ee435`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 997.7 KB (997726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3070a9cbada259589b409c8fdc4ed0d0902835f6051d4af172b34b2ab77f2820`  
		Last Modified: Thu, 07 Jun 2018 12:15:32 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b597e45f46d7293754fbdef25b3a10f4978b3ff2da0c70455bfe23332f1a848`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.8`

```console
$ docker pull memcached@sha256:69d5638275e4dc28bc3c7ca7f8d21741e84da2093db9d6ff9e6d04c52c306340
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
$ docker pull memcached@sha256:89e5e8b6e8dc7d05d1d0c9db9f41ad444c703892c5308df6191a0f1d7c2f0a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea27f66704bd868c3247b062a65c3dfc8866d1d1ac54c4048d9355bd9bb12c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:32:26 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:37:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Jun 2018 18:37:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:37:59 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:37:59 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:38:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5b3a7f1cf90e020291c645e5925a8b476390b69a7aecac512d90e03cdca672`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bdf31c9ed87e3e1f81cf6af82b920202790bbfec4d6ab466e03efc18618f05`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.0 MB (1037128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f36db505517933db43352a6b586c3095ef9e5eb2cf2cdda014c8d5e75fced4`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1069ed1927e805df8f4d810db154d8816a28b8107e75412b14b4d72e12cdc410`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
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
$ docker pull memcached@sha256:750196468d5b397e14b3bdeb6278878731c4b9dd8ea10f15ccbc51454f5a603a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402a50944acbfacc1a2a98ec9d3acc745b18f0c5fc85996a0258570ab26c68c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:05:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:39:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:39:38 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:54:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:54:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:54:29 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:54:30 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150c12a61ad4cb38b6f5f375524163b4508a289efad4a360d7d2121b4029fce`  
		Last Modified: Tue, 01 May 2018 12:14:06 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594c31db067681c40c48632b93aa964864e4aea368356c92463e70d91cd1c68b`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4fdc881140666ad4588b10b0dd8583eab7b8ecdff5bd6e08687bf266e55479`  
		Last Modified: Thu, 07 Jun 2018 09:01:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef322bb7d1bc93ebeccd76a22a1d0ef95d747b7516ad652a6674374165c02ca`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; 386

```console
$ docker pull memcached@sha256:2b85f2856e7bbfd212edef91a54f732e5bdd335960d4743ddb65cca630e28d3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24185959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a926e877648dc277c715c2c25acc7a57f080603ffafcc8fd98455bf4a2fdb20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 10:00:51 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:51:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 10:51:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:51:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:51:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:51:31 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:51:32 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:51:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d59d008002293600b66c92d516517ffdb8927063e5e5886a3b556443397b540`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04002fdb898593a746e319660477deca6688fcb11ead600d757ba92f6dc9c716`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 1.0 MB (1045287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a467eaf1742d19f39768f4dcdcee495040c92df89a4a9b7acfabcdb5f67bf34`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15913301701a4cc3b460af8a14516092e9c71cbec5b52c2b1a7d36b5ecfc14ed`  
		Last Modified: Thu, 07 Jun 2018 10:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; ppc64le

```console
$ docker pull memcached@sha256:da0d8d40ac1b02bef410f7f732fa73eced36d45753d3499dc755d6b72f38a1c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1395dfd7d26367180fc72880431965c67ea949aee87ad940faf76c18a330a15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:23:57 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:16:45 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:16:46 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:34:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:34:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:34:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:34:43 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:34:44 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:34:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ace00e3c3a96af93d6777f25e74fff953c74264011fb1f9e560ab78346c6cd2`  
		Last Modified: Sat, 28 Apr 2018 09:29:37 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067849d552699054d033839bd25163ef89d31f18bbf83c004421424033540ea`  
		Last Modified: Thu, 07 Jun 2018 08:41:35 GMT  
		Size: 1.0 MB (1028112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e03d4ef919bc28327c6de076c60d2820c5a37c206764e17fded8c3a91a0b92a`  
		Last Modified: Thu, 07 Jun 2018 08:41:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2930d1f62a0ea3d5b7f008acff2f653e19b520feac429b227b1912bee46daae`  
		Last Modified: Thu, 07 Jun 2018 08:34:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; s390x

```console
$ docker pull memcached@sha256:ba0d9583bd6fb499812d6b513c46a85a92d6858900d81d4fa998ed40be49ab7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef204cf3145c797b5dfcd25c4afba0254897b9c1d8b3174394b4bd7db66e1ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:26:10 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:11:23 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 12:11:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:11:24 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:11:25 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:11:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc88cc513f9e5b6488645fef9d6c446b0fa71ebc92f48c73133664e09134218`  
		Last Modified: Sat, 28 Apr 2018 14:30:20 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce54709cc4f2b18851abc35abc5bd3b00c281e1178c9a046daf8bc7434ee435`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 997.7 KB (997726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3070a9cbada259589b409c8fdc4ed0d0902835f6051d4af172b34b2ab77f2820`  
		Last Modified: Thu, 07 Jun 2018 12:15:32 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b597e45f46d7293754fbdef25b3a10f4978b3ff2da0c70455bfe23332f1a848`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.8-alpine`

```console
$ docker pull memcached@sha256:fa2836ea8d82c0f71dc5a5a3e740e8331fb0376c54fc86456f48697906082db2
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
$ docker pull memcached@sha256:b0a463aec876fd1f6a2c4a58246e657829cbe85ebb926f413eb0cf9b29d64dc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3864571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8ecd7127f349a75221c26a18f42f490e50d3034ebfbfd1db5677123b8d9df5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 18:38:05 GMT
RUN adduser -D memcache
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:48:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Jun 2018 18:48:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:48:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:48:26 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:48:27 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:48:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c131ab69acd897a799bf7f8ee0dea2a8cbc6739dd4f1dea66d481ce4afb64a`  
		Last Modified: Wed, 06 Jun 2018 18:49:06 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a0ed3f6df546f08f84e52cf50f7a757f85bed453a41999e17b23d41f5682d7`  
		Last Modified: Wed, 06 Jun 2018 18:49:08 GMT  
		Size: 1.8 MB (1797382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214945deb746971109a5d6bf0604d880d0fb05afaec5223a1ed2a1034ad7cb2f`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76de294c7397ccd14f91c7719e4ebffed8dd02596a2f93c3478cbdc56b4a9b9`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
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
$ docker pull memcached@sha256:fa2836ea8d82c0f71dc5a5a3e740e8331fb0376c54fc86456f48697906082db2
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
$ docker pull memcached@sha256:b0a463aec876fd1f6a2c4a58246e657829cbe85ebb926f413eb0cf9b29d64dc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3864571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8ecd7127f349a75221c26a18f42f490e50d3034ebfbfd1db5677123b8d9df5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 18:38:05 GMT
RUN adduser -D memcache
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:48:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Jun 2018 18:48:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:48:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:48:26 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:48:27 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:48:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c131ab69acd897a799bf7f8ee0dea2a8cbc6739dd4f1dea66d481ce4afb64a`  
		Last Modified: Wed, 06 Jun 2018 18:49:06 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a0ed3f6df546f08f84e52cf50f7a757f85bed453a41999e17b23d41f5682d7`  
		Last Modified: Wed, 06 Jun 2018 18:49:08 GMT  
		Size: 1.8 MB (1797382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214945deb746971109a5d6bf0604d880d0fb05afaec5223a1ed2a1034ad7cb2f`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76de294c7397ccd14f91c7719e4ebffed8dd02596a2f93c3478cbdc56b4a9b9`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
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
$ docker pull memcached@sha256:fa2836ea8d82c0f71dc5a5a3e740e8331fb0376c54fc86456f48697906082db2
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
$ docker pull memcached@sha256:b0a463aec876fd1f6a2c4a58246e657829cbe85ebb926f413eb0cf9b29d64dc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3864571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8ecd7127f349a75221c26a18f42f490e50d3034ebfbfd1db5677123b8d9df5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 18:38:05 GMT
RUN adduser -D memcache
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:48:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Jun 2018 18:48:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:48:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:48:26 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:48:27 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:48:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c131ab69acd897a799bf7f8ee0dea2a8cbc6739dd4f1dea66d481ce4afb64a`  
		Last Modified: Wed, 06 Jun 2018 18:49:06 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a0ed3f6df546f08f84e52cf50f7a757f85bed453a41999e17b23d41f5682d7`  
		Last Modified: Wed, 06 Jun 2018 18:49:08 GMT  
		Size: 1.8 MB (1797382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214945deb746971109a5d6bf0604d880d0fb05afaec5223a1ed2a1034ad7cb2f`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76de294c7397ccd14f91c7719e4ebffed8dd02596a2f93c3478cbdc56b4a9b9`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
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
$ docker pull memcached@sha256:fa2836ea8d82c0f71dc5a5a3e740e8331fb0376c54fc86456f48697906082db2
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
$ docker pull memcached@sha256:b0a463aec876fd1f6a2c4a58246e657829cbe85ebb926f413eb0cf9b29d64dc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3864571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8ecd7127f349a75221c26a18f42f490e50d3034ebfbfd1db5677123b8d9df5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 18:38:05 GMT
RUN adduser -D memcache
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:38:06 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:48:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 06 Jun 2018 18:48:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:48:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:48:26 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:48:27 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:48:27 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c131ab69acd897a799bf7f8ee0dea2a8cbc6739dd4f1dea66d481ce4afb64a`  
		Last Modified: Wed, 06 Jun 2018 18:49:06 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a0ed3f6df546f08f84e52cf50f7a757f85bed453a41999e17b23d41f5682d7`  
		Last Modified: Wed, 06 Jun 2018 18:49:08 GMT  
		Size: 1.8 MB (1797382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214945deb746971109a5d6bf0604d880d0fb05afaec5223a1ed2a1034ad7cb2f`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76de294c7397ccd14f91c7719e4ebffed8dd02596a2f93c3478cbdc56b4a9b9`  
		Last Modified: Wed, 06 Jun 2018 18:49:07 GMT  
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
$ docker pull memcached@sha256:69d5638275e4dc28bc3c7ca7f8d21741e84da2093db9d6ff9e6d04c52c306340
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
$ docker pull memcached@sha256:89e5e8b6e8dc7d05d1d0c9db9f41ad444c703892c5308df6191a0f1d7c2f0a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea27f66704bd868c3247b062a65c3dfc8866d1d1ac54c4048d9355bd9bb12c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:32:26 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_VERSION=1.5.8
# Wed, 06 Jun 2018 18:32:26 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Wed, 06 Jun 2018 18:37:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Jun 2018 18:37:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 06 Jun 2018 18:37:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Jun 2018 18:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 18:37:59 GMT
USER [memcache]
# Wed, 06 Jun 2018 18:37:59 GMT
EXPOSE 11211/tcp
# Wed, 06 Jun 2018 18:38:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5b3a7f1cf90e020291c645e5925a8b476390b69a7aecac512d90e03cdca672`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bdf31c9ed87e3e1f81cf6af82b920202790bbfec4d6ab466e03efc18618f05`  
		Last Modified: Wed, 06 Jun 2018 18:48:44 GMT  
		Size: 1.0 MB (1037128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f36db505517933db43352a6b586c3095ef9e5eb2cf2cdda014c8d5e75fced4`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1069ed1927e805df8f4d810db154d8816a28b8107e75412b14b4d72e12cdc410`  
		Last Modified: Wed, 06 Jun 2018 18:48:43 GMT  
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
$ docker pull memcached@sha256:750196468d5b397e14b3bdeb6278878731c4b9dd8ea10f15ccbc51454f5a603a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402a50944acbfacc1a2a98ec9d3acc745b18f0c5fc85996a0258570ab26c68c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:05:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:39:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:39:38 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:54:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:54:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:54:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:54:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:54:29 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:54:30 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:54:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e150c12a61ad4cb38b6f5f375524163b4508a289efad4a360d7d2121b4029fce`  
		Last Modified: Tue, 01 May 2018 12:14:06 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594c31db067681c40c48632b93aa964864e4aea368356c92463e70d91cd1c68b`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 996.9 KB (996932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4fdc881140666ad4588b10b0dd8583eab7b8ecdff5bd6e08687bf266e55479`  
		Last Modified: Thu, 07 Jun 2018 09:01:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef322bb7d1bc93ebeccd76a22a1d0ef95d747b7516ad652a6674374165c02ca`  
		Last Modified: Thu, 07 Jun 2018 09:01:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:2b85f2856e7bbfd212edef91a54f732e5bdd335960d4743ddb65cca630e28d3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24185959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a926e877648dc277c715c2c25acc7a57f080603ffafcc8fd98455bf4a2fdb20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 10:00:51 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_VERSION=1.5.8
# Fri, 01 Jun 2018 10:00:51 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 10:51:30 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 10:51:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 10:51:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 10:51:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 10:51:31 GMT
USER [memcache]
# Thu, 07 Jun 2018 10:51:32 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 10:51:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d59d008002293600b66c92d516517ffdb8927063e5e5886a3b556443397b540`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04002fdb898593a746e319660477deca6688fcb11ead600d757ba92f6dc9c716`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 1.0 MB (1045287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a467eaf1742d19f39768f4dcdcee495040c92df89a4a9b7acfabcdb5f67bf34`  
		Last Modified: Thu, 07 Jun 2018 10:57:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15913301701a4cc3b460af8a14516092e9c71cbec5b52c2b1a7d36b5ecfc14ed`  
		Last Modified: Thu, 07 Jun 2018 10:57:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:da0d8d40ac1b02bef410f7f732fa73eced36d45753d3499dc755d6b72f38a1c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1395dfd7d26367180fc72880431965c67ea949aee87ad940faf76c18a330a15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:23:57 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:16:45 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:16:46 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 08:34:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 08:34:37 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 08:34:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 08:34:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 08:34:43 GMT
USER [memcache]
# Thu, 07 Jun 2018 08:34:44 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 08:34:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ace00e3c3a96af93d6777f25e74fff953c74264011fb1f9e560ab78346c6cd2`  
		Last Modified: Sat, 28 Apr 2018 09:29:37 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067849d552699054d033839bd25163ef89d31f18bbf83c004421424033540ea`  
		Last Modified: Thu, 07 Jun 2018 08:41:35 GMT  
		Size: 1.0 MB (1028112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e03d4ef919bc28327c6de076c60d2820c5a37c206764e17fded8c3a91a0b92a`  
		Last Modified: Thu, 07 Jun 2018 08:41:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2930d1f62a0ea3d5b7f008acff2f653e19b520feac429b227b1912bee46daae`  
		Last Modified: Thu, 07 Jun 2018 08:34:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:ba0d9583bd6fb499812d6b513c46a85a92d6858900d81d4fa998ed40be49ab7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef204cf3145c797b5dfcd25c4afba0254897b9c1d8b3174394b4bd7db66e1ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:26:10 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 11:41:37 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Thu, 07 Jun 2018 12:11:23 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 07 Jun 2018 12:11:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 07 Jun 2018 12:11:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 07 Jun 2018 12:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:11:24 GMT
USER [memcache]
# Thu, 07 Jun 2018 12:11:25 GMT
EXPOSE 11211/tcp
# Thu, 07 Jun 2018 12:11:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc88cc513f9e5b6488645fef9d6c446b0fa71ebc92f48c73133664e09134218`  
		Last Modified: Sat, 28 Apr 2018 14:30:20 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce54709cc4f2b18851abc35abc5bd3b00c281e1178c9a046daf8bc7434ee435`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 997.7 KB (997726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3070a9cbada259589b409c8fdc4ed0d0902835f6051d4af172b34b2ab77f2820`  
		Last Modified: Thu, 07 Jun 2018 12:15:32 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b597e45f46d7293754fbdef25b3a10f4978b3ff2da0c70455bfe23332f1a848`  
		Last Modified: Thu, 07 Jun 2018 12:15:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

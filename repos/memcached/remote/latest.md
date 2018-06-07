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

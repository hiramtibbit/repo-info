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
$ docker pull memcached@sha256:f61791b13c30e1dfacf7dc4ba87a7872e16c55b87a9a650e497d7edaae5ff216
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
$ docker pull memcached@sha256:2fb655a042f7db09b12584ff9c08d6c8c6b1a7be442865b3cffeb55bde7f7773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22146435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62eb1b02d818514a975f29e867d6665ff94313b4f9d7d878e0cf9c9f14c72a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:21:25 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:48:21 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:48:22 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Sat, 26 May 2018 09:01:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 09:01:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 09:01:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 09:01:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 09:01:51 GMT
USER [memcache]
# Sat, 26 May 2018 09:01:52 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 09:01:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab40d1e6c0334f4bfb8accd0ab84929dde5989cac4135f4ac6c1b2771caf835`  
		Last Modified: Sat, 28 Apr 2018 09:35:59 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd2194ab768d005f64e058c476520e035d7494694870e52f8942f22892a3e67`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 968.6 KB (968610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b08530024ba7d1e90992de73d65fe7a4ae67600d8a659e03ec2155898c2ddf`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f58f99722de7dfeebfea4fb82d0787abb9a17e8c02b800bc71530942d187d0f`  
		Last Modified: Sat, 26 May 2018 09:02:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a8be14c66e0fa140c2f18fa7dfbf9b1a890144e50a323429a2c9ddd79c0d927d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20225735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e629cd8ac178d2abd7e648eece03d3225ec48f949742c4ae4be25ba52bf82ad6`
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
# Sat, 26 May 2018 12:22:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 12:22:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 12:22:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 12:22:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 12:22:38 GMT
USER [memcache]
# Sat, 26 May 2018 12:22:39 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 12:22:39 GMT
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
	-	`sha256:91f177faef345db662ddad969473b10342cd0982b677015418e436afe4af1817`  
		Last Modified: Sat, 26 May 2018 12:23:02 GMT  
		Size: 936.8 KB (936792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030115f3c31bbbfb534cf5074fce587d65d446efd38444d1d57d10cbfbb3c672`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d79ece6d6c331ab6d9c5819b2bda5a1f75026bc1f480d266fc55fa78268bf`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a991f91799f8fd54e33b9943f09b31e229019129f532330cb0b6e2311a312a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21299656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:741547e5c84ac13884d84e78603a746099507687d132936f6c154cebc8aa7f18`
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
# Sat, 26 May 2018 08:44:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 08:44:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:44:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:44:46 GMT
USER [memcache]
# Sat, 26 May 2018 08:44:47 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:44:48 GMT
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
	-	`sha256:2365160ae45c19b53565534568da4c60abdd60f700867b54fd74fdd1a7cd0b19`  
		Last Modified: Sat, 26 May 2018 08:49:41 GMT  
		Size: 949.6 KB (949584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563acf1c849e056c2cddb997fee15708bc810706bf5a882cbfe5d057c2005fc4`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0fc5785379695b743eba111d781ddde1965d05693da51ec6a7868157bb9b55`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:555f7e83354762153914abc789c34d9f5848d0ab7c57c6b247a4d7260d0b6523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24130979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed712598bce5844175cf5f00ce08e45974d33416256ee4dcdf06786f90a433`
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
# Fri, 01 Jun 2018 10:04:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 01 Jun 2018 10:04:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:04:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:05:00 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:05:00 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:05:00 GMT
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
	-	`sha256:cfdcaf01ded03b4c77997b0f023b269c57dbb7ae42894d25fcd0a76729a25ec2`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 990.3 KB (990308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7e19eaa1a52e21d13c9aa605144bae653381401228505efd49a4aecc22037`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03069ceb54973cfd12f6a8a8ea07be4eedeaba6730c1a66d39e8413f418a4207`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
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
$ docker pull memcached@sha256:5c23ca85a8f7a9de70e7fba623377d9ae486351dc01d62d61142cf8087d4f5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3d476d3811b1dd034f8e83140eee0f740a0683ff09466cbfd307eb23f965a`
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
# Sat, 26 May 2018 11:45:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 11:45:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:45:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:45:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:45:15 GMT
USER [memcache]
# Sat, 26 May 2018 11:45:16 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:45:16 GMT
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
	-	`sha256:b23a19966951b83bb936ada5ce4ccec9076b381579a387d0d92342749e359783`  
		Last Modified: Sat, 26 May 2018 11:49:44 GMT  
		Size: 997.8 KB (997752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0fce82b927ba92d19e1c39371ce9bdec9ba53626e4618e4cee5475ceb83c97`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676e2c1461bd3c0896655703f28bbae41464c07f5d193bbcd1b37ec8401e8755`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:f61791b13c30e1dfacf7dc4ba87a7872e16c55b87a9a650e497d7edaae5ff216
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
$ docker pull memcached@sha256:2fb655a042f7db09b12584ff9c08d6c8c6b1a7be442865b3cffeb55bde7f7773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22146435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62eb1b02d818514a975f29e867d6665ff94313b4f9d7d878e0cf9c9f14c72a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:21:25 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:48:21 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:48:22 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Sat, 26 May 2018 09:01:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 09:01:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 09:01:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 09:01:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 09:01:51 GMT
USER [memcache]
# Sat, 26 May 2018 09:01:52 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 09:01:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab40d1e6c0334f4bfb8accd0ab84929dde5989cac4135f4ac6c1b2771caf835`  
		Last Modified: Sat, 28 Apr 2018 09:35:59 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd2194ab768d005f64e058c476520e035d7494694870e52f8942f22892a3e67`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 968.6 KB (968610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b08530024ba7d1e90992de73d65fe7a4ae67600d8a659e03ec2155898c2ddf`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f58f99722de7dfeebfea4fb82d0787abb9a17e8c02b800bc71530942d187d0f`  
		Last Modified: Sat, 26 May 2018 09:02:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a8be14c66e0fa140c2f18fa7dfbf9b1a890144e50a323429a2c9ddd79c0d927d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20225735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e629cd8ac178d2abd7e648eece03d3225ec48f949742c4ae4be25ba52bf82ad6`
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
# Sat, 26 May 2018 12:22:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 12:22:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 12:22:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 12:22:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 12:22:38 GMT
USER [memcache]
# Sat, 26 May 2018 12:22:39 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 12:22:39 GMT
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
	-	`sha256:91f177faef345db662ddad969473b10342cd0982b677015418e436afe4af1817`  
		Last Modified: Sat, 26 May 2018 12:23:02 GMT  
		Size: 936.8 KB (936792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030115f3c31bbbfb534cf5074fce587d65d446efd38444d1d57d10cbfbb3c672`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d79ece6d6c331ab6d9c5819b2bda5a1f75026bc1f480d266fc55fa78268bf`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a991f91799f8fd54e33b9943f09b31e229019129f532330cb0b6e2311a312a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21299656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:741547e5c84ac13884d84e78603a746099507687d132936f6c154cebc8aa7f18`
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
# Sat, 26 May 2018 08:44:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 08:44:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:44:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:44:46 GMT
USER [memcache]
# Sat, 26 May 2018 08:44:47 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:44:48 GMT
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
	-	`sha256:2365160ae45c19b53565534568da4c60abdd60f700867b54fd74fdd1a7cd0b19`  
		Last Modified: Sat, 26 May 2018 08:49:41 GMT  
		Size: 949.6 KB (949584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563acf1c849e056c2cddb997fee15708bc810706bf5a882cbfe5d057c2005fc4`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0fc5785379695b743eba111d781ddde1965d05693da51ec6a7868157bb9b55`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:555f7e83354762153914abc789c34d9f5848d0ab7c57c6b247a4d7260d0b6523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24130979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed712598bce5844175cf5f00ce08e45974d33416256ee4dcdf06786f90a433`
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
# Fri, 01 Jun 2018 10:04:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 01 Jun 2018 10:04:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:04:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:05:00 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:05:00 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:05:00 GMT
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
	-	`sha256:cfdcaf01ded03b4c77997b0f023b269c57dbb7ae42894d25fcd0a76729a25ec2`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 990.3 KB (990308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7e19eaa1a52e21d13c9aa605144bae653381401228505efd49a4aecc22037`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03069ceb54973cfd12f6a8a8ea07be4eedeaba6730c1a66d39e8413f418a4207`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
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
$ docker pull memcached@sha256:5c23ca85a8f7a9de70e7fba623377d9ae486351dc01d62d61142cf8087d4f5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3d476d3811b1dd034f8e83140eee0f740a0683ff09466cbfd307eb23f965a`
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
# Sat, 26 May 2018 11:45:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 11:45:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:45:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:45:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:45:15 GMT
USER [memcache]
# Sat, 26 May 2018 11:45:16 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:45:16 GMT
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
	-	`sha256:b23a19966951b83bb936ada5ce4ccec9076b381579a387d0d92342749e359783`  
		Last Modified: Sat, 26 May 2018 11:49:44 GMT  
		Size: 997.8 KB (997752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0fce82b927ba92d19e1c39371ce9bdec9ba53626e4618e4cee5475ceb83c97`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676e2c1461bd3c0896655703f28bbae41464c07f5d193bbcd1b37ec8401e8755`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.8`

```console
$ docker pull memcached@sha256:f61791b13c30e1dfacf7dc4ba87a7872e16c55b87a9a650e497d7edaae5ff216
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
$ docker pull memcached@sha256:2fb655a042f7db09b12584ff9c08d6c8c6b1a7be442865b3cffeb55bde7f7773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22146435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62eb1b02d818514a975f29e867d6665ff94313b4f9d7d878e0cf9c9f14c72a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:21:25 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:48:21 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:48:22 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Sat, 26 May 2018 09:01:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 09:01:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 09:01:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 09:01:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 09:01:51 GMT
USER [memcache]
# Sat, 26 May 2018 09:01:52 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 09:01:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab40d1e6c0334f4bfb8accd0ab84929dde5989cac4135f4ac6c1b2771caf835`  
		Last Modified: Sat, 28 Apr 2018 09:35:59 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd2194ab768d005f64e058c476520e035d7494694870e52f8942f22892a3e67`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 968.6 KB (968610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b08530024ba7d1e90992de73d65fe7a4ae67600d8a659e03ec2155898c2ddf`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f58f99722de7dfeebfea4fb82d0787abb9a17e8c02b800bc71530942d187d0f`  
		Last Modified: Sat, 26 May 2018 09:02:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a8be14c66e0fa140c2f18fa7dfbf9b1a890144e50a323429a2c9ddd79c0d927d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20225735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e629cd8ac178d2abd7e648eece03d3225ec48f949742c4ae4be25ba52bf82ad6`
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
# Sat, 26 May 2018 12:22:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 12:22:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 12:22:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 12:22:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 12:22:38 GMT
USER [memcache]
# Sat, 26 May 2018 12:22:39 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 12:22:39 GMT
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
	-	`sha256:91f177faef345db662ddad969473b10342cd0982b677015418e436afe4af1817`  
		Last Modified: Sat, 26 May 2018 12:23:02 GMT  
		Size: 936.8 KB (936792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030115f3c31bbbfb534cf5074fce587d65d446efd38444d1d57d10cbfbb3c672`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d79ece6d6c331ab6d9c5819b2bda5a1f75026bc1f480d266fc55fa78268bf`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a991f91799f8fd54e33b9943f09b31e229019129f532330cb0b6e2311a312a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21299656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:741547e5c84ac13884d84e78603a746099507687d132936f6c154cebc8aa7f18`
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
# Sat, 26 May 2018 08:44:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 08:44:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:44:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:44:46 GMT
USER [memcache]
# Sat, 26 May 2018 08:44:47 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:44:48 GMT
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
	-	`sha256:2365160ae45c19b53565534568da4c60abdd60f700867b54fd74fdd1a7cd0b19`  
		Last Modified: Sat, 26 May 2018 08:49:41 GMT  
		Size: 949.6 KB (949584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563acf1c849e056c2cddb997fee15708bc810706bf5a882cbfe5d057c2005fc4`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0fc5785379695b743eba111d781ddde1965d05693da51ec6a7868157bb9b55`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8` - linux; 386

```console
$ docker pull memcached@sha256:555f7e83354762153914abc789c34d9f5848d0ab7c57c6b247a4d7260d0b6523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24130979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed712598bce5844175cf5f00ce08e45974d33416256ee4dcdf06786f90a433`
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
# Fri, 01 Jun 2018 10:04:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 01 Jun 2018 10:04:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:04:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:05:00 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:05:00 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:05:00 GMT
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
	-	`sha256:cfdcaf01ded03b4c77997b0f023b269c57dbb7ae42894d25fcd0a76729a25ec2`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 990.3 KB (990308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7e19eaa1a52e21d13c9aa605144bae653381401228505efd49a4aecc22037`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03069ceb54973cfd12f6a8a8ea07be4eedeaba6730c1a66d39e8413f418a4207`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
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
$ docker pull memcached@sha256:5c23ca85a8f7a9de70e7fba623377d9ae486351dc01d62d61142cf8087d4f5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3d476d3811b1dd034f8e83140eee0f740a0683ff09466cbfd307eb23f965a`
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
# Sat, 26 May 2018 11:45:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 11:45:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:45:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:45:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:45:15 GMT
USER [memcache]
# Sat, 26 May 2018 11:45:16 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:45:16 GMT
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
	-	`sha256:b23a19966951b83bb936ada5ce4ccec9076b381579a387d0d92342749e359783`  
		Last Modified: Sat, 26 May 2018 11:49:44 GMT  
		Size: 997.8 KB (997752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0fce82b927ba92d19e1c39371ce9bdec9ba53626e4618e4cee5475ceb83c97`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676e2c1461bd3c0896655703f28bbae41464c07f5d193bbcd1b37ec8401e8755`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.8-alpine`

```console
$ docker pull memcached@sha256:0f05e5e5178ae9883054d2d17c3a90c0b2681db51ac9b0d37309995aee64a619
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
$ docker pull memcached@sha256:78e1ba934d79f46c5ed076cee74ac47ef40d219aacccadc7e36742fa90f83ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9062d81159521a63ff53602883f1b85fa848c03b42e589a3387eb4d45053a6bb`
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
# Sat, 26 May 2018 08:49:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 08:49:01 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:49:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:49:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:49:04 GMT
USER [memcache]
# Sat, 26 May 2018 08:49:05 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:49:05 GMT
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
	-	`sha256:6358f8e1f196126e67911a7adb51700cc087b50e404edcf1be457076e8b0af0f`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 1.7 MB (1683829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d361dacce24f1abf12ddd8f4e90885b2dd564348ef14fcdfde18572626ccf8a9`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64082534643ebbc851a6e6ed088e7d614d60cdce6abd0503efcab4b7549e575b`  
		Last Modified: Sat, 26 May 2018 08:50:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.8-alpine` - linux; 386

```console
$ docker pull memcached@sha256:0602bb7b2a5d18c8668c886fa87a5890c215b44ba8cc99a79eb3b920377a5eae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3969578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db31dac3b1cd1229f8804f66bebaa3958d5a9b763548aac7814ba9cc34724c57`
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
# Fri, 01 Jun 2018 10:09:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Jun 2018 10:09:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:09:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:09:07 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:09:08 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:09:08 GMT
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
	-	`sha256:cf8d67b2c3078f94e1be666fff27ced726bb63eafeecc26701508c7bc9503291`  
		Last Modified: Fri, 01 Jun 2018 10:10:04 GMT  
		Size: 1.8 MB (1841531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8776222b4738cad6ad0d11401a661f24b75b3c2132e579887283bea3e271f248`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4b1155603ad2aae75c881b448fb50f816577839e21d56ddb9cdf8405762053`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
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
$ docker pull memcached@sha256:bdb6c2ac35d7a3b97cf7ac4e3aa77157a11e639e7a9104fdb08d66da8ad4d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be19eafc0de24ef90266f96f8f707cd23f8b0e888119c10d8e160fd09270e732`
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
# Sat, 26 May 2018 11:49:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 11:49:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:49:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:49:14 GMT
USER [memcache]
# Sat, 26 May 2018 11:49:14 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:49:14 GMT
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
	-	`sha256:8aa968a7278a571e113c4228e82867afcb5581180b092f5f1f250b6d7d64c3bb`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 1.8 MB (1830380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f3c706d79c495e04c03251727f4accbbad3957b2106bfdaa7734ab682e84ed`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198373a7aa73af40e631fd7a2e91eec48bcf634740eb97ba9fbaf6b4f649a0e0`  
		Last Modified: Sat, 26 May 2018 11:50:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:0f05e5e5178ae9883054d2d17c3a90c0b2681db51ac9b0d37309995aee64a619
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
$ docker pull memcached@sha256:78e1ba934d79f46c5ed076cee74ac47ef40d219aacccadc7e36742fa90f83ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9062d81159521a63ff53602883f1b85fa848c03b42e589a3387eb4d45053a6bb`
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
# Sat, 26 May 2018 08:49:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 08:49:01 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:49:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:49:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:49:04 GMT
USER [memcache]
# Sat, 26 May 2018 08:49:05 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:49:05 GMT
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
	-	`sha256:6358f8e1f196126e67911a7adb51700cc087b50e404edcf1be457076e8b0af0f`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 1.7 MB (1683829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d361dacce24f1abf12ddd8f4e90885b2dd564348ef14fcdfde18572626ccf8a9`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64082534643ebbc851a6e6ed088e7d614d60cdce6abd0503efcab4b7549e575b`  
		Last Modified: Sat, 26 May 2018 08:50:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:0602bb7b2a5d18c8668c886fa87a5890c215b44ba8cc99a79eb3b920377a5eae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3969578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db31dac3b1cd1229f8804f66bebaa3958d5a9b763548aac7814ba9cc34724c57`
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
# Fri, 01 Jun 2018 10:09:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Jun 2018 10:09:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:09:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:09:07 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:09:08 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:09:08 GMT
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
	-	`sha256:cf8d67b2c3078f94e1be666fff27ced726bb63eafeecc26701508c7bc9503291`  
		Last Modified: Fri, 01 Jun 2018 10:10:04 GMT  
		Size: 1.8 MB (1841531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8776222b4738cad6ad0d11401a661f24b75b3c2132e579887283bea3e271f248`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4b1155603ad2aae75c881b448fb50f816577839e21d56ddb9cdf8405762053`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
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
$ docker pull memcached@sha256:bdb6c2ac35d7a3b97cf7ac4e3aa77157a11e639e7a9104fdb08d66da8ad4d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be19eafc0de24ef90266f96f8f707cd23f8b0e888119c10d8e160fd09270e732`
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
# Sat, 26 May 2018 11:49:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 11:49:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:49:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:49:14 GMT
USER [memcache]
# Sat, 26 May 2018 11:49:14 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:49:14 GMT
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
	-	`sha256:8aa968a7278a571e113c4228e82867afcb5581180b092f5f1f250b6d7d64c3bb`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 1.8 MB (1830380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f3c706d79c495e04c03251727f4accbbad3957b2106bfdaa7734ab682e84ed`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198373a7aa73af40e631fd7a2e91eec48bcf634740eb97ba9fbaf6b4f649a0e0`  
		Last Modified: Sat, 26 May 2018 11:50:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:0f05e5e5178ae9883054d2d17c3a90c0b2681db51ac9b0d37309995aee64a619
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
$ docker pull memcached@sha256:78e1ba934d79f46c5ed076cee74ac47ef40d219aacccadc7e36742fa90f83ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9062d81159521a63ff53602883f1b85fa848c03b42e589a3387eb4d45053a6bb`
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
# Sat, 26 May 2018 08:49:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 08:49:01 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:49:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:49:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:49:04 GMT
USER [memcache]
# Sat, 26 May 2018 08:49:05 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:49:05 GMT
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
	-	`sha256:6358f8e1f196126e67911a7adb51700cc087b50e404edcf1be457076e8b0af0f`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 1.7 MB (1683829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d361dacce24f1abf12ddd8f4e90885b2dd564348ef14fcdfde18572626ccf8a9`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64082534643ebbc851a6e6ed088e7d614d60cdce6abd0503efcab4b7549e575b`  
		Last Modified: Sat, 26 May 2018 08:50:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:0602bb7b2a5d18c8668c886fa87a5890c215b44ba8cc99a79eb3b920377a5eae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3969578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db31dac3b1cd1229f8804f66bebaa3958d5a9b763548aac7814ba9cc34724c57`
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
# Fri, 01 Jun 2018 10:09:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Jun 2018 10:09:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:09:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:09:07 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:09:08 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:09:08 GMT
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
	-	`sha256:cf8d67b2c3078f94e1be666fff27ced726bb63eafeecc26701508c7bc9503291`  
		Last Modified: Fri, 01 Jun 2018 10:10:04 GMT  
		Size: 1.8 MB (1841531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8776222b4738cad6ad0d11401a661f24b75b3c2132e579887283bea3e271f248`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4b1155603ad2aae75c881b448fb50f816577839e21d56ddb9cdf8405762053`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
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
$ docker pull memcached@sha256:bdb6c2ac35d7a3b97cf7ac4e3aa77157a11e639e7a9104fdb08d66da8ad4d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be19eafc0de24ef90266f96f8f707cd23f8b0e888119c10d8e160fd09270e732`
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
# Sat, 26 May 2018 11:49:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 11:49:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:49:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:49:14 GMT
USER [memcache]
# Sat, 26 May 2018 11:49:14 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:49:14 GMT
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
	-	`sha256:8aa968a7278a571e113c4228e82867afcb5581180b092f5f1f250b6d7d64c3bb`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 1.8 MB (1830380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f3c706d79c495e04c03251727f4accbbad3957b2106bfdaa7734ab682e84ed`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198373a7aa73af40e631fd7a2e91eec48bcf634740eb97ba9fbaf6b4f649a0e0`  
		Last Modified: Sat, 26 May 2018 11:50:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:0f05e5e5178ae9883054d2d17c3a90c0b2681db51ac9b0d37309995aee64a619
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
$ docker pull memcached@sha256:78e1ba934d79f46c5ed076cee74ac47ef40d219aacccadc7e36742fa90f83ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9062d81159521a63ff53602883f1b85fa848c03b42e589a3387eb4d45053a6bb`
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
# Sat, 26 May 2018 08:49:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 08:49:01 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:49:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:49:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:49:04 GMT
USER [memcache]
# Sat, 26 May 2018 08:49:05 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:49:05 GMT
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
	-	`sha256:6358f8e1f196126e67911a7adb51700cc087b50e404edcf1be457076e8b0af0f`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 1.7 MB (1683829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d361dacce24f1abf12ddd8f4e90885b2dd564348ef14fcdfde18572626ccf8a9`  
		Last Modified: Sat, 26 May 2018 08:50:26 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64082534643ebbc851a6e6ed088e7d614d60cdce6abd0503efcab4b7549e575b`  
		Last Modified: Sat, 26 May 2018 08:50:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:0602bb7b2a5d18c8668c886fa87a5890c215b44ba8cc99a79eb3b920377a5eae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3969578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db31dac3b1cd1229f8804f66bebaa3958d5a9b763548aac7814ba9cc34724c57`
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
# Fri, 01 Jun 2018 10:09:06 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 01 Jun 2018 10:09:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:09:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:09:07 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:09:08 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:09:08 GMT
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
	-	`sha256:cf8d67b2c3078f94e1be666fff27ced726bb63eafeecc26701508c7bc9503291`  
		Last Modified: Fri, 01 Jun 2018 10:10:04 GMT  
		Size: 1.8 MB (1841531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8776222b4738cad6ad0d11401a661f24b75b3c2132e579887283bea3e271f248`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4b1155603ad2aae75c881b448fb50f816577839e21d56ddb9cdf8405762053`  
		Last Modified: Fri, 01 Jun 2018 10:10:02 GMT  
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
$ docker pull memcached@sha256:bdb6c2ac35d7a3b97cf7ac4e3aa77157a11e639e7a9104fdb08d66da8ad4d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be19eafc0de24ef90266f96f8f707cd23f8b0e888119c10d8e160fd09270e732`
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
# Sat, 26 May 2018 11:49:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 26 May 2018 11:49:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:49:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:49:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:49:14 GMT
USER [memcache]
# Sat, 26 May 2018 11:49:14 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:49:14 GMT
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
	-	`sha256:8aa968a7278a571e113c4228e82867afcb5581180b092f5f1f250b6d7d64c3bb`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 1.8 MB (1830380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f3c706d79c495e04c03251727f4accbbad3957b2106bfdaa7734ab682e84ed`  
		Last Modified: Sat, 26 May 2018 11:50:18 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198373a7aa73af40e631fd7a2e91eec48bcf634740eb97ba9fbaf6b4f649a0e0`  
		Last Modified: Sat, 26 May 2018 11:50:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:f61791b13c30e1dfacf7dc4ba87a7872e16c55b87a9a650e497d7edaae5ff216
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
$ docker pull memcached@sha256:2fb655a042f7db09b12584ff9c08d6c8c6b1a7be442865b3cffeb55bde7f7773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22146435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62eb1b02d818514a975f29e867d6665ff94313b4f9d7d878e0cf9c9f14c72a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:21:25 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 26 May 2018 08:48:21 GMT
ENV MEMCACHED_VERSION=1.5.8
# Sat, 26 May 2018 08:48:22 GMT
ENV MEMCACHED_SHA1=8db4363728edfce6c665c181f2237c7ea8ba3ea8
# Sat, 26 May 2018 09:01:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 09:01:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 09:01:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 09:01:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 09:01:51 GMT
USER [memcache]
# Sat, 26 May 2018 09:01:52 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 09:01:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab40d1e6c0334f4bfb8accd0ab84929dde5989cac4135f4ac6c1b2771caf835`  
		Last Modified: Sat, 28 Apr 2018 09:35:59 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd2194ab768d005f64e058c476520e035d7494694870e52f8942f22892a3e67`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 968.6 KB (968610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b08530024ba7d1e90992de73d65fe7a4ae67600d8a659e03ec2155898c2ddf`  
		Last Modified: Sat, 26 May 2018 09:02:15 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f58f99722de7dfeebfea4fb82d0787abb9a17e8c02b800bc71530942d187d0f`  
		Last Modified: Sat, 26 May 2018 09:02:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:a8be14c66e0fa140c2f18fa7dfbf9b1a890144e50a323429a2c9ddd79c0d927d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20225735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e629cd8ac178d2abd7e648eece03d3225ec48f949742c4ae4be25ba52bf82ad6`
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
# Sat, 26 May 2018 12:22:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 12:22:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 12:22:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 12:22:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 12:22:38 GMT
USER [memcache]
# Sat, 26 May 2018 12:22:39 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 12:22:39 GMT
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
	-	`sha256:91f177faef345db662ddad969473b10342cd0982b677015418e436afe4af1817`  
		Last Modified: Sat, 26 May 2018 12:23:02 GMT  
		Size: 936.8 KB (936792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030115f3c31bbbfb534cf5074fce587d65d446efd38444d1d57d10cbfbb3c672`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d79ece6d6c331ab6d9c5819b2bda5a1f75026bc1f480d266fc55fa78268bf`  
		Last Modified: Sat, 26 May 2018 12:23:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:a991f91799f8fd54e33b9943f09b31e229019129f532330cb0b6e2311a312a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21299656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:741547e5c84ac13884d84e78603a746099507687d132936f6c154cebc8aa7f18`
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
# Sat, 26 May 2018 08:44:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 08:44:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 08:44:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 08:44:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 08:44:46 GMT
USER [memcache]
# Sat, 26 May 2018 08:44:47 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 08:44:48 GMT
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
	-	`sha256:2365160ae45c19b53565534568da4c60abdd60f700867b54fd74fdd1a7cd0b19`  
		Last Modified: Sat, 26 May 2018 08:49:41 GMT  
		Size: 949.6 KB (949584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563acf1c849e056c2cddb997fee15708bc810706bf5a882cbfe5d057c2005fc4`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0fc5785379695b743eba111d781ddde1965d05693da51ec6a7868157bb9b55`  
		Last Modified: Sat, 26 May 2018 08:49:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:555f7e83354762153914abc789c34d9f5848d0ab7c57c6b247a4d7260d0b6523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24130979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed712598bce5844175cf5f00ce08e45974d33416256ee4dcdf06786f90a433`
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
# Fri, 01 Jun 2018 10:04:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 01 Jun 2018 10:04:59 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 01 Jun 2018 10:04:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 01 Jun 2018 10:05:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Jun 2018 10:05:00 GMT
USER [memcache]
# Fri, 01 Jun 2018 10:05:00 GMT
EXPOSE 11211/tcp
# Fri, 01 Jun 2018 10:05:00 GMT
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
	-	`sha256:cfdcaf01ded03b4c77997b0f023b269c57dbb7ae42894d25fcd0a76729a25ec2`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 990.3 KB (990308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7e19eaa1a52e21d13c9aa605144bae653381401228505efd49a4aecc22037`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03069ceb54973cfd12f6a8a8ea07be4eedeaba6730c1a66d39e8413f418a4207`  
		Last Modified: Fri, 01 Jun 2018 10:09:32 GMT  
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
$ docker pull memcached@sha256:5c23ca85a8f7a9de70e7fba623377d9ae486351dc01d62d61142cf8087d4f5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec3d476d3811b1dd034f8e83140eee0f740a0683ff09466cbfd307eb23f965a`
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
# Sat, 26 May 2018 11:45:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 26 May 2018 11:45:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 26 May 2018 11:45:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 26 May 2018 11:45:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 May 2018 11:45:15 GMT
USER [memcache]
# Sat, 26 May 2018 11:45:16 GMT
EXPOSE 11211/tcp
# Sat, 26 May 2018 11:45:16 GMT
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
	-	`sha256:b23a19966951b83bb936ada5ce4ccec9076b381579a387d0d92342749e359783`  
		Last Modified: Sat, 26 May 2018 11:49:44 GMT  
		Size: 997.8 KB (997752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0fce82b927ba92d19e1c39371ce9bdec9ba53626e4618e4cee5475ceb83c97`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676e2c1461bd3c0896655703f28bbae41464c07f5d193bbcd1b37ec8401e8755`  
		Last Modified: Sat, 26 May 2018 11:49:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

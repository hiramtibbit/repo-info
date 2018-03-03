<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.6`](#memcached156)
-	[`memcached:1.5.6-alpine`](#memcached156-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:e32d2fdac0b6fe33e415e7070369245c093e5a23b3b6776aed005361348e2a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:3cebe282fd6eceb5be27c13c080e961155e8343411b032379bc07e05e09ed29f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24070575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa3d5e67a3a5072cf1898150e573e03784abd405af599d531ffaee53830c41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:15:34 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:15:35 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:15:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6922c32abe96e2bca4f4bb0585ba3dc4087a6bdea736262800a2140a01b02846`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa89e7ebfe04a0967df30e3588e4cf64497ac28dd32a91fad33efd6f48ac85f`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 1.6 MB (1571650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66067bd060c45f3d65f7e7aa56066c8a397e150ee541628c5bfdb44516751f2`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81d52b50ece0a657ec7a16123205e4ddc8f0100e53460c64a31cb4b4dc72f80`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:21683ef6eda87bd0c8d7242bac9c4212ab54aef3b1ef2f4e47acfea40d6b4cfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc6e1f921bf8430844a9f8827304f3c85a4ffbd86ab9d22560d6047d1b33f82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Wed, 28 Feb 2018 05:58:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 06:11:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 06:11:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 06:11:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 06:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 06:11:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 06:11:17 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 06:11:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b026f54bea83e7a653acd9cb8c191aeff92f56d88548f67842f3f5ab6d53e5`  
		Last Modified: Wed, 28 Feb 2018 06:11:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9f7d9927970876a16dcfc1d22f8c75c3c89d6ecc2f48c9ea713c71ac071400`  
		Last Modified: Sat, 03 Mar 2018 06:11:41 GMT  
		Size: 1.4 MB (1447780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78463da076942a924daffc7758ff7d73eb2180a7048370bd442af155021e569`  
		Last Modified: Sat, 03 Mar 2018 06:11:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bd9f1bdc27c546a5325c86d41f270441f9275f7a4411c7898e0f1c620ada3`  
		Last Modified: Sat, 03 Mar 2018 06:11:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9d9923e4b10980e0efd853e5e955ea9715d90e2188686d296cb7e813fe66fc55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21868685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b2f182d4d02d4f2442aea76d2d57990f3580968fc21839f88d75367c3c4e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 03:48:02 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:48:03 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 03:53:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:53:10 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:53:11 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:53:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10328338da6616e42993f8cfeb2514e9932b2c5b53d483c0d02d519274c4a131`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf55b65fce6d304757cc2a05686b34cdd40494c9385e61ce23ce5a48bf950324`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 1.5 MB (1519096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead8a0bb3aef16773af714c5b49bd92ee42024942773877160a4902dae1cc7b7`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aa7878ab673eaf6374e457326ecd16195af09891169a76ca3c2e6e01b6f948`  
		Last Modified: Sat, 03 Mar 2018 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:47d2cdb9acf3f1ca4e5e1693a9ce2aaf141794729fe3124042d55f017fb1ae9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24377858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7a5de4a7dd6adf04e9a61a5f33e550ad96ad46bd5272d2f7e4cd3fc3d4a8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:33:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:33:22 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:39:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:39:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:39:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:39:18 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:39:19 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454922bb39ebb03099491ed2ac30de03b058b32a5f145192d68759a4d9537435`  
		Last Modified: Sat, 03 Mar 2018 01:43:50 GMT  
		Size: 1.6 MB (1622591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ac472b55f472cdac9c0ac3dc9af86d6b62f944e591f8302f3e96399d2b793d`  
		Last Modified: Sat, 03 Mar 2018 01:43:49 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d7388a372f350171bfc62cefedc2c2d218ca62ce5fd517ca0bea41d4813901`  
		Last Modified: Sat, 03 Mar 2018 01:43:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:e32d2fdac0b6fe33e415e7070369245c093e5a23b3b6776aed005361348e2a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:3cebe282fd6eceb5be27c13c080e961155e8343411b032379bc07e05e09ed29f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24070575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa3d5e67a3a5072cf1898150e573e03784abd405af599d531ffaee53830c41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:15:34 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:15:35 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:15:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6922c32abe96e2bca4f4bb0585ba3dc4087a6bdea736262800a2140a01b02846`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa89e7ebfe04a0967df30e3588e4cf64497ac28dd32a91fad33efd6f48ac85f`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 1.6 MB (1571650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66067bd060c45f3d65f7e7aa56066c8a397e150ee541628c5bfdb44516751f2`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81d52b50ece0a657ec7a16123205e4ddc8f0100e53460c64a31cb4b4dc72f80`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:21683ef6eda87bd0c8d7242bac9c4212ab54aef3b1ef2f4e47acfea40d6b4cfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc6e1f921bf8430844a9f8827304f3c85a4ffbd86ab9d22560d6047d1b33f82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Wed, 28 Feb 2018 05:58:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 06:11:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 06:11:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 06:11:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 06:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 06:11:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 06:11:17 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 06:11:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b026f54bea83e7a653acd9cb8c191aeff92f56d88548f67842f3f5ab6d53e5`  
		Last Modified: Wed, 28 Feb 2018 06:11:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9f7d9927970876a16dcfc1d22f8c75c3c89d6ecc2f48c9ea713c71ac071400`  
		Last Modified: Sat, 03 Mar 2018 06:11:41 GMT  
		Size: 1.4 MB (1447780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78463da076942a924daffc7758ff7d73eb2180a7048370bd442af155021e569`  
		Last Modified: Sat, 03 Mar 2018 06:11:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bd9f1bdc27c546a5325c86d41f270441f9275f7a4411c7898e0f1c620ada3`  
		Last Modified: Sat, 03 Mar 2018 06:11:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9d9923e4b10980e0efd853e5e955ea9715d90e2188686d296cb7e813fe66fc55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21868685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b2f182d4d02d4f2442aea76d2d57990f3580968fc21839f88d75367c3c4e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 03:48:02 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:48:03 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 03:53:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:53:10 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:53:11 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:53:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10328338da6616e42993f8cfeb2514e9932b2c5b53d483c0d02d519274c4a131`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf55b65fce6d304757cc2a05686b34cdd40494c9385e61ce23ce5a48bf950324`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 1.5 MB (1519096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead8a0bb3aef16773af714c5b49bd92ee42024942773877160a4902dae1cc7b7`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aa7878ab673eaf6374e457326ecd16195af09891169a76ca3c2e6e01b6f948`  
		Last Modified: Sat, 03 Mar 2018 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:47d2cdb9acf3f1ca4e5e1693a9ce2aaf141794729fe3124042d55f017fb1ae9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24377858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7a5de4a7dd6adf04e9a61a5f33e550ad96ad46bd5272d2f7e4cd3fc3d4a8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:33:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:33:22 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:39:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:39:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:39:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:39:18 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:39:19 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454922bb39ebb03099491ed2ac30de03b058b32a5f145192d68759a4d9537435`  
		Last Modified: Sat, 03 Mar 2018 01:43:50 GMT  
		Size: 1.6 MB (1622591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ac472b55f472cdac9c0ac3dc9af86d6b62f944e591f8302f3e96399d2b793d`  
		Last Modified: Sat, 03 Mar 2018 01:43:49 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d7388a372f350171bfc62cefedc2c2d218ca62ce5fd517ca0bea41d4813901`  
		Last Modified: Sat, 03 Mar 2018 01:43:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.6`

```console
$ docker pull memcached@sha256:e32d2fdac0b6fe33e415e7070369245c093e5a23b3b6776aed005361348e2a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5.6` - linux; amd64

```console
$ docker pull memcached@sha256:3cebe282fd6eceb5be27c13c080e961155e8343411b032379bc07e05e09ed29f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24070575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa3d5e67a3a5072cf1898150e573e03784abd405af599d531ffaee53830c41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:15:34 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:15:35 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:15:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6922c32abe96e2bca4f4bb0585ba3dc4087a6bdea736262800a2140a01b02846`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa89e7ebfe04a0967df30e3588e4cf64497ac28dd32a91fad33efd6f48ac85f`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 1.6 MB (1571650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66067bd060c45f3d65f7e7aa56066c8a397e150ee541628c5bfdb44516751f2`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81d52b50ece0a657ec7a16123205e4ddc8f0100e53460c64a31cb4b4dc72f80`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.6` - linux; arm variant v7

```console
$ docker pull memcached@sha256:21683ef6eda87bd0c8d7242bac9c4212ab54aef3b1ef2f4e47acfea40d6b4cfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc6e1f921bf8430844a9f8827304f3c85a4ffbd86ab9d22560d6047d1b33f82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Wed, 28 Feb 2018 05:58:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 06:11:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 06:11:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 06:11:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 06:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 06:11:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 06:11:17 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 06:11:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b026f54bea83e7a653acd9cb8c191aeff92f56d88548f67842f3f5ab6d53e5`  
		Last Modified: Wed, 28 Feb 2018 06:11:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9f7d9927970876a16dcfc1d22f8c75c3c89d6ecc2f48c9ea713c71ac071400`  
		Last Modified: Sat, 03 Mar 2018 06:11:41 GMT  
		Size: 1.4 MB (1447780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78463da076942a924daffc7758ff7d73eb2180a7048370bd442af155021e569`  
		Last Modified: Sat, 03 Mar 2018 06:11:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bd9f1bdc27c546a5325c86d41f270441f9275f7a4411c7898e0f1c620ada3`  
		Last Modified: Sat, 03 Mar 2018 06:11:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.6` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9d9923e4b10980e0efd853e5e955ea9715d90e2188686d296cb7e813fe66fc55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21868685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b2f182d4d02d4f2442aea76d2d57990f3580968fc21839f88d75367c3c4e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 03:48:02 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:48:03 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 03:53:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:53:10 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:53:11 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:53:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10328338da6616e42993f8cfeb2514e9932b2c5b53d483c0d02d519274c4a131`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf55b65fce6d304757cc2a05686b34cdd40494c9385e61ce23ce5a48bf950324`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 1.5 MB (1519096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead8a0bb3aef16773af714c5b49bd92ee42024942773877160a4902dae1cc7b7`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aa7878ab673eaf6374e457326ecd16195af09891169a76ca3c2e6e01b6f948`  
		Last Modified: Sat, 03 Mar 2018 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.6` - linux; ppc64le

```console
$ docker pull memcached@sha256:47d2cdb9acf3f1ca4e5e1693a9ce2aaf141794729fe3124042d55f017fb1ae9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24377858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7a5de4a7dd6adf04e9a61a5f33e550ad96ad46bd5272d2f7e4cd3fc3d4a8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:33:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:33:22 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:39:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:39:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:39:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:39:18 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:39:19 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454922bb39ebb03099491ed2ac30de03b058b32a5f145192d68759a4d9537435`  
		Last Modified: Sat, 03 Mar 2018 01:43:50 GMT  
		Size: 1.6 MB (1622591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ac472b55f472cdac9c0ac3dc9af86d6b62f944e591f8302f3e96399d2b793d`  
		Last Modified: Sat, 03 Mar 2018 01:43:49 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d7388a372f350171bfc62cefedc2c2d218ca62ce5fd517ca0bea41d4813901`  
		Last Modified: Sat, 03 Mar 2018 01:43:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.6-alpine`

```console
$ docker pull memcached@sha256:331502891a1aa36d68e449ece49bf0d4e12fa4bbb62b49e6e1da0bd624270cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5.6-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:d2ff27dc74aa1458beec9009658c01fc64d05afcb1cd73ff931d1fa74cefac94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c28baaba1e0a517ce3a8576d0755f651b77764142d19eac55500eddeadefda9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:19:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:19:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:19:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:19:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:19:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:19:18 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:19:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abf9f6aeed3d9122eb2ffffd18aa0a310faa85307a0f3bb5c3eaeec900d6e6d`  
		Last Modified: Sat, 03 Mar 2018 01:20:42 GMT  
		Size: 1.7 MB (1737592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762ceae99e707e86ae027c21bdb49885a1b2f34b53bc07be7f7837788d609df6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fd19b03430b6f63d13224c58e658028f25dac7f8090b1a30e499e0def6ddb6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.6-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:75b50344b2414146c15c760b42785c6c481801150788c17f59de506b944cf02e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276d0c2c4ba1586c2c76f0c813e6227a6ef60924f132799b64aacd4113495423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Mar 2018 22:28:21 GMT
RUN adduser -D memcache
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Fri, 02 Mar 2018 22:48:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 02 Mar 2018 22:48:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:48:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 02 Mar 2018 22:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:48:26 GMT
USER [memcache]
# Fri, 02 Mar 2018 22:48:27 GMT
EXPOSE 11211/tcp
# Fri, 02 Mar 2018 22:48:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c991fcbb1642e4c203f3ec02fe1bd716035895d814f5639c7286cb13f84009`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182283613398bb7b44902147ab19fdd23300ff6c9fb843dbf0815ab4bc4aa338`  
		Last Modified: Fri, 02 Mar 2018 22:48:38 GMT  
		Size: 1.7 MB (1699270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb2817051c02569e759029f302f3309eb8fce988d9b51fd49e04607a6e3e833`  
		Last Modified: Fri, 02 Mar 2018 22:48:36 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f038c1080437c8d4b4b712847febf237666834ed73208291ba94a2b666fdf`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.6-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:583f5d718a575221d4f349bcfb8955fece51d6e7d04ebb6c27c9f61b2e0c1811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc51673cdd7b11af568e7d7e21d8e72f5945c223bfc625a7122cd0ae58e04ea6`
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
# Sat, 03 Mar 2018 03:53:36 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:53:37 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:57:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 03:57:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:57:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:57:55 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:57:56 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:57:57 GMT
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
	-	`sha256:f575f998de0f2683e907d564faac071edadb5beef942846d7765e226e14d277f`  
		Last Modified: Sat, 03 Mar 2018 03:59:35 GMT  
		Size: 1.7 MB (1682895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd30d7b6df753ee65c8a282ef95d3957e845dbac820c3fdeed8bfd4a05fe39`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe94f88cdeb7c594d4ccfcf18d35938a8fbaa2709aa263a065039b784b70039`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.6-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:0f9b95ac87f74594d15da00ffc12cbf3b73fc2afe1162288384f439a8a2de586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3826884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77853c0930653ca46e8141b9890232a85e28f70062a10aa435c00b3d7ede760`
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
# Sat, 03 Mar 2018 01:39:33 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:39:34 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:43:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:43:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:43:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:43:31 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:43:32 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:43:33 GMT
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
	-	`sha256:59fe5c1b56de66db6542f5b873a01e187871e21d16dcb27429327553ef08ba93`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 1.7 MB (1743562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c3c452eeb64a8c180ea1d1eb08fcb5b419a9c21d6b8977bb9be99a505bb404`  
		Last Modified: Sat, 03 Mar 2018 01:44:09 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0702d18ace1878277000ed1d9eb374417de037403fd7625c0eeccfbeeea65300`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:331502891a1aa36d68e449ece49bf0d4e12fa4bbb62b49e6e1da0bd624270cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:d2ff27dc74aa1458beec9009658c01fc64d05afcb1cd73ff931d1fa74cefac94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c28baaba1e0a517ce3a8576d0755f651b77764142d19eac55500eddeadefda9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:19:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:19:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:19:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:19:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:19:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:19:18 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:19:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abf9f6aeed3d9122eb2ffffd18aa0a310faa85307a0f3bb5c3eaeec900d6e6d`  
		Last Modified: Sat, 03 Mar 2018 01:20:42 GMT  
		Size: 1.7 MB (1737592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762ceae99e707e86ae027c21bdb49885a1b2f34b53bc07be7f7837788d609df6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fd19b03430b6f63d13224c58e658028f25dac7f8090b1a30e499e0def6ddb6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:75b50344b2414146c15c760b42785c6c481801150788c17f59de506b944cf02e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276d0c2c4ba1586c2c76f0c813e6227a6ef60924f132799b64aacd4113495423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Mar 2018 22:28:21 GMT
RUN adduser -D memcache
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Fri, 02 Mar 2018 22:48:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 02 Mar 2018 22:48:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:48:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 02 Mar 2018 22:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:48:26 GMT
USER [memcache]
# Fri, 02 Mar 2018 22:48:27 GMT
EXPOSE 11211/tcp
# Fri, 02 Mar 2018 22:48:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c991fcbb1642e4c203f3ec02fe1bd716035895d814f5639c7286cb13f84009`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182283613398bb7b44902147ab19fdd23300ff6c9fb843dbf0815ab4bc4aa338`  
		Last Modified: Fri, 02 Mar 2018 22:48:38 GMT  
		Size: 1.7 MB (1699270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb2817051c02569e759029f302f3309eb8fce988d9b51fd49e04607a6e3e833`  
		Last Modified: Fri, 02 Mar 2018 22:48:36 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f038c1080437c8d4b4b712847febf237666834ed73208291ba94a2b666fdf`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:583f5d718a575221d4f349bcfb8955fece51d6e7d04ebb6c27c9f61b2e0c1811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc51673cdd7b11af568e7d7e21d8e72f5945c223bfc625a7122cd0ae58e04ea6`
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
# Sat, 03 Mar 2018 03:53:36 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:53:37 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:57:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 03:57:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:57:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:57:55 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:57:56 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:57:57 GMT
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
	-	`sha256:f575f998de0f2683e907d564faac071edadb5beef942846d7765e226e14d277f`  
		Last Modified: Sat, 03 Mar 2018 03:59:35 GMT  
		Size: 1.7 MB (1682895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd30d7b6df753ee65c8a282ef95d3957e845dbac820c3fdeed8bfd4a05fe39`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe94f88cdeb7c594d4ccfcf18d35938a8fbaa2709aa263a065039b784b70039`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:0f9b95ac87f74594d15da00ffc12cbf3b73fc2afe1162288384f439a8a2de586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3826884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77853c0930653ca46e8141b9890232a85e28f70062a10aa435c00b3d7ede760`
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
# Sat, 03 Mar 2018 01:39:33 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:39:34 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:43:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:43:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:43:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:43:31 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:43:32 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:43:33 GMT
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
	-	`sha256:59fe5c1b56de66db6542f5b873a01e187871e21d16dcb27429327553ef08ba93`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 1.7 MB (1743562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c3c452eeb64a8c180ea1d1eb08fcb5b419a9c21d6b8977bb9be99a505bb404`  
		Last Modified: Sat, 03 Mar 2018 01:44:09 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0702d18ace1878277000ed1d9eb374417de037403fd7625c0eeccfbeeea65300`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:331502891a1aa36d68e449ece49bf0d4e12fa4bbb62b49e6e1da0bd624270cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:d2ff27dc74aa1458beec9009658c01fc64d05afcb1cd73ff931d1fa74cefac94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c28baaba1e0a517ce3a8576d0755f651b77764142d19eac55500eddeadefda9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:19:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:19:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:19:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:19:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:19:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:19:18 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:19:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abf9f6aeed3d9122eb2ffffd18aa0a310faa85307a0f3bb5c3eaeec900d6e6d`  
		Last Modified: Sat, 03 Mar 2018 01:20:42 GMT  
		Size: 1.7 MB (1737592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762ceae99e707e86ae027c21bdb49885a1b2f34b53bc07be7f7837788d609df6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fd19b03430b6f63d13224c58e658028f25dac7f8090b1a30e499e0def6ddb6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:75b50344b2414146c15c760b42785c6c481801150788c17f59de506b944cf02e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276d0c2c4ba1586c2c76f0c813e6227a6ef60924f132799b64aacd4113495423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Mar 2018 22:28:21 GMT
RUN adduser -D memcache
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Fri, 02 Mar 2018 22:48:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 02 Mar 2018 22:48:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:48:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 02 Mar 2018 22:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:48:26 GMT
USER [memcache]
# Fri, 02 Mar 2018 22:48:27 GMT
EXPOSE 11211/tcp
# Fri, 02 Mar 2018 22:48:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c991fcbb1642e4c203f3ec02fe1bd716035895d814f5639c7286cb13f84009`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182283613398bb7b44902147ab19fdd23300ff6c9fb843dbf0815ab4bc4aa338`  
		Last Modified: Fri, 02 Mar 2018 22:48:38 GMT  
		Size: 1.7 MB (1699270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb2817051c02569e759029f302f3309eb8fce988d9b51fd49e04607a6e3e833`  
		Last Modified: Fri, 02 Mar 2018 22:48:36 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f038c1080437c8d4b4b712847febf237666834ed73208291ba94a2b666fdf`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:583f5d718a575221d4f349bcfb8955fece51d6e7d04ebb6c27c9f61b2e0c1811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc51673cdd7b11af568e7d7e21d8e72f5945c223bfc625a7122cd0ae58e04ea6`
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
# Sat, 03 Mar 2018 03:53:36 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:53:37 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:57:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 03:57:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:57:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:57:55 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:57:56 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:57:57 GMT
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
	-	`sha256:f575f998de0f2683e907d564faac071edadb5beef942846d7765e226e14d277f`  
		Last Modified: Sat, 03 Mar 2018 03:59:35 GMT  
		Size: 1.7 MB (1682895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd30d7b6df753ee65c8a282ef95d3957e845dbac820c3fdeed8bfd4a05fe39`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe94f88cdeb7c594d4ccfcf18d35938a8fbaa2709aa263a065039b784b70039`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:0f9b95ac87f74594d15da00ffc12cbf3b73fc2afe1162288384f439a8a2de586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3826884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77853c0930653ca46e8141b9890232a85e28f70062a10aa435c00b3d7ede760`
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
# Sat, 03 Mar 2018 01:39:33 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:39:34 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:43:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:43:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:43:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:43:31 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:43:32 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:43:33 GMT
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
	-	`sha256:59fe5c1b56de66db6542f5b873a01e187871e21d16dcb27429327553ef08ba93`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 1.7 MB (1743562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c3c452eeb64a8c180ea1d1eb08fcb5b419a9c21d6b8977bb9be99a505bb404`  
		Last Modified: Sat, 03 Mar 2018 01:44:09 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0702d18ace1878277000ed1d9eb374417de037403fd7625c0eeccfbeeea65300`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:331502891a1aa36d68e449ece49bf0d4e12fa4bbb62b49e6e1da0bd624270cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:d2ff27dc74aa1458beec9009658c01fc64d05afcb1cd73ff931d1fa74cefac94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c28baaba1e0a517ce3a8576d0755f651b77764142d19eac55500eddeadefda9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:15:56 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:19:16 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:19:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:19:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:19:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:19:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:19:18 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:19:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abf9f6aeed3d9122eb2ffffd18aa0a310faa85307a0f3bb5c3eaeec900d6e6d`  
		Last Modified: Sat, 03 Mar 2018 01:20:42 GMT  
		Size: 1.7 MB (1737592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762ceae99e707e86ae027c21bdb49885a1b2f34b53bc07be7f7837788d609df6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fd19b03430b6f63d13224c58e658028f25dac7f8090b1a30e499e0def6ddb6`  
		Last Modified: Sat, 03 Mar 2018 01:20:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:75b50344b2414146c15c760b42785c6c481801150788c17f59de506b944cf02e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276d0c2c4ba1586c2c76f0c813e6227a6ef60924f132799b64aacd4113495423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Mar 2018 22:28:21 GMT
RUN adduser -D memcache
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Fri, 02 Mar 2018 22:28:21 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Fri, 02 Mar 2018 22:48:18 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 02 Mar 2018 22:48:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:48:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 02 Mar 2018 22:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:48:26 GMT
USER [memcache]
# Fri, 02 Mar 2018 22:48:27 GMT
EXPOSE 11211/tcp
# Fri, 02 Mar 2018 22:48:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c991fcbb1642e4c203f3ec02fe1bd716035895d814f5639c7286cb13f84009`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182283613398bb7b44902147ab19fdd23300ff6c9fb843dbf0815ab4bc4aa338`  
		Last Modified: Fri, 02 Mar 2018 22:48:38 GMT  
		Size: 1.7 MB (1699270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb2817051c02569e759029f302f3309eb8fce988d9b51fd49e04607a6e3e833`  
		Last Modified: Fri, 02 Mar 2018 22:48:36 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992f038c1080437c8d4b4b712847febf237666834ed73208291ba94a2b666fdf`  
		Last Modified: Fri, 02 Mar 2018 22:48:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:583f5d718a575221d4f349bcfb8955fece51d6e7d04ebb6c27c9f61b2e0c1811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3673574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc51673cdd7b11af568e7d7e21d8e72f5945c223bfc625a7122cd0ae58e04ea6`
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
# Sat, 03 Mar 2018 03:53:36 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:53:37 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:57:51 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 03:57:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:57:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:57:55 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:57:56 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:57:57 GMT
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
	-	`sha256:f575f998de0f2683e907d564faac071edadb5beef942846d7765e226e14d277f`  
		Last Modified: Sat, 03 Mar 2018 03:59:35 GMT  
		Size: 1.7 MB (1682895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cd30d7b6df753ee65c8a282ef95d3957e845dbac820c3fdeed8bfd4a05fe39`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe94f88cdeb7c594d4ccfcf18d35938a8fbaa2709aa263a065039b784b70039`  
		Last Modified: Sat, 03 Mar 2018 03:59:34 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:0f9b95ac87f74594d15da00ffc12cbf3b73fc2afe1162288384f439a8a2de586
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3826884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77853c0930653ca46e8141b9890232a85e28f70062a10aa435c00b3d7ede760`
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
# Sat, 03 Mar 2018 01:39:33 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:39:34 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:43:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 03 Mar 2018 01:43:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:43:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:43:31 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:43:32 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:43:33 GMT
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
	-	`sha256:59fe5c1b56de66db6542f5b873a01e187871e21d16dcb27429327553ef08ba93`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 1.7 MB (1743562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c3c452eeb64a8c180ea1d1eb08fcb5b419a9c21d6b8977bb9be99a505bb404`  
		Last Modified: Sat, 03 Mar 2018 01:44:09 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0702d18ace1878277000ed1d9eb374417de037403fd7625c0eeccfbeeea65300`  
		Last Modified: Sat, 03 Mar 2018 01:44:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:e32d2fdac0b6fe33e415e7070369245c093e5a23b3b6776aed005361348e2a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:3cebe282fd6eceb5be27c13c080e961155e8343411b032379bc07e05e09ed29f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24070575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa3d5e67a3a5072cf1898150e573e03784abd405af599d531ffaee53830c41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:15:34 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:15:35 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:15:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6922c32abe96e2bca4f4bb0585ba3dc4087a6bdea736262800a2140a01b02846`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa89e7ebfe04a0967df30e3588e4cf64497ac28dd32a91fad33efd6f48ac85f`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 1.6 MB (1571650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66067bd060c45f3d65f7e7aa56066c8a397e150ee541628c5bfdb44516751f2`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81d52b50ece0a657ec7a16123205e4ddc8f0100e53460c64a31cb4b4dc72f80`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:21683ef6eda87bd0c8d7242bac9c4212ab54aef3b1ef2f4e47acfea40d6b4cfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20736018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc6e1f921bf8430844a9f8827304f3c85a4ffbd86ab9d22560d6047d1b33f82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Wed, 28 Feb 2018 05:58:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 05:58:20 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 06:11:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 06:11:12 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 06:11:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 06:11:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 06:11:17 GMT
USER [memcache]
# Sat, 03 Mar 2018 06:11:17 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 06:11:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b026f54bea83e7a653acd9cb8c191aeff92f56d88548f67842f3f5ab6d53e5`  
		Last Modified: Wed, 28 Feb 2018 06:11:57 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9f7d9927970876a16dcfc1d22f8c75c3c89d6ecc2f48c9ea713c71ac071400`  
		Last Modified: Sat, 03 Mar 2018 06:11:41 GMT  
		Size: 1.4 MB (1447780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78463da076942a924daffc7758ff7d73eb2180a7048370bd442af155021e569`  
		Last Modified: Sat, 03 Mar 2018 06:11:39 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bd9f1bdc27c546a5325c86d41f270441f9275f7a4411c7898e0f1c620ada3`  
		Last Modified: Sat, 03 Mar 2018 06:11:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:9d9923e4b10980e0efd853e5e955ea9715d90e2188686d296cb7e813fe66fc55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21868685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b2f182d4d02d4f2442aea76d2d57990f3580968fc21839f88d75367c3c4e31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 03:48:02 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 03:48:03 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 03:53:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 03:53:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 03:53:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 03:53:10 GMT
USER [memcache]
# Sat, 03 Mar 2018 03:53:11 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 03:53:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10328338da6616e42993f8cfeb2514e9932b2c5b53d483c0d02d519274c4a131`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf55b65fce6d304757cc2a05686b34cdd40494c9385e61ce23ce5a48bf950324`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 1.5 MB (1519096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead8a0bb3aef16773af714c5b49bd92ee42024942773877160a4902dae1cc7b7`  
		Last Modified: Sat, 03 Mar 2018 03:58:31 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aa7878ab673eaf6374e457326ecd16195af09891169a76ca3c2e6e01b6f948`  
		Last Modified: Sat, 03 Mar 2018 03:58:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:47d2cdb9acf3f1ca4e5e1693a9ce2aaf141794729fe3124042d55f017fb1ae9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24377858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7a5de4a7dd6adf04e9a61a5f33e550ad96ad46bd5272d2f7e4cd3fc3d4a8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:33:21 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:33:22 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:39:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:39:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:39:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:39:18 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:39:19 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:39:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feefc8c0ce8e8b2576e58690248056fad0c5fe91ab39d661ea10c365222530b`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454922bb39ebb03099491ed2ac30de03b058b32a5f145192d68759a4d9537435`  
		Last Modified: Sat, 03 Mar 2018 01:43:50 GMT  
		Size: 1.6 MB (1622591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ac472b55f472cdac9c0ac3dc9af86d6b62f944e591f8302f3e96399d2b793d`  
		Last Modified: Sat, 03 Mar 2018 01:43:49 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d7388a372f350171bfc62cefedc2c2d218ca62ce5fd517ca0bea41d4813901`  
		Last Modified: Sat, 03 Mar 2018 01:43:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

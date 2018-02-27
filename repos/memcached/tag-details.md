<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.5`](#memcached155)
-	[`memcached:1.5.5-alpine`](#memcached155-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:3e5312059da6a17f7f2cfeebe5383026b17889d58284a58b1578a48141a63180
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
$ docker pull memcached@sha256:0b8e866753119c1fce440f34796232b3fff25d027bd7448bcdc7d016d99620bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23475111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7e8440a999a786c6b7c5f3ef8fb5bc621cbcca373c1fa137bf81bf8eecaaa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_VERSION=1.5.5
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Sat, 17 Feb 2018 08:25:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 17 Feb 2018 08:37:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:37:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:37:42 GMT
USER [memcache]
# Sat, 17 Feb 2018 08:37:42 GMT
EXPOSE 11211/tcp
# Sat, 17 Feb 2018 08:37:43 GMT
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
	-	`sha256:a45614c5748c62430e03b78ba420e0c3ee674440c1c2426fcd7b7740dc820e82`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 976.2 KB (976186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c79b733cbb3043a284ed260b08067f073649e3bacae6e85a779b63a3231841a`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48067542456facc43b2d440961ab9b08bcc07e7e61ea56e2ca417e6a714cee67`  
		Last Modified: Sat, 17 Feb 2018 08:38:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:53644dbfb83fe302c19f3bdb38129089ef791273b9657d55548055832b4ebb70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22143750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55019be04c15d374c70730a045a9cd77d80a81d6a21c6c3accd957f9c0e5a6d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:31:02 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 21:44:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 21:44:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:44:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 21:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:44:13 GMT
USER [memcache]
# Thu, 15 Feb 2018 21:44:14 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 21:44:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd036a58bfea51c12c7a6d4eef97048d80f022e0f6c212ab97ad298760b9a64`  
		Last Modified: Thu, 15 Feb 2018 21:44:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2f4b2fd2064de2d3957adb1789a01a7f1e0e88ad08566fa1b6c2895d5bda98`  
		Last Modified: Thu, 15 Feb 2018 21:44:37 GMT  
		Size: 966.6 KB (966562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee0f5d2eef5d098aeb0a94e886097e9e8b75075587e640f86b80d114207fb5`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81bbe4790fc06158f69d6d4a992215a105331499c46e2554bdd70274a88f907`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:dc4c1fff9affcf33f122399b2de2267786160652a71f8bb8f7c24fb40d39c1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20223507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7187dbaa64a52b25f6522fd611b6e9a3e6166bc8a24e360765ee3b6b05c0f243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 17:54:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 17:54:48 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 17:54:49 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 18:07:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 18:07:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 18:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 18:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:07:51 GMT
USER [memcache]
# Thu, 15 Feb 2018 18:07:51 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 18:07:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d218fbde6dd7025a6e2f2cf479675ef59c66b487da92d764cc27b421953607ae`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7c8218541f588f63270bd0e954d5871b80060b7a6f909e62f9832ee059ed11`  
		Last Modified: Thu, 15 Feb 2018 18:08:06 GMT  
		Size: 935.3 KB (935266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c648abab270ff728e638e7a6f9dfdc5b327bee3071e01709a5f4c74b49caa7e`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d17d5b9a5d993b9ff85386204ba11ef2eea0a72fd03fe6724d60eac2f76e32b`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bc66ec456db20a911e247e0fe12a835016bf5c4b62bd11e56634171e1ef16e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21297752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7203bcf67178095ecbb3cbce03f556e0c66dcf2cd1999ca798c6c9223564c32e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 23:44:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 23:44:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 23:50:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 23:50:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:50:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:50:20 GMT
USER [memcache]
# Thu, 15 Feb 2018 23:50:21 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 23:50:22 GMT
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
	-	`sha256:b79ee46ccff65574e75e53b883df04e4d7e6cbe2f0a8094335605762f9d0e53f`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 948.2 KB (948163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084d11be4aa8b40f2cb1a8284b01243f883df503d9874803f795ac72ac7f291a`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae4cb77a4d355b3ffc2ca2d7628bdee027ce82b58ebecc181ab9d1a6f2afe8`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:0e2f30ecd42ab24b1dd1d048f3b898971b99caa1ed14f7f4f4d5740686f813f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24126289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda3c8d97881f57b755c92e3d22fc90f46f7e28de8e6869f51b0ae39e01d0ae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 05:43:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 21 Feb 2018 05:47:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 21 Feb 2018 05:47:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 21 Feb 2018 05:47:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 05:47:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 05:47:23 GMT
USER [memcache]
# Wed, 21 Feb 2018 05:47:23 GMT
EXPOSE 11211/tcp
# Wed, 21 Feb 2018 05:47:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0d66c53e29bef92d06881ebb223676b202b01f3c3fe9e08c3de3b446a41576`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3483dde0dbdba70623fedb0ddfc1f690a598d814a021603dd03eaa5070ce76e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 989.1 KB (989104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bc0d9eabe8b14acf400e128b6290f869a51ec7cecd18c4536670e281de3e9f`  
		Last Modified: Wed, 21 Feb 2018 05:59:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cd0a3cbbbd952b48ca67743a75f8c4f825dc63df151b8f6dec11778854cb5e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
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
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:3cc1410e48122f7d4e1f731c39db8e54b4551e9ad969bfd80b04dd7468a5f42d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23347628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42af0a6a4faaaca19d2cb50f43d6c50a83ff864f47f19f298b8c64e3515896`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:11:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 07:11:27 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 07:11:28 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 07:14:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 07:14:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 07:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:14:57 GMT
USER [memcache]
# Thu, 15 Feb 2018 07:14:57 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 07:14:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87749c41912f5da8b9fb0094107ba5cad2778ce18b6aeb914a22557bf53134f`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c22ded831a2d6d954c17cbea831d92b9c8d536d64f08bab3803a77017ceee28`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 996.6 KB (996644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd4bcba0b872aa86d7495c695b918240649ab6a2be4050abb04dc3a7406328c`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c040a879b94600e375c1e66e4cb4a0fdc30910fbf082e69b8fd64c5b78fea8`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:3e5312059da6a17f7f2cfeebe5383026b17889d58284a58b1578a48141a63180
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
$ docker pull memcached@sha256:0b8e866753119c1fce440f34796232b3fff25d027bd7448bcdc7d016d99620bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23475111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7e8440a999a786c6b7c5f3ef8fb5bc621cbcca373c1fa137bf81bf8eecaaa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_VERSION=1.5.5
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Sat, 17 Feb 2018 08:25:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 17 Feb 2018 08:37:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:37:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:37:42 GMT
USER [memcache]
# Sat, 17 Feb 2018 08:37:42 GMT
EXPOSE 11211/tcp
# Sat, 17 Feb 2018 08:37:43 GMT
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
	-	`sha256:a45614c5748c62430e03b78ba420e0c3ee674440c1c2426fcd7b7740dc820e82`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 976.2 KB (976186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c79b733cbb3043a284ed260b08067f073649e3bacae6e85a779b63a3231841a`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48067542456facc43b2d440961ab9b08bcc07e7e61ea56e2ca417e6a714cee67`  
		Last Modified: Sat, 17 Feb 2018 08:38:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:53644dbfb83fe302c19f3bdb38129089ef791273b9657d55548055832b4ebb70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22143750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55019be04c15d374c70730a045a9cd77d80a81d6a21c6c3accd957f9c0e5a6d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:31:02 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 21:44:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 21:44:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:44:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 21:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:44:13 GMT
USER [memcache]
# Thu, 15 Feb 2018 21:44:14 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 21:44:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd036a58bfea51c12c7a6d4eef97048d80f022e0f6c212ab97ad298760b9a64`  
		Last Modified: Thu, 15 Feb 2018 21:44:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2f4b2fd2064de2d3957adb1789a01a7f1e0e88ad08566fa1b6c2895d5bda98`  
		Last Modified: Thu, 15 Feb 2018 21:44:37 GMT  
		Size: 966.6 KB (966562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee0f5d2eef5d098aeb0a94e886097e9e8b75075587e640f86b80d114207fb5`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81bbe4790fc06158f69d6d4a992215a105331499c46e2554bdd70274a88f907`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:dc4c1fff9affcf33f122399b2de2267786160652a71f8bb8f7c24fb40d39c1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20223507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7187dbaa64a52b25f6522fd611b6e9a3e6166bc8a24e360765ee3b6b05c0f243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 17:54:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 17:54:48 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 17:54:49 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 18:07:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 18:07:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 18:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 18:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:07:51 GMT
USER [memcache]
# Thu, 15 Feb 2018 18:07:51 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 18:07:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d218fbde6dd7025a6e2f2cf479675ef59c66b487da92d764cc27b421953607ae`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7c8218541f588f63270bd0e954d5871b80060b7a6f909e62f9832ee059ed11`  
		Last Modified: Thu, 15 Feb 2018 18:08:06 GMT  
		Size: 935.3 KB (935266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c648abab270ff728e638e7a6f9dfdc5b327bee3071e01709a5f4c74b49caa7e`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d17d5b9a5d993b9ff85386204ba11ef2eea0a72fd03fe6724d60eac2f76e32b`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bc66ec456db20a911e247e0fe12a835016bf5c4b62bd11e56634171e1ef16e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21297752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7203bcf67178095ecbb3cbce03f556e0c66dcf2cd1999ca798c6c9223564c32e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 23:44:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 23:44:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 23:50:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 23:50:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:50:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:50:20 GMT
USER [memcache]
# Thu, 15 Feb 2018 23:50:21 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 23:50:22 GMT
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
	-	`sha256:b79ee46ccff65574e75e53b883df04e4d7e6cbe2f0a8094335605762f9d0e53f`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 948.2 KB (948163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084d11be4aa8b40f2cb1a8284b01243f883df503d9874803f795ac72ac7f291a`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae4cb77a4d355b3ffc2ca2d7628bdee027ce82b58ebecc181ab9d1a6f2afe8`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:0e2f30ecd42ab24b1dd1d048f3b898971b99caa1ed14f7f4f4d5740686f813f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24126289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda3c8d97881f57b755c92e3d22fc90f46f7e28de8e6869f51b0ae39e01d0ae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 05:43:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 21 Feb 2018 05:47:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 21 Feb 2018 05:47:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 21 Feb 2018 05:47:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 05:47:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 05:47:23 GMT
USER [memcache]
# Wed, 21 Feb 2018 05:47:23 GMT
EXPOSE 11211/tcp
# Wed, 21 Feb 2018 05:47:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0d66c53e29bef92d06881ebb223676b202b01f3c3fe9e08c3de3b446a41576`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3483dde0dbdba70623fedb0ddfc1f690a598d814a021603dd03eaa5070ce76e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 989.1 KB (989104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bc0d9eabe8b14acf400e128b6290f869a51ec7cecd18c4536670e281de3e9f`  
		Last Modified: Wed, 21 Feb 2018 05:59:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cd0a3cbbbd952b48ca67743a75f8c4f825dc63df151b8f6dec11778854cb5e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
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
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:3cc1410e48122f7d4e1f731c39db8e54b4551e9ad969bfd80b04dd7468a5f42d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23347628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42af0a6a4faaaca19d2cb50f43d6c50a83ff864f47f19f298b8c64e3515896`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:11:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 07:11:27 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 07:11:28 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 07:14:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 07:14:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 07:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:14:57 GMT
USER [memcache]
# Thu, 15 Feb 2018 07:14:57 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 07:14:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87749c41912f5da8b9fb0094107ba5cad2778ce18b6aeb914a22557bf53134f`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c22ded831a2d6d954c17cbea831d92b9c8d536d64f08bab3803a77017ceee28`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 996.6 KB (996644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd4bcba0b872aa86d7495c695b918240649ab6a2be4050abb04dc3a7406328c`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c040a879b94600e375c1e66e4cb4a0fdc30910fbf082e69b8fd64c5b78fea8`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.5`

```console
$ docker pull memcached@sha256:3e5312059da6a17f7f2cfeebe5383026b17889d58284a58b1578a48141a63180
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

### `memcached:1.5.5` - linux; amd64

```console
$ docker pull memcached@sha256:0b8e866753119c1fce440f34796232b3fff25d027bd7448bcdc7d016d99620bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23475111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7e8440a999a786c6b7c5f3ef8fb5bc621cbcca373c1fa137bf81bf8eecaaa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_VERSION=1.5.5
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Sat, 17 Feb 2018 08:25:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 17 Feb 2018 08:37:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:37:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:37:42 GMT
USER [memcache]
# Sat, 17 Feb 2018 08:37:42 GMT
EXPOSE 11211/tcp
# Sat, 17 Feb 2018 08:37:43 GMT
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
	-	`sha256:a45614c5748c62430e03b78ba420e0c3ee674440c1c2426fcd7b7740dc820e82`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 976.2 KB (976186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c79b733cbb3043a284ed260b08067f073649e3bacae6e85a779b63a3231841a`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48067542456facc43b2d440961ab9b08bcc07e7e61ea56e2ca417e6a714cee67`  
		Last Modified: Sat, 17 Feb 2018 08:38:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:53644dbfb83fe302c19f3bdb38129089ef791273b9657d55548055832b4ebb70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22143750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55019be04c15d374c70730a045a9cd77d80a81d6a21c6c3accd957f9c0e5a6d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:31:02 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 21:44:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 21:44:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:44:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 21:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:44:13 GMT
USER [memcache]
# Thu, 15 Feb 2018 21:44:14 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 21:44:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd036a58bfea51c12c7a6d4eef97048d80f022e0f6c212ab97ad298760b9a64`  
		Last Modified: Thu, 15 Feb 2018 21:44:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2f4b2fd2064de2d3957adb1789a01a7f1e0e88ad08566fa1b6c2895d5bda98`  
		Last Modified: Thu, 15 Feb 2018 21:44:37 GMT  
		Size: 966.6 KB (966562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee0f5d2eef5d098aeb0a94e886097e9e8b75075587e640f86b80d114207fb5`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81bbe4790fc06158f69d6d4a992215a105331499c46e2554bdd70274a88f907`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:dc4c1fff9affcf33f122399b2de2267786160652a71f8bb8f7c24fb40d39c1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20223507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7187dbaa64a52b25f6522fd611b6e9a3e6166bc8a24e360765ee3b6b05c0f243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 17:54:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 17:54:48 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 17:54:49 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 18:07:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 18:07:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 18:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 18:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:07:51 GMT
USER [memcache]
# Thu, 15 Feb 2018 18:07:51 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 18:07:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d218fbde6dd7025a6e2f2cf479675ef59c66b487da92d764cc27b421953607ae`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7c8218541f588f63270bd0e954d5871b80060b7a6f909e62f9832ee059ed11`  
		Last Modified: Thu, 15 Feb 2018 18:08:06 GMT  
		Size: 935.3 KB (935266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c648abab270ff728e638e7a6f9dfdc5b327bee3071e01709a5f4c74b49caa7e`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d17d5b9a5d993b9ff85386204ba11ef2eea0a72fd03fe6724d60eac2f76e32b`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bc66ec456db20a911e247e0fe12a835016bf5c4b62bd11e56634171e1ef16e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21297752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7203bcf67178095ecbb3cbce03f556e0c66dcf2cd1999ca798c6c9223564c32e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 23:44:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 23:44:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 23:50:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 23:50:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:50:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:50:20 GMT
USER [memcache]
# Thu, 15 Feb 2018 23:50:21 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 23:50:22 GMT
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
	-	`sha256:b79ee46ccff65574e75e53b883df04e4d7e6cbe2f0a8094335605762f9d0e53f`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 948.2 KB (948163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084d11be4aa8b40f2cb1a8284b01243f883df503d9874803f795ac72ac7f291a`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae4cb77a4d355b3ffc2ca2d7628bdee027ce82b58ebecc181ab9d1a6f2afe8`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; 386

```console
$ docker pull memcached@sha256:0e2f30ecd42ab24b1dd1d048f3b898971b99caa1ed14f7f4f4d5740686f813f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24126289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda3c8d97881f57b755c92e3d22fc90f46f7e28de8e6869f51b0ae39e01d0ae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 05:43:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 21 Feb 2018 05:47:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 21 Feb 2018 05:47:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 21 Feb 2018 05:47:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 05:47:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 05:47:23 GMT
USER [memcache]
# Wed, 21 Feb 2018 05:47:23 GMT
EXPOSE 11211/tcp
# Wed, 21 Feb 2018 05:47:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0d66c53e29bef92d06881ebb223676b202b01f3c3fe9e08c3de3b446a41576`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3483dde0dbdba70623fedb0ddfc1f690a598d814a021603dd03eaa5070ce76e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 989.1 KB (989104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bc0d9eabe8b14acf400e128b6290f869a51ec7cecd18c4536670e281de3e9f`  
		Last Modified: Wed, 21 Feb 2018 05:59:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cd0a3cbbbd952b48ca67743a75f8c4f825dc63df151b8f6dec11778854cb5e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
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
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5` - linux; s390x

```console
$ docker pull memcached@sha256:3cc1410e48122f7d4e1f731c39db8e54b4551e9ad969bfd80b04dd7468a5f42d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23347628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42af0a6a4faaaca19d2cb50f43d6c50a83ff864f47f19f298b8c64e3515896`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:11:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 07:11:27 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 07:11:28 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 07:14:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 07:14:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 07:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:14:57 GMT
USER [memcache]
# Thu, 15 Feb 2018 07:14:57 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 07:14:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87749c41912f5da8b9fb0094107ba5cad2778ce18b6aeb914a22557bf53134f`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c22ded831a2d6d954c17cbea831d92b9c8d536d64f08bab3803a77017ceee28`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 996.6 KB (996644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd4bcba0b872aa86d7495c695b918240649ab6a2be4050abb04dc3a7406328c`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c040a879b94600e375c1e66e4cb4a0fdc30910fbf082e69b8fd64c5b78fea8`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.5-alpine`

```console
$ docker pull memcached@sha256:a456874bf21ea1c8be45a310883eeb04f68b3f6070ea137d5ea457cf8358aaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
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
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:84835784a45b2c5d3451b8d759ac902616f88cfc2642ef85f5045d4cdd2cff3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a56cfc88c369c146373344edbfe782231cfa617bb7ff58cb4274495f0ec041`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:29:53 GMT
RUN adduser -D memcache
# Tue, 27 Feb 2018 01:29:54 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 27 Feb 2018 01:29:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 27 Feb 2018 01:40:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 27 Feb 2018 01:40:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 27 Feb 2018 01:40:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Feb 2018 01:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 01:40:11 GMT
USER [memcache]
# Tue, 27 Feb 2018 01:40:11 GMT
EXPOSE 11211/tcp
# Tue, 27 Feb 2018 01:40:12 GMT
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
	-	`sha256:a06e95eee98cf2837973caa439ce8a7e13c47244a11c49264a7ac1dc83319a37`  
		Last Modified: Tue, 27 Feb 2018 01:40:30 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5c5b73396c395e40f43e3ce964c3d9a1bd4fc16d46daecceae9b9f330f91b`  
		Last Modified: Tue, 27 Feb 2018 01:40:31 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc22ed28633f3f66be45ac55f7516481f8c989af1dd5a243ce932a7af152e7b`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48bd919e2b8ef54c912e7fe99e826414b971bcb9deb394c9d03e4e5294b55cd`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
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
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
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
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
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
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
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
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
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
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
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
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:a456874bf21ea1c8be45a310883eeb04f68b3f6070ea137d5ea457cf8358aaa0
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
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
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
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:84835784a45b2c5d3451b8d759ac902616f88cfc2642ef85f5045d4cdd2cff3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a56cfc88c369c146373344edbfe782231cfa617bb7ff58cb4274495f0ec041`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:29:53 GMT
RUN adduser -D memcache
# Tue, 27 Feb 2018 01:29:54 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 27 Feb 2018 01:29:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 27 Feb 2018 01:40:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 27 Feb 2018 01:40:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 27 Feb 2018 01:40:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Feb 2018 01:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 01:40:11 GMT
USER [memcache]
# Tue, 27 Feb 2018 01:40:11 GMT
EXPOSE 11211/tcp
# Tue, 27 Feb 2018 01:40:12 GMT
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
	-	`sha256:a06e95eee98cf2837973caa439ce8a7e13c47244a11c49264a7ac1dc83319a37`  
		Last Modified: Tue, 27 Feb 2018 01:40:30 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5c5b73396c395e40f43e3ce964c3d9a1bd4fc16d46daecceae9b9f330f91b`  
		Last Modified: Tue, 27 Feb 2018 01:40:31 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc22ed28633f3f66be45ac55f7516481f8c989af1dd5a243ce932a7af152e7b`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48bd919e2b8ef54c912e7fe99e826414b971bcb9deb394c9d03e4e5294b55cd`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
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
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
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
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
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
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
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
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
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
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
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
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:a456874bf21ea1c8be45a310883eeb04f68b3f6070ea137d5ea457cf8358aaa0
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
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
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
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:84835784a45b2c5d3451b8d759ac902616f88cfc2642ef85f5045d4cdd2cff3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a56cfc88c369c146373344edbfe782231cfa617bb7ff58cb4274495f0ec041`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:29:53 GMT
RUN adduser -D memcache
# Tue, 27 Feb 2018 01:29:54 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 27 Feb 2018 01:29:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 27 Feb 2018 01:40:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 27 Feb 2018 01:40:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 27 Feb 2018 01:40:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Feb 2018 01:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 01:40:11 GMT
USER [memcache]
# Tue, 27 Feb 2018 01:40:11 GMT
EXPOSE 11211/tcp
# Tue, 27 Feb 2018 01:40:12 GMT
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
	-	`sha256:a06e95eee98cf2837973caa439ce8a7e13c47244a11c49264a7ac1dc83319a37`  
		Last Modified: Tue, 27 Feb 2018 01:40:30 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5c5b73396c395e40f43e3ce964c3d9a1bd4fc16d46daecceae9b9f330f91b`  
		Last Modified: Tue, 27 Feb 2018 01:40:31 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc22ed28633f3f66be45ac55f7516481f8c989af1dd5a243ce932a7af152e7b`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48bd919e2b8ef54c912e7fe99e826414b971bcb9deb394c9d03e4e5294b55cd`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
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
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
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
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
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
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
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
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
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
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
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
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:a456874bf21ea1c8be45a310883eeb04f68b3f6070ea137d5ea457cf8358aaa0
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
$ docker pull memcached@sha256:5a03ab4762b7a9bac7f814eb5bbc9d5db5bd8eb3710d4548b5df1b99f09ee4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3803665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b97d9b2ea1ab802c8a9da3e0489b0f8847b628e8c74ab4e5389aa9fd4192241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:35:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:39:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:48:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:48:14 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:48:14 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:48:14 GMT
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
	-	`sha256:83846c5edccf2fe948d0e017e6b2959080259f66776ada51599f2c189d1de560`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 1.7 MB (1736475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c934b6753283a8c4672aafa787f0313bd637ba5448426bad086aa3949b8e13e4`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0dfbb0d80be278a8b1887853fd2d0654a571e79f96e517f9f9c00d84e0134a`  
		Last Modified: Tue, 13 Feb 2018 22:49:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:84835784a45b2c5d3451b8d759ac902616f88cfc2642ef85f5045d4cdd2cff3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a56cfc88c369c146373344edbfe782231cfa617bb7ff58cb4274495f0ec041`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 01:29:53 GMT
RUN adduser -D memcache
# Tue, 27 Feb 2018 01:29:54 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 27 Feb 2018 01:29:55 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 27 Feb 2018 01:40:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 27 Feb 2018 01:40:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 27 Feb 2018 01:40:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Feb 2018 01:40:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 01:40:11 GMT
USER [memcache]
# Tue, 27 Feb 2018 01:40:11 GMT
EXPOSE 11211/tcp
# Tue, 27 Feb 2018 01:40:12 GMT
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
	-	`sha256:a06e95eee98cf2837973caa439ce8a7e13c47244a11c49264a7ac1dc83319a37`  
		Last Modified: Tue, 27 Feb 2018 01:40:30 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5c5b73396c395e40f43e3ce964c3d9a1bd4fc16d46daecceae9b9f330f91b`  
		Last Modified: Tue, 27 Feb 2018 01:40:31 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc22ed28633f3f66be45ac55f7516481f8c989af1dd5a243ce932a7af152e7b`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48bd919e2b8ef54c912e7fe99e826414b971bcb9deb394c9d03e4e5294b55cd`  
		Last Modified: Tue, 27 Feb 2018 01:40:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:55d7a4c5ea4b149536644eb36f1b8c91ee4d78ec7ff1bf68f11dffb37ea7c6b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5759af40bd88485f070277d8629d1e93d159bb6d5d762b275091945466b87d9`
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
# Wed, 14 Feb 2018 03:53:17 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 03:53:18 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 03:57:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 03:57:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 03:57:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 03:57:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 03:57:20 GMT
USER [memcache]
# Wed, 14 Feb 2018 03:57:21 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 03:57:22 GMT
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
	-	`sha256:07d35ba3fdc1fb193d97fbc5b80f508dc3c555cf5d2b138e3ee06ae3645d9759`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 1.7 MB (1681602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a138e2c35f452177cbf4201fbf0b2a5cc1ee6c1aefeaadd519ee40dc3d5686da`  
		Last Modified: Wed, 14 Feb 2018 03:58:38 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae51b3da4445cd7ea23278d020c36eac8cf9d47fd4fcc9b3c5ceb1dddab58226`  
		Last Modified: Wed, 14 Feb 2018 03:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:8d36e6b812055e22d9e2cc342e6f16e8272c59f01434050e572d3ff42646ce42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3965533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2edb95fd0bd931f2e47f0eba743e4ae5c19314e082e950ddf42d497215eca9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 21:15:00 GMT
RUN adduser -D memcache
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 20:17:31 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 20:21:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 20:21:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 20:21:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 20:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 20:21:19 GMT
USER [memcache]
# Wed, 14 Feb 2018 20:21:19 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 20:21:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e764ac324ae5f248d64a1c76d7f7962178040706dce50136076b67b727edbd7`  
		Last Modified: Fri, 19 Jan 2018 21:27:28 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779cd18e8ea12b4abb7779549416d5399b36a8604272e0f58bd3c8be498341e`  
		Last Modified: Wed, 14 Feb 2018 20:32:01 GMT  
		Size: 1.8 MB (1837487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132f47e2023352d45de9b333f1614cbf93ce114d4795a7e9b58e8d46e03945e`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e065b370241b7e4c7c65b876d0a0c7b82ad7f4cacd31ee9bff55990725df40c`  
		Last Modified: Wed, 14 Feb 2018 20:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:94d6f9798a0b07df249110e2267b8ede9dbc83686900879fb4ae459389e56df1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3825221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b73033648d2464cbea1f2b7756746fd29211ff412e80383253c048bdf90fa37`
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
# Wed, 14 Feb 2018 01:39:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 01:39:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 01:43:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 01:43:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 01:43:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 01:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 01:43:59 GMT
USER [memcache]
# Wed, 14 Feb 2018 01:44:01 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 01:44:02 GMT
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
	-	`sha256:884bee6c027d56be8398c34ca157c970512432133b5fd000ed9fd813ffb23d09`  
		Last Modified: Wed, 14 Feb 2018 01:44:41 GMT  
		Size: 1.7 MB (1741893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2ff5847d4379ed9d5ed11c4a744815b23ca20fd213fddec3c2753d8ca1b88f`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740314290d892e661d3b5425ceb702620567969eaf59a5b6e45ba61a10a24108`  
		Last Modified: Wed, 14 Feb 2018 01:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:fcf39878ad8bd1f8f59077cebe8780681731aa1a24f87a4feaf2cfa9d58ee1b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3602255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198bd59cab695b4394b2c24083fbebfa95e9ab4ddc10817db81f76e7299c28cd`
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
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 14 Feb 2018 18:37:46 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 14 Feb 2018 18:41:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 14 Feb 2018 18:41:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 14 Feb 2018 18:41:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Feb 2018 18:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Feb 2018 18:41:04 GMT
USER [memcache]
# Wed, 14 Feb 2018 18:41:04 GMT
EXPOSE 11211/tcp
# Wed, 14 Feb 2018 18:41:04 GMT
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
	-	`sha256:dc85a8c2d6716f7e0ea20bb79a1da00b9d6704ae68f3cf722521c6f5a973c736`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 1.4 MB (1415206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a25252c5a19b062e078bd68c12bd3856b151ac5cd4debf191ced978c854856a`  
		Last Modified: Wed, 14 Feb 2018 18:41:36 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710022e211c4c2658844ba52f4464c9c330b64a08d2267fd5b81c02cf95750e8`  
		Last Modified: Wed, 14 Feb 2018 18:41:37 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:3e5312059da6a17f7f2cfeebe5383026b17889d58284a58b1578a48141a63180
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
$ docker pull memcached@sha256:0b8e866753119c1fce440f34796232b3fff25d027bd7448bcdc7d016d99620bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23475111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7e8440a999a786c6b7c5f3ef8fb5bc621cbcca373c1fa137bf81bf8eecaaa0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_VERSION=1.5.5
# Sat, 17 Feb 2018 08:22:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Sat, 17 Feb 2018 08:25:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 17 Feb 2018 08:37:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:37:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:37:42 GMT
USER [memcache]
# Sat, 17 Feb 2018 08:37:42 GMT
EXPOSE 11211/tcp
# Sat, 17 Feb 2018 08:37:43 GMT
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
	-	`sha256:a45614c5748c62430e03b78ba420e0c3ee674440c1c2426fcd7b7740dc820e82`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 976.2 KB (976186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c79b733cbb3043a284ed260b08067f073649e3bacae6e85a779b63a3231841a`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48067542456facc43b2d440961ab9b08bcc07e7e61ea56e2ca417e6a714cee67`  
		Last Modified: Sat, 17 Feb 2018 08:38:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:53644dbfb83fe302c19f3bdb38129089ef791273b9657d55548055832b4ebb70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22143750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55019be04c15d374c70730a045a9cd77d80a81d6a21c6c3accd957f9c0e5a6d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:31:02 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 21:31:03 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 21:44:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 21:44:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:44:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 21:44:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:44:13 GMT
USER [memcache]
# Thu, 15 Feb 2018 21:44:14 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 21:44:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd036a58bfea51c12c7a6d4eef97048d80f022e0f6c212ab97ad298760b9a64`  
		Last Modified: Thu, 15 Feb 2018 21:44:35 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2f4b2fd2064de2d3957adb1789a01a7f1e0e88ad08566fa1b6c2895d5bda98`  
		Last Modified: Thu, 15 Feb 2018 21:44:37 GMT  
		Size: 966.6 KB (966562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ee0f5d2eef5d098aeb0a94e886097e9e8b75075587e640f86b80d114207fb5`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81bbe4790fc06158f69d6d4a992215a105331499c46e2554bdd70274a88f907`  
		Last Modified: Thu, 15 Feb 2018 21:44:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:dc4c1fff9affcf33f122399b2de2267786160652a71f8bb8f7c24fb40d39c1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20223507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7187dbaa64a52b25f6522fd611b6e9a3e6166bc8a24e360765ee3b6b05c0f243`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 17:54:48 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 17:54:48 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 17:54:49 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 18:07:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 18:07:45 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 18:07:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 18:07:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:07:51 GMT
USER [memcache]
# Thu, 15 Feb 2018 18:07:51 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 18:07:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d218fbde6dd7025a6e2f2cf479675ef59c66b487da92d764cc27b421953607ae`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7c8218541f588f63270bd0e954d5871b80060b7a6f909e62f9832ee059ed11`  
		Last Modified: Thu, 15 Feb 2018 18:08:06 GMT  
		Size: 935.3 KB (935266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c648abab270ff728e638e7a6f9dfdc5b327bee3071e01709a5f4c74b49caa7e`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d17d5b9a5d993b9ff85386204ba11ef2eea0a72fd03fe6724d60eac2f76e32b`  
		Last Modified: Thu, 15 Feb 2018 18:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:bc66ec456db20a911e247e0fe12a835016bf5c4b62bd11e56634171e1ef16e3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21297752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7203bcf67178095ecbb3cbce03f556e0c66dcf2cd1999ca798c6c9223564c32e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:44:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 23:44:33 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 23:44:34 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 23:50:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 23:50:16 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:50:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:50:20 GMT
USER [memcache]
# Thu, 15 Feb 2018 23:50:21 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 23:50:22 GMT
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
	-	`sha256:b79ee46ccff65574e75e53b883df04e4d7e6cbe2f0a8094335605762f9d0e53f`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 948.2 KB (948163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084d11be4aa8b40f2cb1a8284b01243f883df503d9874803f795ac72ac7f291a`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ae4cb77a4d355b3ffc2ca2d7628bdee027ce82b58ebecc181ab9d1a6f2afe8`  
		Last Modified: Thu, 15 Feb 2018 23:50:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:0e2f30ecd42ab24b1dd1d048f3b898971b99caa1ed14f7f4f4d5740686f813f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24126289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda3c8d97881f57b755c92e3d22fc90f46f7e28de8e6869f51b0ae39e01d0ae1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 05:43:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 21 Feb 2018 05:43:37 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 21 Feb 2018 05:47:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 21 Feb 2018 05:47:21 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 21 Feb 2018 05:47:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 05:47:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 05:47:23 GMT
USER [memcache]
# Wed, 21 Feb 2018 05:47:23 GMT
EXPOSE 11211/tcp
# Wed, 21 Feb 2018 05:47:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0d66c53e29bef92d06881ebb223676b202b01f3c3fe9e08c3de3b446a41576`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3483dde0dbdba70623fedb0ddfc1f690a598d814a021603dd03eaa5070ce76e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 989.1 KB (989104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bc0d9eabe8b14acf400e128b6290f869a51ec7cecd18c4536670e281de3e9f`  
		Last Modified: Wed, 21 Feb 2018 05:59:16 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cd0a3cbbbd952b48ca67743a75f8c4f825dc63df151b8f6dec11778854cb5e`  
		Last Modified: Wed, 21 Feb 2018 05:59:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:527132ff49bc2b4298882b3c25ac25dac1ff3f6adff345815513c650ca3f6c2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23734846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2eeef18c29b98c7263b5c5a51c3afc8a55743f0058993dc94781c55bdd2e8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:36:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 05:36:56 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 05:36:57 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 05:43:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 05:43:35 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 05:43:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 05:43:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 05:43:43 GMT
USER [memcache]
# Thu, 15 Feb 2018 05:43:45 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 05:43:46 GMT
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
	-	`sha256:8bb4ecd42ba514dd70c484be92e085e6ca1cf346191b158b289bce7e8e20952c`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 979.6 KB (979578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01072d0bc6314984a565f60bea9dd02435130a1ce86772a7300cce1b3d5d0e9`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f18482c44a6e4920b2dad505a9e41c170a489fd4c0135f5ff74c7e655c33b7`  
		Last Modified: Thu, 15 Feb 2018 05:44:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:3cc1410e48122f7d4e1f731c39db8e54b4551e9ad969bfd80b04dd7468a5f42d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23347628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc42af0a6a4faaaca19d2cb50f43d6c50a83ff864f47f19f298b8c64e3515896`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:11:27 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 15 Feb 2018 07:11:27 GMT
ENV MEMCACHED_VERSION=1.5.5
# Thu, 15 Feb 2018 07:11:28 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Thu, 15 Feb 2018 07:14:56 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 15 Feb 2018 07:14:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:14:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 07:14:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:14:57 GMT
USER [memcache]
# Thu, 15 Feb 2018 07:14:57 GMT
EXPOSE 11211/tcp
# Thu, 15 Feb 2018 07:14:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87749c41912f5da8b9fb0094107ba5cad2778ce18b6aeb914a22557bf53134f`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c22ded831a2d6d954c17cbea831d92b9c8d536d64f08bab3803a77017ceee28`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 996.6 KB (996644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd4bcba0b872aa86d7495c695b918240649ab6a2be4050abb04dc3a7406328c`  
		Last Modified: Thu, 15 Feb 2018 07:15:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c040a879b94600e375c1e66e4cb4a0fdc30910fbf082e69b8fd64c5b78fea8`  
		Last Modified: Thu, 15 Feb 2018 07:15:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

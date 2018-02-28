## `memcached:latest`

```console
$ docker pull memcached@sha256:d37e32097845eeebe77a1c0830e9e4cc947dab2127ff442c5606c24c05ae4349
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
$ docker pull memcached@sha256:d52f8dd1382cbd47435abca1b1d0376aee1bd9695b6238a0c0c65c542ab4c96c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22684255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b7a05231384a8ffae38eac5934eac38471156c5d9e187dbd0763ee52e4c6f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 19:35:47 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 27 Feb 2018 19:35:48 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 27 Feb 2018 19:35:49 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 27 Feb 2018 19:49:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 27 Feb 2018 19:49:14 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 27 Feb 2018 19:49:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 27 Feb 2018 19:49:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 19:49:19 GMT
USER [memcache]
# Tue, 27 Feb 2018 19:49:20 GMT
EXPOSE 11211/tcp
# Tue, 27 Feb 2018 19:49:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0c35005ac1dc745ee30be9c776dc1e4c6634d5df71b32ade85f23cc4139841`  
		Last Modified: Tue, 27 Feb 2018 19:49:32 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a908e6683d7d9dd4476e68b165eb1ee77ddb8b099d43f243d098692c6518c5`  
		Last Modified: Tue, 27 Feb 2018 19:49:35 GMT  
		Size: 1.5 MB (1507066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3c4eeed851becf58a7665dbbc4edf4d475d130a240defcd88e4651f95f62bf`  
		Last Modified: Tue, 27 Feb 2018 19:49:32 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe89ce622ebd520654ee1a1b8f258ed91e201f6393e6f78d9e28468afd022aa`  
		Last Modified: Tue, 27 Feb 2018 19:49:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:37f2d9191226f33252b31c6a0d12462f1c0395f6814a803923410d68226e6635
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20735315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421b3e4fdd4617ab4e39d9f73f54412e9361ab7e920784699839a0959ddbcce0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Wed, 28 Feb 2018 05:58:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 28 Feb 2018 05:58:42 GMT
ENV MEMCACHED_VERSION=1.5.5
# Wed, 28 Feb 2018 05:58:43 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Wed, 28 Feb 2018 06:11:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 28 Feb 2018 06:11:27 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 28 Feb 2018 06:11:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 28 Feb 2018 06:11:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Feb 2018 06:11:33 GMT
USER [memcache]
# Wed, 28 Feb 2018 06:11:33 GMT
EXPOSE 11211/tcp
# Wed, 28 Feb 2018 06:11:34 GMT
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
	-	`sha256:e8596a18ed36dda0b593aea0a7a31799acf701eaa9f949082ce1345c5ffe68b5`  
		Last Modified: Wed, 28 Feb 2018 06:12:00 GMT  
		Size: 1.4 MB (1447075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e59679fd93784f45bb663c724d0774922a5a19de7631269a7664958e821462`  
		Last Modified: Wed, 28 Feb 2018 06:11:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86eb9c0e88de8e03d423b67874a18ea69fbe2d4f65ae383d26e84424abfbbe3c`  
		Last Modified: Wed, 28 Feb 2018 06:11:57 GMT  
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

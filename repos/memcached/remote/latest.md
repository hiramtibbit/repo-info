## `memcached:latest`

```console
$ docker pull memcached@sha256:f9341947ad15645f81c1988cb7b8e3b5c7b7c9806dcb30856f318c9cff1c2330
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
$ docker pull memcached@sha256:9a7e6a3c23de5814dd60a033bdf22bad5f4f016103e12c8c7ef765f9ad3f51a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23544506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33546802fc245149b0a777b0a73be0be9936a9a4b70155551b592c3a696483d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:13:03 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 02:13:04 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 02:18:45 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 02:18:45 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 02:18:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 02:18:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 02:18:46 GMT
USER memcache
# Wed, 08 May 2019 02:18:46 GMT
EXPOSE 11211
# Wed, 08 May 2019 02:18:46 GMT
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
	-	`sha256:8df6e79f2c3c683409ec1b43b388249a2641c831807d30f2de6fc56466f836d8`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 1.0 MB (1049753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e50d4a961fd529a58b816fd188757d3393fdb5cc0fe97dc96f8f383bc2f634`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3469ff204be855ce56c9c9603ee1a839a5e1e2b7a07663f516cdaf5c796d26`  
		Last Modified: Wed, 08 May 2019 02:19:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:20b473de4bf1e27a9336db9fb414c64016ced030494fcb9ab10bd9a485b1effa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22195926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8cac7329eacb38043c96c11bce07a987d2d0ded4e1340eb66838dc607ceffaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:16:57 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:48:44 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:48:46 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 01 May 2019 09:05:57 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 01 May 2019 09:05:59 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 01 May 2019 09:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 01 May 2019 09:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 09:06:13 GMT
USER memcache
# Wed, 01 May 2019 09:06:14 GMT
EXPOSE 11211
# Wed, 01 May 2019 09:06:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d549001cb3e9e2c708f63e2e900b0ee699955ddf3396c15e6d25e0a465576b`  
		Last Modified: Wed, 27 Mar 2019 10:13:25 GMT  
		Size: 4.9 KB (4899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484d26110243b9763349ed8778597521f0b11e89eb44358b2d30b3586d0f6895`  
		Last Modified: Wed, 01 May 2019 09:06:31 GMT  
		Size: 1.0 MB (1029947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62113e9a42744a86a761fe250d08b2628cda02055ad84d7a7c8bb90ab9ff9b47`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f42604621e3109268a7aa069e34a52c39d34b2f51b1c6bbd0ad33cc4a0fb945`  
		Last Modified: Wed, 01 May 2019 09:06:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:301bf16d24ba9ced7ddf6f1254d40bfb61d08195a10fb2fa6dc6182abd0159b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20279213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dece7efc631a0b06c78264c61cb7bacd6bfbcf2fca1ac4844484f903ff897208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:27:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 12:27:20 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 12:27:22 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Sat, 11 May 2019 12:48:11 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 11 May 2019 12:48:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Sat, 11 May 2019 12:48:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 11 May 2019 12:48:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:48:27 GMT
USER memcache
# Sat, 11 May 2019 12:48:29 GMT
EXPOSE 11211
# Sat, 11 May 2019 12:48:31 GMT
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
	-	`sha256:4ffff02dbc83857e053ac840a85a5ffdde202921e58ad805174811eb9110c995`  
		Last Modified: Sat, 11 May 2019 13:37:11 GMT  
		Size: 997.7 KB (997686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ac4503b0809c37ec1562bc44b2d37da42e1b1939d30071408acd921a3d8fa`  
		Last Modified: Sat, 11 May 2019 13:37:09 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999d38b31b4f131b99488c9b4b32cc2abfc97c391a40ce9536550442f74f693`  
		Last Modified: Sat, 11 May 2019 13:37:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f8fb8ffd9710772de3e6df403f5b8fa8da521ca17d4f465e4d0561e7a515eb62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21347501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75eff7c5fb0380f47df9ec00ea788916fef2590eb33e946d9c3d436ce4a2eb64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:21:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 16:21:24 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 16:21:26 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 16:30:53 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 16:30:53 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 16:30:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 16:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 16:30:57 GMT
USER memcache
# Wed, 08 May 2019 16:30:57 GMT
EXPOSE 11211
# Wed, 08 May 2019 16:30:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a91dd2af5fb33783250d433c3a5e9262eda6e802d68e06cd83f8e49ae4777`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 5.0 KB (5025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb960f477fccdfc82913e7a7082d9c67915742ffba4ebc87a9a0b7b59e405946`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 1.0 MB (1008246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95c8d82bd9f68ad73c4b7a2b28766bd5dd0a68c212798dc9cbb6e60ced0676a`  
		Last Modified: Wed, 08 May 2019 16:31:24 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4e91ab518f4816ce94f7aeb9504f20c6a835dcc9957d4357c7d14f20d3496`  
		Last Modified: Wed, 08 May 2019 16:31:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:d17e38b86d3d6c0b17cc77717e212853365554ea4b720600a74e0cd2b83e92a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24182528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a16d49bd066e9631fd2652994cf5529fa27e231d7fbde07b54424ad4ccdce8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:20:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 19:20:45 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 19:20:45 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 19:26:31 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 19:26:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 19:26:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 19:26:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 19:26:32 GMT
USER memcache
# Wed, 08 May 2019 19:26:32 GMT
EXPOSE 11211
# Wed, 08 May 2019 19:26:33 GMT
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
	-	`sha256:51df833b7c7a9e17f922823935a5c90ad6df6ebed4d84db04184ef664c21c50d`  
		Last Modified: Wed, 08 May 2019 19:26:56 GMT  
		Size: 1.1 MB (1056370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe067b2e08748742887038d158f490b54cff0cf290e2cddb807f7529d822ec0`  
		Last Modified: Wed, 08 May 2019 19:26:52 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a842e61c4d726546dc128b157686f0c239ce4bb40dc993bf3fdef20ecfa63552`  
		Last Modified: Wed, 08 May 2019 19:26:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:4f553dba91fbf4fb054a3be802c65de3e8957b080d32147b921148466faee5f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23792926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8cf54001612751eb9fca24a463bc507e202a49d8255237c2f13446c4d2e06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:24:16 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 13:24:20 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 13:24:23 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 13:34:28 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 13:34:31 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 13:34:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 13:34:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 13:34:46 GMT
USER memcache
# Wed, 08 May 2019 13:34:50 GMT
EXPOSE 11211
# Wed, 08 May 2019 13:34:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c0066a1642e901f72fe616b91b6f062e97b4301b73972ad62fcc0cf66c9668`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bca94c9068931f5c219f02f6813ee4d0a78a3f8cf1b3736f2a3241da3f1ba34`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 1.0 MB (1042609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6229f2679a5f9d0fe63faa8824763968b873e056ca95a39b1b22bc610e6c7a8`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54dd5a50f79b58cb81db36e1384b236d68a6888f691fc49f531b468dafdce9b`  
		Last Modified: Wed, 08 May 2019 13:36:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:57b40b192881974b2b7fcddde719e42267059ab8fadbb46e73cac3c0d08858d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23349582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4172b6d8e24ca019b61b2da250eae84da45dab261df62d2a11432fa635126b34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:04:14 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 08 May 2019 14:04:15 GMT
ENV MEMCACHED_VERSION=1.5.14
# Wed, 08 May 2019 14:04:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Wed, 08 May 2019 14:09:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 08 May 2019 14:09:56 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 08 May 2019 14:09:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 14:09:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 14:10:00 GMT
USER memcache
# Wed, 08 May 2019 14:10:01 GMT
EXPOSE 11211
# Wed, 08 May 2019 14:10:02 GMT
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
	-	`sha256:1eddd47014e4e1fc9a7b52480a22db420751bec8ad50e09ff95d2d8b6664d12a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 1.0 MB (1005269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbeed36c89bfdd05539e04605f35714608bb2446cb096e7ad5e76504ea9592a`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9c346f846fbd3179110e9ef255b262d7e063ff5d59cde74befb43505e1f615`  
		Last Modified: Wed, 08 May 2019 14:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.10`](#memcached1510)
-	[`memcached:1.5.10-alpine`](#memcached1510-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:085172d507040957a40fef21eea13b27a889e174c16c6c3866287a6506325e85
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
$ docker pull memcached@sha256:ed5c7eb56d3a07258e5ccde4b038a4838149abe094e164859cd188af45c69add
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80256dbd25aedb4c025d495f18e0e513dd011005726326f529c296e4141811f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:49:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 01:06:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 01:06:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:06:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 01:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:06:52 GMT
USER [memcache]
# Wed, 05 Sep 2018 01:06:52 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 01:06:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698f430e8ad4115926112ea0cecbf658e5b7265f24e118f8c6345c74c2a4ea3b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272528d1fa0a6fb7863a0f01392e42ec4016495b6ed00eb79c4b73d9551acef8`  
		Last Modified: Wed, 05 Sep 2018 01:18:36 GMT  
		Size: 1.0 MB (1043297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401e58421154d8f87fc0ca05d212a6425195da962296737a1c38ac47a13ba28b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09b8be91dca65762b939f5724dfb7d4dc13dad788d2bcf35247cf78ea48cf71`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:41fd0d2eccbd58962e4cd659378f9747ccc08892c73a85e6853cc862a985ce9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a178eae5cdcceaae5804062241229dfb016bd2201a565970da21e7da8f244b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 15:13:03 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 16:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 16:05:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 16:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 16:05:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 16:05:24 GMT
USER [memcache]
# Thu, 06 Sep 2018 16:05:25 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 16:05:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805b05dc6ff760fd10d165e30971fabd5fb559ceab540e5484f300f93b06f1f`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b9df3896e21d6b6cd92804ee6d740b0de5f3e94f76e00321e40a7757816c2`  
		Last Modified: Thu, 06 Sep 2018 16:06:11 GMT  
		Size: 1.0 MB (1023669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b147ae8732ea6b4e7107762c9df5fae6aa737e047bfa0ab95fd4d2b4bec4d19b`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8cc1bf91d20bccd56a68dd5e850f54b4603ced8b8994e6cc3079b905b9f08`  
		Last Modified: Thu, 06 Sep 2018 16:05:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2f3b88111ca760d8c3c7db0ff851da6372dbcfdfd16d2461a41b4387b277cd86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20263130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fa682d19f9f28393190a2ad3932f522b93a3a328ab29cf8ed30065a078e21d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 16:10:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 16:10:08 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 16:10:09 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 17:00:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 17:00:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 17:00:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 17:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 17:00:12 GMT
USER [memcache]
# Thu, 06 Sep 2018 17:00:13 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 17:00:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e856f19e355683001022e5596353c239ac8ab399954e63bede4937d8e97b92e1`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36e26168e4dafb7c443734a04bea796280c8da0dabcf0e00ca640b37e546b3`  
		Last Modified: Thu, 06 Sep 2018 17:00:40 GMT  
		Size: 990.8 KB (990808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf91c3950569062e00e2fb78ad171ae65bda5b0b3f29d43330938edf1a9117a`  
		Last Modified: Thu, 06 Sep 2018 17:00:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448c53134b6d711c22ababf034d6a4b1538667a43321b86022dce5951abd7d6`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f2ad028c4dd5f90f16a900aa183e123fa2c99544d21ab170c798d899b05fb254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732747f5db55b53fca26f45453e9a41e1125529188229076d4d444b66170ae6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:53:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:01:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:01:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:01:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:01:13 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:01:13 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:01:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de48c01a00c2adabcf643f949aaa8e45937ddb2abc9b6c3a4e94b389c95de846`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a8bccb3797a7fc4a6afd2d270615aaf7eef11b01d8c77b76240f58ce3edc9`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.0 MB (1004963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c38556bf533c1d0b9e83ccffeb4090b1d6ca41d88d8782ca7bfff7c8a1016d`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c683bc544605de31addcd4984ce015ec6cf3f5217b0dc3276f8ef62d85d3b048`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:9a91b4bd59b1ba6fdb4b0956ddcb3a446a6c26542d420c06c6a28f22a24a15f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79bebb7af398a58505cf2ff89c570ac795ac2ebde5bba783b3cddfb4aaae29f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:32:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:40:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:40:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:40:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:56 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:40:56 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:40:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749c5e4cc5811a9882a88dac54764f3be31990898bc16289fd505e99a4c5926c`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b1441097eff8f0e1a6466340e22d9e4fecd36934e834052ad5397a1a384660`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 1.1 MB (1051719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861ec4c0af3c876996a3be057c9ab0d6b8d407d17b68f1649b3d2e79e5b53c4c`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9738641b7149872f661318d6cd93b49aa0f51b319715792794da72924144ff3`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:58855b10209aaac7c51cef25461768287fa9386e454852f45a146c33d7a9847f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23778845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29640bbeaaf213c79ebe281eae2ed69769d0d848d00ad119c40b1427dbed7942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:21:13 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 09:21:14 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 09:21:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 09:27:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 09:28:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 09:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 09:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 09:28:05 GMT
USER [memcache]
# Wed, 05 Sep 2018 09:28:06 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 09:28:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d920fb26fe2cc11e791cb608bc1c1fdcf00d19268fb48f8feb3bf91dc601989`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497b716b833146a0f53e1581aa31a4ac48103abf32159b421ea6e528e802d9a4`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.0 MB (1036153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1897d3f77fd8d9783769dcd5e8fe1b3493162c4739b705fe79292e8f45c5ff7f`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a8a0ac2ad5f4cbbdfa08135a0f6424781416cee5d59b40a3c917091607339c`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:12564a6d5545fe524d4846726f4b8bb8cd2e3bfb62df794e6b282c024d5796d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0224dc1b8f95f4c11f8aa18c7b55777746c48dca8520fd1005a00f997af98b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:45:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 14:45:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 14:45:46 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:50:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 12 Sep 2018 12:50:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:50:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:50:18 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:50:18 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:50:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fec7374cc65273301314e9ba8b0dd418b0f3b06ba94738cd1809f77d787456`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a46c2e9759db7bc9e6eadf118ba3f3d0f9f605fabc7b633663bc65c809d18`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1000.3 KB (1000275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f940c869aee8ab761fe9af3e0226c9decf07cc0f7e74b32a68569055c832edd`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa690a2bf14a089133eb7aa585af1df91e9bd05ec17cb68c071bb0e9138180`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:085172d507040957a40fef21eea13b27a889e174c16c6c3866287a6506325e85
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
$ docker pull memcached@sha256:ed5c7eb56d3a07258e5ccde4b038a4838149abe094e164859cd188af45c69add
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80256dbd25aedb4c025d495f18e0e513dd011005726326f529c296e4141811f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:49:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 01:06:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 01:06:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:06:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 01:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:06:52 GMT
USER [memcache]
# Wed, 05 Sep 2018 01:06:52 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 01:06:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698f430e8ad4115926112ea0cecbf658e5b7265f24e118f8c6345c74c2a4ea3b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272528d1fa0a6fb7863a0f01392e42ec4016495b6ed00eb79c4b73d9551acef8`  
		Last Modified: Wed, 05 Sep 2018 01:18:36 GMT  
		Size: 1.0 MB (1043297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401e58421154d8f87fc0ca05d212a6425195da962296737a1c38ac47a13ba28b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09b8be91dca65762b939f5724dfb7d4dc13dad788d2bcf35247cf78ea48cf71`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:41fd0d2eccbd58962e4cd659378f9747ccc08892c73a85e6853cc862a985ce9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a178eae5cdcceaae5804062241229dfb016bd2201a565970da21e7da8f244b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 15:13:03 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 16:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 16:05:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 16:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 16:05:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 16:05:24 GMT
USER [memcache]
# Thu, 06 Sep 2018 16:05:25 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 16:05:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805b05dc6ff760fd10d165e30971fabd5fb559ceab540e5484f300f93b06f1f`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b9df3896e21d6b6cd92804ee6d740b0de5f3e94f76e00321e40a7757816c2`  
		Last Modified: Thu, 06 Sep 2018 16:06:11 GMT  
		Size: 1.0 MB (1023669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b147ae8732ea6b4e7107762c9df5fae6aa737e047bfa0ab95fd4d2b4bec4d19b`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8cc1bf91d20bccd56a68dd5e850f54b4603ced8b8994e6cc3079b905b9f08`  
		Last Modified: Thu, 06 Sep 2018 16:05:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2f3b88111ca760d8c3c7db0ff851da6372dbcfdfd16d2461a41b4387b277cd86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20263130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fa682d19f9f28393190a2ad3932f522b93a3a328ab29cf8ed30065a078e21d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 16:10:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 16:10:08 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 16:10:09 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 17:00:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 17:00:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 17:00:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 17:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 17:00:12 GMT
USER [memcache]
# Thu, 06 Sep 2018 17:00:13 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 17:00:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e856f19e355683001022e5596353c239ac8ab399954e63bede4937d8e97b92e1`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36e26168e4dafb7c443734a04bea796280c8da0dabcf0e00ca640b37e546b3`  
		Last Modified: Thu, 06 Sep 2018 17:00:40 GMT  
		Size: 990.8 KB (990808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf91c3950569062e00e2fb78ad171ae65bda5b0b3f29d43330938edf1a9117a`  
		Last Modified: Thu, 06 Sep 2018 17:00:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448c53134b6d711c22ababf034d6a4b1538667a43321b86022dce5951abd7d6`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f2ad028c4dd5f90f16a900aa183e123fa2c99544d21ab170c798d899b05fb254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732747f5db55b53fca26f45453e9a41e1125529188229076d4d444b66170ae6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:53:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:01:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:01:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:01:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:01:13 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:01:13 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:01:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de48c01a00c2adabcf643f949aaa8e45937ddb2abc9b6c3a4e94b389c95de846`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a8bccb3797a7fc4a6afd2d270615aaf7eef11b01d8c77b76240f58ce3edc9`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.0 MB (1004963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c38556bf533c1d0b9e83ccffeb4090b1d6ca41d88d8782ca7bfff7c8a1016d`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c683bc544605de31addcd4984ce015ec6cf3f5217b0dc3276f8ef62d85d3b048`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:9a91b4bd59b1ba6fdb4b0956ddcb3a446a6c26542d420c06c6a28f22a24a15f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79bebb7af398a58505cf2ff89c570ac795ac2ebde5bba783b3cddfb4aaae29f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:32:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:40:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:40:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:40:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:56 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:40:56 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:40:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749c5e4cc5811a9882a88dac54764f3be31990898bc16289fd505e99a4c5926c`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b1441097eff8f0e1a6466340e22d9e4fecd36934e834052ad5397a1a384660`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 1.1 MB (1051719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861ec4c0af3c876996a3be057c9ab0d6b8d407d17b68f1649b3d2e79e5b53c4c`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9738641b7149872f661318d6cd93b49aa0f51b319715792794da72924144ff3`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:58855b10209aaac7c51cef25461768287fa9386e454852f45a146c33d7a9847f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23778845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29640bbeaaf213c79ebe281eae2ed69769d0d848d00ad119c40b1427dbed7942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:21:13 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 09:21:14 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 09:21:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 09:27:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 09:28:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 09:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 09:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 09:28:05 GMT
USER [memcache]
# Wed, 05 Sep 2018 09:28:06 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 09:28:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d920fb26fe2cc11e791cb608bc1c1fdcf00d19268fb48f8feb3bf91dc601989`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497b716b833146a0f53e1581aa31a4ac48103abf32159b421ea6e528e802d9a4`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.0 MB (1036153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1897d3f77fd8d9783769dcd5e8fe1b3493162c4739b705fe79292e8f45c5ff7f`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a8a0ac2ad5f4cbbdfa08135a0f6424781416cee5d59b40a3c917091607339c`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:12564a6d5545fe524d4846726f4b8bb8cd2e3bfb62df794e6b282c024d5796d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0224dc1b8f95f4c11f8aa18c7b55777746c48dca8520fd1005a00f997af98b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:45:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 14:45:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 14:45:46 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:50:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 12 Sep 2018 12:50:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:50:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:50:18 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:50:18 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:50:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fec7374cc65273301314e9ba8b0dd418b0f3b06ba94738cd1809f77d787456`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a46c2e9759db7bc9e6eadf118ba3f3d0f9f605fabc7b633663bc65c809d18`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1000.3 KB (1000275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f940c869aee8ab761fe9af3e0226c9decf07cc0f7e74b32a68569055c832edd`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa690a2bf14a089133eb7aa585af1df91e9bd05ec17cb68c071bb0e9138180`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.10`

```console
$ docker pull memcached@sha256:085172d507040957a40fef21eea13b27a889e174c16c6c3866287a6506325e85
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

### `memcached:1.5.10` - linux; amd64

```console
$ docker pull memcached@sha256:ed5c7eb56d3a07258e5ccde4b038a4838149abe094e164859cd188af45c69add
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80256dbd25aedb4c025d495f18e0e513dd011005726326f529c296e4141811f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:49:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 01:06:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 01:06:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:06:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 01:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:06:52 GMT
USER [memcache]
# Wed, 05 Sep 2018 01:06:52 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 01:06:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698f430e8ad4115926112ea0cecbf658e5b7265f24e118f8c6345c74c2a4ea3b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272528d1fa0a6fb7863a0f01392e42ec4016495b6ed00eb79c4b73d9551acef8`  
		Last Modified: Wed, 05 Sep 2018 01:18:36 GMT  
		Size: 1.0 MB (1043297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401e58421154d8f87fc0ca05d212a6425195da962296737a1c38ac47a13ba28b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09b8be91dca65762b939f5724dfb7d4dc13dad788d2bcf35247cf78ea48cf71`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; arm variant v5

```console
$ docker pull memcached@sha256:41fd0d2eccbd58962e4cd659378f9747ccc08892c73a85e6853cc862a985ce9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a178eae5cdcceaae5804062241229dfb016bd2201a565970da21e7da8f244b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 15:13:03 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 16:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 16:05:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 16:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 16:05:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 16:05:24 GMT
USER [memcache]
# Thu, 06 Sep 2018 16:05:25 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 16:05:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805b05dc6ff760fd10d165e30971fabd5fb559ceab540e5484f300f93b06f1f`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b9df3896e21d6b6cd92804ee6d740b0de5f3e94f76e00321e40a7757816c2`  
		Last Modified: Thu, 06 Sep 2018 16:06:11 GMT  
		Size: 1.0 MB (1023669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b147ae8732ea6b4e7107762c9df5fae6aa737e047bfa0ab95fd4d2b4bec4d19b`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8cc1bf91d20bccd56a68dd5e850f54b4603ced8b8994e6cc3079b905b9f08`  
		Last Modified: Thu, 06 Sep 2018 16:05:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2f3b88111ca760d8c3c7db0ff851da6372dbcfdfd16d2461a41b4387b277cd86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20263130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fa682d19f9f28393190a2ad3932f522b93a3a328ab29cf8ed30065a078e21d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 16:10:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 16:10:08 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 16:10:09 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 17:00:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 17:00:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 17:00:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 17:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 17:00:12 GMT
USER [memcache]
# Thu, 06 Sep 2018 17:00:13 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 17:00:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e856f19e355683001022e5596353c239ac8ab399954e63bede4937d8e97b92e1`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36e26168e4dafb7c443734a04bea796280c8da0dabcf0e00ca640b37e546b3`  
		Last Modified: Thu, 06 Sep 2018 17:00:40 GMT  
		Size: 990.8 KB (990808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf91c3950569062e00e2fb78ad171ae65bda5b0b3f29d43330938edf1a9117a`  
		Last Modified: Thu, 06 Sep 2018 17:00:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448c53134b6d711c22ababf034d6a4b1538667a43321b86022dce5951abd7d6`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f2ad028c4dd5f90f16a900aa183e123fa2c99544d21ab170c798d899b05fb254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732747f5db55b53fca26f45453e9a41e1125529188229076d4d444b66170ae6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:53:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:01:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:01:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:01:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:01:13 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:01:13 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:01:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de48c01a00c2adabcf643f949aaa8e45937ddb2abc9b6c3a4e94b389c95de846`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a8bccb3797a7fc4a6afd2d270615aaf7eef11b01d8c77b76240f58ce3edc9`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.0 MB (1004963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c38556bf533c1d0b9e83ccffeb4090b1d6ca41d88d8782ca7bfff7c8a1016d`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c683bc544605de31addcd4984ce015ec6cf3f5217b0dc3276f8ef62d85d3b048`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; 386

```console
$ docker pull memcached@sha256:9a91b4bd59b1ba6fdb4b0956ddcb3a446a6c26542d420c06c6a28f22a24a15f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79bebb7af398a58505cf2ff89c570ac795ac2ebde5bba783b3cddfb4aaae29f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:32:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:40:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:40:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:40:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:56 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:40:56 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:40:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749c5e4cc5811a9882a88dac54764f3be31990898bc16289fd505e99a4c5926c`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b1441097eff8f0e1a6466340e22d9e4fecd36934e834052ad5397a1a384660`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 1.1 MB (1051719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861ec4c0af3c876996a3be057c9ab0d6b8d407d17b68f1649b3d2e79e5b53c4c`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9738641b7149872f661318d6cd93b49aa0f51b319715792794da72924144ff3`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; ppc64le

```console
$ docker pull memcached@sha256:58855b10209aaac7c51cef25461768287fa9386e454852f45a146c33d7a9847f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23778845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29640bbeaaf213c79ebe281eae2ed69769d0d848d00ad119c40b1427dbed7942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:21:13 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 09:21:14 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 09:21:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 09:27:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 09:28:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 09:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 09:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 09:28:05 GMT
USER [memcache]
# Wed, 05 Sep 2018 09:28:06 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 09:28:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d920fb26fe2cc11e791cb608bc1c1fdcf00d19268fb48f8feb3bf91dc601989`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497b716b833146a0f53e1581aa31a4ac48103abf32159b421ea6e528e802d9a4`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.0 MB (1036153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1897d3f77fd8d9783769dcd5e8fe1b3493162c4739b705fe79292e8f45c5ff7f`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a8a0ac2ad5f4cbbdfa08135a0f6424781416cee5d59b40a3c917091607339c`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; s390x

```console
$ docker pull memcached@sha256:12564a6d5545fe524d4846726f4b8bb8cd2e3bfb62df794e6b282c024d5796d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0224dc1b8f95f4c11f8aa18c7b55777746c48dca8520fd1005a00f997af98b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:45:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 14:45:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 14:45:46 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:50:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 12 Sep 2018 12:50:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:50:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:50:18 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:50:18 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:50:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fec7374cc65273301314e9ba8b0dd418b0f3b06ba94738cd1809f77d787456`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a46c2e9759db7bc9e6eadf118ba3f3d0f9f605fabc7b633663bc65c809d18`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1000.3 KB (1000275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f940c869aee8ab761fe9af3e0226c9decf07cc0f7e74b32a68569055c832edd`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa690a2bf14a089133eb7aa585af1df91e9bd05ec17cb68c071bb0e9138180`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.10-alpine`

```console
$ docker pull memcached@sha256:949dcc9ca9ab2c8e48a42f29990fb33f2a75ebe2d0310939a2c6451f3f5bd4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.10-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:07997fce572e1d3a62864591e860ffd90b902dc6fa9f9e3a52b4ef5d87dd53bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4917782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f75902a23b82927267be20f5b85dbb506e21a28180c8400b109fa5b58e86ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:47:06 GMT
RUN adduser -D memcache
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Fri, 14 Sep 2018 19:25:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 14 Sep 2018 19:25:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Sep 2018 19:25:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Sep 2018 19:25:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Sep 2018 19:25:27 GMT
USER [memcache]
# Fri, 14 Sep 2018 19:25:27 GMT
EXPOSE 11211/tcp
# Fri, 14 Sep 2018 19:25:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db529ff9ba7e95622b5c777b3c5b8b36a83289608380e3499170cd2a9e12467`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032d0aca6e3e3dc8ab8d9ed168409df87c59ae4f4f264635a8ceb04620efda59`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 2.7 MB (2709199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f13599c5a59fe085a718026d99ebd829d4452bb81c80bcad2e2cf13ce469818`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa96593f29821aa5fb1cdd7738890016172eaf9ddf0e25ee133007538aaeac3`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c60a0ed78203346f727b7e2991243c7939b035f4918e6a1fa45369414abcf50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4753045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f1b1e945849d1482b10e2563420ecd5fd6a5f6fe9c15f09680d3a809d3d89c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:54:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:54:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:54:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 10:09:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 10:09:24 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 10:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 10:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 10:09:29 GMT
USER [memcache]
# Thu, 23 Aug 2018 10:09:30 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 10:09:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5621f1af26f1ffaa2863afff3cec1278b7708b65f42b17e641e81c62a7e81ed`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d99b1a61440f8678b244ddffe55df7dfeb16467ccc76d9dd0946b4b9e38ffc0`  
		Last Modified: Thu, 23 Aug 2018 10:10:00 GMT  
		Size: 2.6 MB (2605191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e72428793986cf23dc9cfd40defa22679ad265d54672a42ae4410c012b72d`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54610337fe6e9e783b9ba6e42580abdbfabf9c8422cd0bba210e393ae8825fbf`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c07ca8e98ff81681a9f60ddfcc93eb06a33f6081062f4bc73be9a69e988a59cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4678981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f59200f75a3f345567c76346c21461ecb169f64c49b76766288155f0183f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:21:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:21:03 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:21:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:27:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:27:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:27:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:27:51 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:27:52 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:27:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b318ec7f27bf100f338fcd7f7e050d6bd9c6e4d861d121b8d9249d7bf1520f`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704781bd556bb27369b823b41f0fdf5000e5ae337df73a19252973558b8c795`  
		Last Modified: Thu, 23 Aug 2018 09:28:55 GMT  
		Size: 2.6 MB (2577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc571a9bc1c18022bc2c6ea5f8e4dfe7c3d04157f1c75a5f5c43d2de56ef8d1`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5152a22f2c440a1610b33f8f8d7cb85e647f5d6beb6a3e51b5af8c2a80d5d`  
		Last Modified: Thu, 23 Aug 2018 09:28:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; 386

```console
$ docker pull memcached@sha256:d7da5724b72caae6cfde23018d9d23c477d0a8f2d6237b7c66fd773487e15f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26586c6b712faee010fb3eee11b2cfdfcd7626de70d3583be21dd5c5581182a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:30:59 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:36:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:36:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:36:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:36:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:36:31 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:36:32 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:36:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f45a36bb569a3430eafa5c54141d4d51eeb51f81dec2512f5d6fccdc414a1b`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d7546630bb4ab5b97249be9e9685fcb5773477838f2ca31e86fa286f12845`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 2.8 MB (2779174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00cc784de6734b262391edb079da7c9d9a39d1fb793c73c8187f5edbd466b4`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec27ec1619c6a95a8d034af44e20aec19ec814701b163fb557a68d8504be1c81`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f04996be44ffcec70a703d04a347fc308c395c653bc2541578acd60bade8b44e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4840599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00169f53ece0b55ca6db8fd55717214c088e458fc7d99bf5f501051806d64f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 08:48:19 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 08:48:25 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 08:48:26 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:05:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:05:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:05:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:05:17 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:05:19 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:05:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857aa73f4ce6b5f4fa2c7d60202a68ed5ec32205649bb621749cf3a08ea202c2`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2605b69eb5af5b454b5c784ba95a7ed4cf7afe54f5f4d99433d4065ffba046d`  
		Last Modified: Thu, 23 Aug 2018 09:05:41 GMT  
		Size: 2.6 MB (2643887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35299b7b92ec28b1d9503d00b9d394768365c1d7a249ff13278f72c56775709`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3b343c04e2b61f9f6f9889a6deb9f7b8b6908c825378fa49b4f0c1dfa03829`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:afd2250b757d203c6afe1cd9e56b82cbe7d108b79daffb367784dd94399b9472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3385375c3ae340c9f317c42b6180e3f0d62bda6286b300bac21cccef7dc79963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:50:41 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:54:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:54:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:54:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:54:11 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:54:11 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:54:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cb4f044e152b5529d1c27c9d8268ede2d732fbfbde325f432c9067390a08fa`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4f259a3e6b41da999153cc8779b13eb7717e7fc54947664e617cf0c1daa3`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 2.6 MB (2634513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc6d3824ac6c44f9de8d0c103fcc572d4b7a582f966bb0d067ec3b632cf999a`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622fabb068153fd56f4b6a12fb8646ae4f50cde98673d4462c4fea50d6b8892a`  
		Last Modified: Wed, 12 Sep 2018 12:55:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:949dcc9ca9ab2c8e48a42f29990fb33f2a75ebe2d0310939a2c6451f3f5bd4b0
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
$ docker pull memcached@sha256:07997fce572e1d3a62864591e860ffd90b902dc6fa9f9e3a52b4ef5d87dd53bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4917782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f75902a23b82927267be20f5b85dbb506e21a28180c8400b109fa5b58e86ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:47:06 GMT
RUN adduser -D memcache
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Fri, 14 Sep 2018 19:25:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 14 Sep 2018 19:25:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Sep 2018 19:25:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Sep 2018 19:25:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Sep 2018 19:25:27 GMT
USER [memcache]
# Fri, 14 Sep 2018 19:25:27 GMT
EXPOSE 11211/tcp
# Fri, 14 Sep 2018 19:25:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db529ff9ba7e95622b5c777b3c5b8b36a83289608380e3499170cd2a9e12467`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032d0aca6e3e3dc8ab8d9ed168409df87c59ae4f4f264635a8ceb04620efda59`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 2.7 MB (2709199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f13599c5a59fe085a718026d99ebd829d4452bb81c80bcad2e2cf13ce469818`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa96593f29821aa5fb1cdd7738890016172eaf9ddf0e25ee133007538aaeac3`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c60a0ed78203346f727b7e2991243c7939b035f4918e6a1fa45369414abcf50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4753045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f1b1e945849d1482b10e2563420ecd5fd6a5f6fe9c15f09680d3a809d3d89c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:54:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:54:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:54:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 10:09:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 10:09:24 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 10:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 10:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 10:09:29 GMT
USER [memcache]
# Thu, 23 Aug 2018 10:09:30 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 10:09:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5621f1af26f1ffaa2863afff3cec1278b7708b65f42b17e641e81c62a7e81ed`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d99b1a61440f8678b244ddffe55df7dfeb16467ccc76d9dd0946b4b9e38ffc0`  
		Last Modified: Thu, 23 Aug 2018 10:10:00 GMT  
		Size: 2.6 MB (2605191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e72428793986cf23dc9cfd40defa22679ad265d54672a42ae4410c012b72d`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54610337fe6e9e783b9ba6e42580abdbfabf9c8422cd0bba210e393ae8825fbf`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c07ca8e98ff81681a9f60ddfcc93eb06a33f6081062f4bc73be9a69e988a59cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4678981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f59200f75a3f345567c76346c21461ecb169f64c49b76766288155f0183f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:21:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:21:03 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:21:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:27:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:27:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:27:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:27:51 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:27:52 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:27:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b318ec7f27bf100f338fcd7f7e050d6bd9c6e4d861d121b8d9249d7bf1520f`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704781bd556bb27369b823b41f0fdf5000e5ae337df73a19252973558b8c795`  
		Last Modified: Thu, 23 Aug 2018 09:28:55 GMT  
		Size: 2.6 MB (2577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc571a9bc1c18022bc2c6ea5f8e4dfe7c3d04157f1c75a5f5c43d2de56ef8d1`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5152a22f2c440a1610b33f8f8d7cb85e647f5d6beb6a3e51b5af8c2a80d5d`  
		Last Modified: Thu, 23 Aug 2018 09:28:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:d7da5724b72caae6cfde23018d9d23c477d0a8f2d6237b7c66fd773487e15f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26586c6b712faee010fb3eee11b2cfdfcd7626de70d3583be21dd5c5581182a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:30:59 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:36:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:36:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:36:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:36:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:36:31 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:36:32 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:36:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f45a36bb569a3430eafa5c54141d4d51eeb51f81dec2512f5d6fccdc414a1b`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d7546630bb4ab5b97249be9e9685fcb5773477838f2ca31e86fa286f12845`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 2.8 MB (2779174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00cc784de6734b262391edb079da7c9d9a39d1fb793c73c8187f5edbd466b4`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec27ec1619c6a95a8d034af44e20aec19ec814701b163fb557a68d8504be1c81`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f04996be44ffcec70a703d04a347fc308c395c653bc2541578acd60bade8b44e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4840599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00169f53ece0b55ca6db8fd55717214c088e458fc7d99bf5f501051806d64f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 08:48:19 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 08:48:25 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 08:48:26 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:05:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:05:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:05:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:05:17 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:05:19 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:05:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857aa73f4ce6b5f4fa2c7d60202a68ed5ec32205649bb621749cf3a08ea202c2`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2605b69eb5af5b454b5c784ba95a7ed4cf7afe54f5f4d99433d4065ffba046d`  
		Last Modified: Thu, 23 Aug 2018 09:05:41 GMT  
		Size: 2.6 MB (2643887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35299b7b92ec28b1d9503d00b9d394768365c1d7a249ff13278f72c56775709`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3b343c04e2b61f9f6f9889a6deb9f7b8b6908c825378fa49b4f0c1dfa03829`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:afd2250b757d203c6afe1cd9e56b82cbe7d108b79daffb367784dd94399b9472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3385375c3ae340c9f317c42b6180e3f0d62bda6286b300bac21cccef7dc79963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:50:41 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:54:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:54:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:54:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:54:11 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:54:11 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:54:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cb4f044e152b5529d1c27c9d8268ede2d732fbfbde325f432c9067390a08fa`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4f259a3e6b41da999153cc8779b13eb7717e7fc54947664e617cf0c1daa3`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 2.6 MB (2634513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc6d3824ac6c44f9de8d0c103fcc572d4b7a582f966bb0d067ec3b632cf999a`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622fabb068153fd56f4b6a12fb8646ae4f50cde98673d4462c4fea50d6b8892a`  
		Last Modified: Wed, 12 Sep 2018 12:55:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:949dcc9ca9ab2c8e48a42f29990fb33f2a75ebe2d0310939a2c6451f3f5bd4b0
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
$ docker pull memcached@sha256:07997fce572e1d3a62864591e860ffd90b902dc6fa9f9e3a52b4ef5d87dd53bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4917782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f75902a23b82927267be20f5b85dbb506e21a28180c8400b109fa5b58e86ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:47:06 GMT
RUN adduser -D memcache
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Fri, 14 Sep 2018 19:25:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 14 Sep 2018 19:25:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Sep 2018 19:25:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Sep 2018 19:25:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Sep 2018 19:25:27 GMT
USER [memcache]
# Fri, 14 Sep 2018 19:25:27 GMT
EXPOSE 11211/tcp
# Fri, 14 Sep 2018 19:25:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db529ff9ba7e95622b5c777b3c5b8b36a83289608380e3499170cd2a9e12467`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032d0aca6e3e3dc8ab8d9ed168409df87c59ae4f4f264635a8ceb04620efda59`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 2.7 MB (2709199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f13599c5a59fe085a718026d99ebd829d4452bb81c80bcad2e2cf13ce469818`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa96593f29821aa5fb1cdd7738890016172eaf9ddf0e25ee133007538aaeac3`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c60a0ed78203346f727b7e2991243c7939b035f4918e6a1fa45369414abcf50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4753045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f1b1e945849d1482b10e2563420ecd5fd6a5f6fe9c15f09680d3a809d3d89c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:54:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:54:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:54:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 10:09:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 10:09:24 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 10:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 10:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 10:09:29 GMT
USER [memcache]
# Thu, 23 Aug 2018 10:09:30 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 10:09:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5621f1af26f1ffaa2863afff3cec1278b7708b65f42b17e641e81c62a7e81ed`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d99b1a61440f8678b244ddffe55df7dfeb16467ccc76d9dd0946b4b9e38ffc0`  
		Last Modified: Thu, 23 Aug 2018 10:10:00 GMT  
		Size: 2.6 MB (2605191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e72428793986cf23dc9cfd40defa22679ad265d54672a42ae4410c012b72d`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54610337fe6e9e783b9ba6e42580abdbfabf9c8422cd0bba210e393ae8825fbf`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c07ca8e98ff81681a9f60ddfcc93eb06a33f6081062f4bc73be9a69e988a59cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4678981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f59200f75a3f345567c76346c21461ecb169f64c49b76766288155f0183f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:21:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:21:03 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:21:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:27:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:27:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:27:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:27:51 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:27:52 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:27:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b318ec7f27bf100f338fcd7f7e050d6bd9c6e4d861d121b8d9249d7bf1520f`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704781bd556bb27369b823b41f0fdf5000e5ae337df73a19252973558b8c795`  
		Last Modified: Thu, 23 Aug 2018 09:28:55 GMT  
		Size: 2.6 MB (2577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc571a9bc1c18022bc2c6ea5f8e4dfe7c3d04157f1c75a5f5c43d2de56ef8d1`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5152a22f2c440a1610b33f8f8d7cb85e647f5d6beb6a3e51b5af8c2a80d5d`  
		Last Modified: Thu, 23 Aug 2018 09:28:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:d7da5724b72caae6cfde23018d9d23c477d0a8f2d6237b7c66fd773487e15f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26586c6b712faee010fb3eee11b2cfdfcd7626de70d3583be21dd5c5581182a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:30:59 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:36:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:36:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:36:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:36:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:36:31 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:36:32 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:36:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f45a36bb569a3430eafa5c54141d4d51eeb51f81dec2512f5d6fccdc414a1b`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d7546630bb4ab5b97249be9e9685fcb5773477838f2ca31e86fa286f12845`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 2.8 MB (2779174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00cc784de6734b262391edb079da7c9d9a39d1fb793c73c8187f5edbd466b4`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec27ec1619c6a95a8d034af44e20aec19ec814701b163fb557a68d8504be1c81`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f04996be44ffcec70a703d04a347fc308c395c653bc2541578acd60bade8b44e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4840599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00169f53ece0b55ca6db8fd55717214c088e458fc7d99bf5f501051806d64f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 08:48:19 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 08:48:25 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 08:48:26 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:05:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:05:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:05:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:05:17 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:05:19 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:05:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857aa73f4ce6b5f4fa2c7d60202a68ed5ec32205649bb621749cf3a08ea202c2`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2605b69eb5af5b454b5c784ba95a7ed4cf7afe54f5f4d99433d4065ffba046d`  
		Last Modified: Thu, 23 Aug 2018 09:05:41 GMT  
		Size: 2.6 MB (2643887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35299b7b92ec28b1d9503d00b9d394768365c1d7a249ff13278f72c56775709`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3b343c04e2b61f9f6f9889a6deb9f7b8b6908c825378fa49b4f0c1dfa03829`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:afd2250b757d203c6afe1cd9e56b82cbe7d108b79daffb367784dd94399b9472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3385375c3ae340c9f317c42b6180e3f0d62bda6286b300bac21cccef7dc79963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:50:41 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:54:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:54:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:54:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:54:11 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:54:11 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:54:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cb4f044e152b5529d1c27c9d8268ede2d732fbfbde325f432c9067390a08fa`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4f259a3e6b41da999153cc8779b13eb7717e7fc54947664e617cf0c1daa3`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 2.6 MB (2634513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc6d3824ac6c44f9de8d0c103fcc572d4b7a582f966bb0d067ec3b632cf999a`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622fabb068153fd56f4b6a12fb8646ae4f50cde98673d4462c4fea50d6b8892a`  
		Last Modified: Wed, 12 Sep 2018 12:55:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:949dcc9ca9ab2c8e48a42f29990fb33f2a75ebe2d0310939a2c6451f3f5bd4b0
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
$ docker pull memcached@sha256:07997fce572e1d3a62864591e860ffd90b902dc6fa9f9e3a52b4ef5d87dd53bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4917782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f75902a23b82927267be20f5b85dbb506e21a28180c8400b109fa5b58e86ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:47:06 GMT
RUN adduser -D memcache
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 11 Sep 2018 23:47:06 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Fri, 14 Sep 2018 19:25:26 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 14 Sep 2018 19:25:26 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 14 Sep 2018 19:25:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 14 Sep 2018 19:25:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Sep 2018 19:25:27 GMT
USER [memcache]
# Fri, 14 Sep 2018 19:25:27 GMT
EXPOSE 11211/tcp
# Fri, 14 Sep 2018 19:25:28 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db529ff9ba7e95622b5c777b3c5b8b36a83289608380e3499170cd2a9e12467`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032d0aca6e3e3dc8ab8d9ed168409df87c59ae4f4f264635a8ceb04620efda59`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 2.7 MB (2709199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f13599c5a59fe085a718026d99ebd829d4452bb81c80bcad2e2cf13ce469818`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa96593f29821aa5fb1cdd7738890016172eaf9ddf0e25ee133007538aaeac3`  
		Last Modified: Fri, 14 Sep 2018 19:25:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c60a0ed78203346f727b7e2991243c7939b035f4918e6a1fa45369414abcf50e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4753045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f1b1e945849d1482b10e2563420ecd5fd6a5f6fe9c15f09680d3a809d3d89c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:54:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:54:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:54:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 10:09:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 10:09:24 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 10:09:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 10:09:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 10:09:29 GMT
USER [memcache]
# Thu, 23 Aug 2018 10:09:30 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 10:09:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5621f1af26f1ffaa2863afff3cec1278b7708b65f42b17e641e81c62a7e81ed`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d99b1a61440f8678b244ddffe55df7dfeb16467ccc76d9dd0946b4b9e38ffc0`  
		Last Modified: Thu, 23 Aug 2018 10:10:00 GMT  
		Size: 2.6 MB (2605191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e72428793986cf23dc9cfd40defa22679ad265d54672a42ae4410c012b72d`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54610337fe6e9e783b9ba6e42580abdbfabf9c8422cd0bba210e393ae8825fbf`  
		Last Modified: Thu, 23 Aug 2018 10:09:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c07ca8e98ff81681a9f60ddfcc93eb06a33f6081062f4bc73be9a69e988a59cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4678981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85f59200f75a3f345567c76346c21461ecb169f64c49b76766288155f0183f56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 09:21:03 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 09:21:03 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 09:21:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:27:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:27:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:27:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:27:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:27:51 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:27:52 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:27:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b318ec7f27bf100f338fcd7f7e050d6bd9c6e4d861d121b8d9249d7bf1520f`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9704781bd556bb27369b823b41f0fdf5000e5ae337df73a19252973558b8c795`  
		Last Modified: Thu, 23 Aug 2018 09:28:55 GMT  
		Size: 2.6 MB (2577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc571a9bc1c18022bc2c6ea5f8e4dfe7c3d04157f1c75a5f5c43d2de56ef8d1`  
		Last Modified: Thu, 23 Aug 2018 09:28:53 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef5152a22f2c440a1610b33f8f8d7cb85e647f5d6beb6a3e51b5af8c2a80d5d`  
		Last Modified: Thu, 23 Aug 2018 09:28:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:d7da5724b72caae6cfde23018d9d23c477d0a8f2d6237b7c66fd773487e15f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26586c6b712faee010fb3eee11b2cfdfcd7626de70d3583be21dd5c5581182a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:30:59 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:31:00 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:36:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:36:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:36:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:36:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:36:31 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:36:32 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:36:32 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f45a36bb569a3430eafa5c54141d4d51eeb51f81dec2512f5d6fccdc414a1b`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d7546630bb4ab5b97249be9e9685fcb5773477838f2ca31e86fa286f12845`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 2.8 MB (2779174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a00cc784de6734b262391edb079da7c9d9a39d1fb793c73c8187f5edbd466b4`  
		Last Modified: Wed, 12 Sep 2018 12:36:55 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec27ec1619c6a95a8d034af44e20aec19ec814701b163fb557a68d8504be1c81`  
		Last Modified: Wed, 12 Sep 2018 12:36:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f04996be44ffcec70a703d04a347fc308c395c653bc2541578acd60bade8b44e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4840599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00169f53ece0b55ca6db8fd55717214c088e458fc7d99bf5f501051806d64f5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Aug 2018 08:48:19 GMT
RUN adduser -D memcache
# Thu, 23 Aug 2018 08:48:25 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 23 Aug 2018 08:48:26 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 23 Aug 2018 09:05:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Thu, 23 Aug 2018 09:05:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 23 Aug 2018 09:05:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 23 Aug 2018 09:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 09:05:17 GMT
USER [memcache]
# Thu, 23 Aug 2018 09:05:19 GMT
EXPOSE 11211/tcp
# Thu, 23 Aug 2018 09:05:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857aa73f4ce6b5f4fa2c7d60202a68ed5ec32205649bb621749cf3a08ea202c2`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2605b69eb5af5b454b5c784ba95a7ed4cf7afe54f5f4d99433d4065ffba046d`  
		Last Modified: Thu, 23 Aug 2018 09:05:41 GMT  
		Size: 2.6 MB (2643887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35299b7b92ec28b1d9503d00b9d394768365c1d7a249ff13278f72c56775709`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3b343c04e2b61f9f6f9889a6deb9f7b8b6908c825378fa49b4f0c1dfa03829`  
		Last Modified: Thu, 23 Aug 2018 09:05:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:afd2250b757d203c6afe1cd9e56b82cbe7d108b79daffb367784dd94399b9472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4944087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3385375c3ae340c9f317c42b6180e3f0d62bda6286b300bac21cccef7dc79963`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:50:41 GMT
RUN adduser -D memcache
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 12 Sep 2018 12:50:41 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:54:09 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 12 Sep 2018 12:54:10 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:54:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:54:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:54:11 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:54:11 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:54:11 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cb4f044e152b5529d1c27c9d8268ede2d732fbfbde325f432c9067390a08fa`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4f259a3e6b41da999153cc8779b13eb7717e7fc54947664e617cf0c1daa3`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 2.6 MB (2634513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc6d3824ac6c44f9de8d0c103fcc572d4b7a582f966bb0d067ec3b632cf999a`  
		Last Modified: Wed, 12 Sep 2018 12:55:01 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622fabb068153fd56f4b6a12fb8646ae4f50cde98673d4462c4fea50d6b8892a`  
		Last Modified: Wed, 12 Sep 2018 12:55:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:085172d507040957a40fef21eea13b27a889e174c16c6c3866287a6506325e85
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
$ docker pull memcached@sha256:ed5c7eb56d3a07258e5ccde4b038a4838149abe094e164859cd188af45c69add
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80256dbd25aedb4c025d495f18e0e513dd011005726326f529c296e4141811f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:49:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 00:49:35 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 01:06:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 01:06:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 01:06:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 01:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 01:06:52 GMT
USER [memcache]
# Wed, 05 Sep 2018 01:06:52 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 01:06:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698f430e8ad4115926112ea0cecbf658e5b7265f24e118f8c6345c74c2a4ea3b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272528d1fa0a6fb7863a0f01392e42ec4016495b6ed00eb79c4b73d9551acef8`  
		Last Modified: Wed, 05 Sep 2018 01:18:36 GMT  
		Size: 1.0 MB (1043297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401e58421154d8f87fc0ca05d212a6425195da962296737a1c38ac47a13ba28b`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09b8be91dca65762b939f5724dfb7d4dc13dad788d2bcf35247cf78ea48cf71`  
		Last Modified: Wed, 05 Sep 2018 01:18:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:41fd0d2eccbd58962e4cd659378f9747ccc08892c73a85e6853cc862a985ce9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a178eae5cdcceaae5804062241229dfb016bd2201a565970da21e7da8f244b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 15:13:03 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 15:13:04 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 16:05:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 16:05:18 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 16:05:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 16:05:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 16:05:24 GMT
USER [memcache]
# Thu, 06 Sep 2018 16:05:25 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 16:05:25 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805b05dc6ff760fd10d165e30971fabd5fb559ceab540e5484f300f93b06f1f`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b9df3896e21d6b6cd92804ee6d740b0de5f3e94f76e00321e40a7757816c2`  
		Last Modified: Thu, 06 Sep 2018 16:06:11 GMT  
		Size: 1.0 MB (1023669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b147ae8732ea6b4e7107762c9df5fae6aa737e047bfa0ab95fd4d2b4bec4d19b`  
		Last Modified: Thu, 06 Sep 2018 16:05:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f8cc1bf91d20bccd56a68dd5e850f54b4603ced8b8994e6cc3079b905b9f08`  
		Last Modified: Thu, 06 Sep 2018 16:05:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:2f3b88111ca760d8c3c7db0ff851da6372dbcfdfd16d2461a41b4387b277cd86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20263130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fa682d19f9f28393190a2ad3932f522b93a3a328ab29cf8ed30065a078e21d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 16:10:08 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Thu, 06 Sep 2018 16:10:08 GMT
ENV MEMCACHED_VERSION=1.5.10
# Thu, 06 Sep 2018 16:10:09 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Thu, 06 Sep 2018 17:00:05 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 06 Sep 2018 17:00:06 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Thu, 06 Sep 2018 17:00:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 06 Sep 2018 17:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 17:00:12 GMT
USER [memcache]
# Thu, 06 Sep 2018 17:00:13 GMT
EXPOSE 11211/tcp
# Thu, 06 Sep 2018 17:00:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e856f19e355683001022e5596353c239ac8ab399954e63bede4937d8e97b92e1`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea36e26168e4dafb7c443734a04bea796280c8da0dabcf0e00ca640b37e546b3`  
		Last Modified: Thu, 06 Sep 2018 17:00:40 GMT  
		Size: 990.8 KB (990808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf91c3950569062e00e2fb78ad171ae65bda5b0b3f29d43330938edf1a9117a`  
		Last Modified: Thu, 06 Sep 2018 17:00:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5448c53134b6d711c22ababf034d6a4b1538667a43321b86022dce5951abd7d6`  
		Last Modified: Thu, 06 Sep 2018 17:00:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f2ad028c4dd5f90f16a900aa183e123fa2c99544d21ab170c798d899b05fb254
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732747f5db55b53fca26f45453e9a41e1125529188229076d4d444b66170ae6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:53:55 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 10:53:56 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:01:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:01:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:01:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:01:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:01:13 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:01:13 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:01:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de48c01a00c2adabcf643f949aaa8e45937ddb2abc9b6c3a4e94b389c95de846`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0a8bccb3797a7fc4a6afd2d270615aaf7eef11b01d8c77b76240f58ce3edc9`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 1.0 MB (1004963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c38556bf533c1d0b9e83ccffeb4090b1d6ca41d88d8782ca7bfff7c8a1016d`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c683bc544605de31addcd4984ce015ec6cf3f5217b0dc3276f8ef62d85d3b048`  
		Last Modified: Wed, 05 Sep 2018 11:02:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:9a91b4bd59b1ba6fdb4b0956ddcb3a446a6c26542d420c06c6a28f22a24a15f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79bebb7af398a58505cf2ff89c570ac795ac2ebde5bba783b3cddfb4aaae29f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:32:22 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 11:32:22 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 11:40:54 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 11:40:54 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 11:40:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:56 GMT
USER [memcache]
# Wed, 05 Sep 2018 11:40:56 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 11:40:56 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749c5e4cc5811a9882a88dac54764f3be31990898bc16289fd505e99a4c5926c`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b1441097eff8f0e1a6466340e22d9e4fecd36934e834052ad5397a1a384660`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 1.1 MB (1051719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861ec4c0af3c876996a3be057c9ab0d6b8d407d17b68f1649b3d2e79e5b53c4c`  
		Last Modified: Wed, 05 Sep 2018 11:56:14 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9738641b7149872f661318d6cd93b49aa0f51b319715792794da72924144ff3`  
		Last Modified: Wed, 05 Sep 2018 11:56:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:58855b10209aaac7c51cef25461768287fa9386e454852f45a146c33d7a9847f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23778845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29640bbeaaf213c79ebe281eae2ed69769d0d848d00ad119c40b1427dbed7942`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:21:13 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 09:21:14 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 09:21:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 05 Sep 2018 09:27:58 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 05 Sep 2018 09:28:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 05 Sep 2018 09:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 09:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 09:28:05 GMT
USER [memcache]
# Wed, 05 Sep 2018 09:28:06 GMT
EXPOSE 11211/tcp
# Wed, 05 Sep 2018 09:28:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d920fb26fe2cc11e791cb608bc1c1fdcf00d19268fb48f8feb3bf91dc601989`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497b716b833146a0f53e1581aa31a4ac48103abf32159b421ea6e528e802d9a4`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 1.0 MB (1036153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1897d3f77fd8d9783769dcd5e8fe1b3493162c4739b705fe79292e8f45c5ff7f`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a8a0ac2ad5f4cbbdfa08135a0f6424781416cee5d59b40a3c917091607339c`  
		Last Modified: Wed, 05 Sep 2018 09:28:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:12564a6d5545fe524d4846726f4b8bb8cd2e3bfb62df794e6b282c024d5796d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23337050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0224dc1b8f95f4c11f8aa18c7b55777746c48dca8520fd1005a00f997af98b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:45:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 05 Sep 2018 14:45:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 05 Sep 2018 14:45:46 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 12 Sep 2018 12:50:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 12 Sep 2018 12:50:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:50:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 12 Sep 2018 12:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:50:18 GMT
USER [memcache]
# Wed, 12 Sep 2018 12:50:18 GMT
EXPOSE 11211/tcp
# Wed, 12 Sep 2018 12:50:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fec7374cc65273301314e9ba8b0dd418b0f3b06ba94738cd1809f77d787456`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2a46c2e9759db7bc9e6eadf118ba3f3d0f9f605fabc7b633663bc65c809d18`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 1000.3 KB (1000275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f940c869aee8ab761fe9af3e0226c9decf07cc0f7e74b32a68569055c832edd`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa690a2bf14a089133eb7aa585af1df91e9bd05ec17cb68c071bb0e9138180`  
		Last Modified: Wed, 12 Sep 2018 12:54:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

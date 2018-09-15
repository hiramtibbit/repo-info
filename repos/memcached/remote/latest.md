## `memcached:latest`

```console
$ docker pull memcached@sha256:e0fcf5007668c343cd3a8b3811c9f763f8c5b2e2aff4fdb4cb37d5dbb22532e1
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
$ docker pull memcached@sha256:7c04000961d15b16c590b7e1201e8e9270a9f9fdacb52448fe11cbf6112ac402
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23534689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf7d35db978ba7c579dde52daa3aafec3c62dc1b690b86395ff78bb28e13594`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 01:19:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 15 Sep 2018 01:19:45 GMT
ENV MEMCACHED_VERSION=1.5.10
# Sat, 15 Sep 2018 01:19:45 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Sat, 15 Sep 2018 01:37:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 15 Sep 2018 01:37:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 15 Sep 2018 01:37:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 15 Sep 2018 01:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 01:37:45 GMT
USER [memcache]
# Sat, 15 Sep 2018 01:37:45 GMT
EXPOSE 11211/tcp
# Sat, 15 Sep 2018 01:37:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2a3b65ab3eaab083b35cc937efa8275dbc61b449cf465cbebde410f4fe15ce`  
		Last Modified: Sat, 15 Sep 2018 01:44:23 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aabec43e3032a8fb450bced8f9746e892b9fd1a34a0ae43131aec1589ab188e`  
		Last Modified: Sat, 15 Sep 2018 01:44:23 GMT  
		Size: 1.0 MB (1043318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39801104ae6b690bbca6dccbad30e4c9c621c8c2c72c2f2943f4be21e47dadac`  
		Last Modified: Sat, 15 Sep 2018 01:44:23 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8dbc400b1e6d056e8aa8f33d3ca0a6efc92c22892c3391c533f6d6f8950ab3c`  
		Last Modified: Sat, 15 Sep 2018 01:44:23 GMT  
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

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.14`](#memcached1514)
-	[`memcached:1.5.14-alpine`](#memcached1514-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:c75a2da48d726f986aa4412086077bee35648cd5950cdbb851fe470be3186310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:d1c69148784984ffa3ff21b8d862b553f22393626756eec7e0f1e95899dedbf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23551248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1941054e2bdf8237746efc231c9bfbd9fcd01d8febef03164556e4251afc8647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:33:47 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 29 Apr 2019 17:33:47 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:33:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:33:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:33:48 GMT
USER memcache
# Mon, 29 Apr 2019 17:33:48 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:33:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac80ecde7abfc38c632d5928b8203fa9c6e1e7362bfb06624fe3f0d9da6f12`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 1.0 MB (1049801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb670b42f9ad06312f1cbfa83e9e7043f75c85147efd8db97f6d366764ecff3`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a85dcc65cb38c1398d35e1495dc6d52914f0c6b195e3fc2e86ab9a22153e9c`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7e6c1b14d4d2824f10c888129f7a99ffe1b3d8bd92e8a8ecc98e9f62f9617c0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21353526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d8b151068da4cc38669692c3da545ef33d7c09992f76d6780b2e76015919ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:45:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:45:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:45:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:52:46 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:52:46 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:52:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:52:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:52:50 GMT
USER memcache
# Tue, 30 Apr 2019 08:52:51 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:52:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe12fbc28cc26407d26b2a2c371903185ca3a75a8f4c6d2b2daa309aa6e6c4f`  
		Last Modified: Wed, 27 Mar 2019 11:55:46 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3907042047cc743318aaf7e604b76240af16564141df64ebc03f6acc9905fd5a`  
		Last Modified: Tue, 30 Apr 2019 09:06:38 GMT  
		Size: 1.0 MB (1007901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ed205e9a75ca42c139c092f2e86759c9f5f9453a1d89c04621378a577ad7a1`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853b3d41d13f76c0ce1bb206780520926c06e082df0dba3074ae8c20c6e9596e`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:822440108736ebf54a5a98406a8e5b169d2c9df36cfee89fc41b2bdb7818c8d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23799102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38c1c5fb965fe51926728cb1bfcdf85d647a6c25bb3f7494a8ccd507b3dc296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:39 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:31:13 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:31:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:39:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:39:41 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:39:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:39:53 GMT
USER memcache
# Tue, 30 Apr 2019 08:39:56 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:40:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f195d6040d0c34bf5f6b7d784453a9264b29da3dce86f1fe77ee70100baedca`  
		Last Modified: Wed, 27 Mar 2019 10:54:24 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15342c0b7e92d493d32822962bb1e55a30e1a8a8bde83f01b06ef882d5d34ad2`  
		Last Modified: Tue, 30 Apr 2019 08:47:04 GMT  
		Size: 1.0 MB (1042310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b3ac37339064b9c3b1c2248495e22f646e2ab8819fc6d98dd31552a84cf58`  
		Last Modified: Tue, 30 Apr 2019 08:47:03 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deac783246fec1eea6a494b8093e46d5949223dd2fe7fb86ded271dbb521982`  
		Last Modified: Tue, 30 Apr 2019 08:47:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:c75a2da48d726f986aa4412086077bee35648cd5950cdbb851fe470be3186310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:d1c69148784984ffa3ff21b8d862b553f22393626756eec7e0f1e95899dedbf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23551248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1941054e2bdf8237746efc231c9bfbd9fcd01d8febef03164556e4251afc8647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:33:47 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 29 Apr 2019 17:33:47 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:33:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:33:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:33:48 GMT
USER memcache
# Mon, 29 Apr 2019 17:33:48 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:33:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac80ecde7abfc38c632d5928b8203fa9c6e1e7362bfb06624fe3f0d9da6f12`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 1.0 MB (1049801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb670b42f9ad06312f1cbfa83e9e7043f75c85147efd8db97f6d366764ecff3`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a85dcc65cb38c1398d35e1495dc6d52914f0c6b195e3fc2e86ab9a22153e9c`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7e6c1b14d4d2824f10c888129f7a99ffe1b3d8bd92e8a8ecc98e9f62f9617c0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21353526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d8b151068da4cc38669692c3da545ef33d7c09992f76d6780b2e76015919ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:45:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:45:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:45:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:52:46 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:52:46 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:52:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:52:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:52:50 GMT
USER memcache
# Tue, 30 Apr 2019 08:52:51 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:52:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe12fbc28cc26407d26b2a2c371903185ca3a75a8f4c6d2b2daa309aa6e6c4f`  
		Last Modified: Wed, 27 Mar 2019 11:55:46 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3907042047cc743318aaf7e604b76240af16564141df64ebc03f6acc9905fd5a`  
		Last Modified: Tue, 30 Apr 2019 09:06:38 GMT  
		Size: 1.0 MB (1007901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ed205e9a75ca42c139c092f2e86759c9f5f9453a1d89c04621378a577ad7a1`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853b3d41d13f76c0ce1bb206780520926c06e082df0dba3074ae8c20c6e9596e`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:822440108736ebf54a5a98406a8e5b169d2c9df36cfee89fc41b2bdb7818c8d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23799102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38c1c5fb965fe51926728cb1bfcdf85d647a6c25bb3f7494a8ccd507b3dc296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:39 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:31:13 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:31:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:39:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:39:41 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:39:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:39:53 GMT
USER memcache
# Tue, 30 Apr 2019 08:39:56 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:40:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f195d6040d0c34bf5f6b7d784453a9264b29da3dce86f1fe77ee70100baedca`  
		Last Modified: Wed, 27 Mar 2019 10:54:24 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15342c0b7e92d493d32822962bb1e55a30e1a8a8bde83f01b06ef882d5d34ad2`  
		Last Modified: Tue, 30 Apr 2019 08:47:04 GMT  
		Size: 1.0 MB (1042310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b3ac37339064b9c3b1c2248495e22f646e2ab8819fc6d98dd31552a84cf58`  
		Last Modified: Tue, 30 Apr 2019 08:47:03 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deac783246fec1eea6a494b8093e46d5949223dd2fe7fb86ded271dbb521982`  
		Last Modified: Tue, 30 Apr 2019 08:47:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.14`

```console
$ docker pull memcached@sha256:c75a2da48d726f986aa4412086077bee35648cd5950cdbb851fe470be3186310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5.14` - linux; amd64

```console
$ docker pull memcached@sha256:d1c69148784984ffa3ff21b8d862b553f22393626756eec7e0f1e95899dedbf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23551248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1941054e2bdf8237746efc231c9bfbd9fcd01d8febef03164556e4251afc8647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:33:47 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 29 Apr 2019 17:33:47 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:33:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:33:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:33:48 GMT
USER memcache
# Mon, 29 Apr 2019 17:33:48 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:33:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac80ecde7abfc38c632d5928b8203fa9c6e1e7362bfb06624fe3f0d9da6f12`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 1.0 MB (1049801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb670b42f9ad06312f1cbfa83e9e7043f75c85147efd8db97f6d366764ecff3`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a85dcc65cb38c1398d35e1495dc6d52914f0c6b195e3fc2e86ab9a22153e9c`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7e6c1b14d4d2824f10c888129f7a99ffe1b3d8bd92e8a8ecc98e9f62f9617c0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21353526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d8b151068da4cc38669692c3da545ef33d7c09992f76d6780b2e76015919ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:45:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:45:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:45:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:52:46 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:52:46 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:52:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:52:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:52:50 GMT
USER memcache
# Tue, 30 Apr 2019 08:52:51 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:52:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe12fbc28cc26407d26b2a2c371903185ca3a75a8f4c6d2b2daa309aa6e6c4f`  
		Last Modified: Wed, 27 Mar 2019 11:55:46 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3907042047cc743318aaf7e604b76240af16564141df64ebc03f6acc9905fd5a`  
		Last Modified: Tue, 30 Apr 2019 09:06:38 GMT  
		Size: 1.0 MB (1007901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ed205e9a75ca42c139c092f2e86759c9f5f9453a1d89c04621378a577ad7a1`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853b3d41d13f76c0ce1bb206780520926c06e082df0dba3074ae8c20c6e9596e`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14` - linux; ppc64le

```console
$ docker pull memcached@sha256:822440108736ebf54a5a98406a8e5b169d2c9df36cfee89fc41b2bdb7818c8d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23799102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38c1c5fb965fe51926728cb1bfcdf85d647a6c25bb3f7494a8ccd507b3dc296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:39 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:31:13 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:31:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:39:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:39:41 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:39:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:39:53 GMT
USER memcache
# Tue, 30 Apr 2019 08:39:56 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:40:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f195d6040d0c34bf5f6b7d784453a9264b29da3dce86f1fe77ee70100baedca`  
		Last Modified: Wed, 27 Mar 2019 10:54:24 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15342c0b7e92d493d32822962bb1e55a30e1a8a8bde83f01b06ef882d5d34ad2`  
		Last Modified: Tue, 30 Apr 2019 08:47:04 GMT  
		Size: 1.0 MB (1042310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b3ac37339064b9c3b1c2248495e22f646e2ab8819fc6d98dd31552a84cf58`  
		Last Modified: Tue, 30 Apr 2019 08:47:03 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deac783246fec1eea6a494b8093e46d5949223dd2fe7fb86ded271dbb521982`  
		Last Modified: Tue, 30 Apr 2019 08:47:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.14-alpine`

```console
$ docker pull memcached@sha256:6f948b6c3d2486fb4a7dceb566d5c82281d4ad4c0934ec335f9b50915eb0ebc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5.14-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.14-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:6f948b6c3d2486fb4a7dceb566d5c82281d4ad4c0934ec335f9b50915eb0ebc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:6f948b6c3d2486fb4a7dceb566d5c82281d4ad4c0934ec335f9b50915eb0ebc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:6f948b6c3d2486fb4a7dceb566d5c82281d4ad4c0934ec335f9b50915eb0ebc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:390f13d8a7320bcb6edd1f08caa7378e04cf029ee3312bb6b84a633cf9e77a60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5535472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46e69c5985d83b36d1c6869b63a1dac1aea9ad3abf35f21352f4ca10abf4e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 00:55:43 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:33:55 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:39:30 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 29 Apr 2019 17:39:30 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:39:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:39:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:39:31 GMT
USER memcache
# Mon, 29 Apr 2019 17:39:31 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:39:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12051f92ab0523d44d3598ff191584df468ea31f3fe2def0a1c58b2e7d62b02c`  
		Last Modified: Wed, 10 Apr 2019 01:02:24 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae637e0cea9c531ef968ad81dc6ed09aadd7a59ffa7df66ca656527cef0af7`  
		Last Modified: Mon, 29 Apr 2019 17:39:52 GMT  
		Size: 2.8 MB (2776802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6471f3bd9d8a0fe53141581c6be88d8472125701a1a7b4ee0e20ed02216eae2e`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22699414d3a444b57a0865e7293c3aa4c81b9b6c9afa02a4290d0c9403856d83`  
		Last Modified: Mon, 29 Apr 2019 17:39:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:5ea02664d604a14b7620a729cecb398c4b9ac4c35565660109402ccc5a8fd5f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5221211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abaa74c757022ea2d56523c0977e217563e0de555166f237206929f2f426847`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:09:13 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 07:50:50 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 07:56:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 07:56:58 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 07:56:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:57:00 GMT
USER memcache
# Tue, 30 Apr 2019 07:57:00 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 07:57:01 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77c2ea711d1b9c8fd752a8e48e450f2e21bb8a9a5acb824e170517b8055be37`  
		Last Modified: Wed, 10 Apr 2019 08:15:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9439ac92c1b1a25822057746f44dd8e49d1eb8c975d8463e646e6e581b1a663`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 2.7 MB (2676081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ba13fb4d649d00cb38e596fcdd2575fb3d0e7c25a82545d517b6d855397b0`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd1062037d39236b15eb130443607b4a0c1278e6c516ba53b394122d3a5753c`  
		Last Modified: Tue, 30 Apr 2019 07:57:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:90510a0531be9dd88e5d068fc9fdfb3170fa98e2a14e3ea00688fbb28cadd81a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9ba5c7a52c624cb1ea522060805ed22d8be034d22f7fb15633e236682d76da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:06:36 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:53:04 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:53:05 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 09:06:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 09:06:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 09:06:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 09:06:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:06:16 GMT
USER memcache
# Tue, 30 Apr 2019 09:06:18 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 09:06:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0103bf96dd91c6a0d24d67deeb9b0c0f9a2a7d062b94d8fec14c5c64b955b9`  
		Last Modified: Wed, 10 Apr 2019 10:13:44 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89595fb4030f2d717e89c344bcd0de97e4f26401ac4a9e7966d571da659bca36`  
		Last Modified: Tue, 30 Apr 2019 09:06:50 GMT  
		Size: 2.8 MB (2754707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c71dbdb6bdbe3ce8c2ed57ae9f710e9304b755e3a1b543086733cb0a23be52b`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30c45faef31cfc457559d72599e8805d0394f5b2808518174dbce394d310b55`  
		Last Modified: Tue, 30 Apr 2019 09:06:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:b70bc0a1585897e41e1ddf858c244cdb6b195306acca7af03e1d426d4dd5c42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5600523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630e6e0ff44f673638af1d2667423a90c78b90bc3b7c242763a4dacac26bc5fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:20:21 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Tue, 30 Apr 2019 08:40:06 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:40:09 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:46:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		linux-headers 		make 		openssl 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 30 Apr 2019 08:46:14 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:46:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:46:34 GMT
USER memcache
# Tue, 30 Apr 2019 08:46:37 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:46:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9777ddbf25f844454b4a485408a3d64277684e92bc3b172438f537581b8aae`  
		Last Modified: Wed, 10 Apr 2019 09:27:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03877311416fd12eaeb73b93bf2db88dfe7ccff75b7b93d7f03b8ec9d58a3d6f`  
		Last Modified: Tue, 30 Apr 2019 08:47:22 GMT  
		Size: 2.8 MB (2817810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a238a947c5276739e35471dc11e0091d28f1cf552fcecef3ecf53f73dab1b1eb`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d38ff1a3c7b869a560fc974365bca4b083600faa1887d8cd0b0ef99dffc06ff`  
		Last Modified: Tue, 30 Apr 2019 08:47:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:c75a2da48d726f986aa4412086077bee35648cd5950cdbb851fe470be3186310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:d1c69148784984ffa3ff21b8d862b553f22393626756eec7e0f1e95899dedbf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23551248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1941054e2bdf8237746efc231c9bfbd9fcd01d8febef03164556e4251afc8647`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:47:51 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_VERSION=1.5.14
# Mon, 29 Apr 2019 17:22:25 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Mon, 29 Apr 2019 17:33:47 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 29 Apr 2019 17:33:47 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 29 Apr 2019 17:33:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 29 Apr 2019 17:33:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:33:48 GMT
USER memcache
# Mon, 29 Apr 2019 17:33:48 GMT
EXPOSE 11211
# Mon, 29 Apr 2019 17:33:49 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249e7cd3e34c8e526cd77a20619a8498af4985656be7670a0584db86f092d808`  
		Last Modified: Tue, 26 Mar 2019 23:54:01 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac80ecde7abfc38c632d5928b8203fa9c6e1e7362bfb06624fe3f0d9da6f12`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 1.0 MB (1049801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb670b42f9ad06312f1cbfa83e9e7043f75c85147efd8db97f6d366764ecff3`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a85dcc65cb38c1398d35e1495dc6d52914f0c6b195e3fc2e86ab9a22153e9c`  
		Last Modified: Mon, 29 Apr 2019 17:39:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:7e6c1b14d4d2824f10c888129f7a99ffe1b3d8bd92e8a8ecc98e9f62f9617c0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21353526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d8b151068da4cc38669692c3da545ef33d7c09992f76d6780b2e76015919ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:45:21 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:45:10 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:45:11 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:52:46 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:52:46 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:52:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:52:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:52:50 GMT
USER memcache
# Tue, 30 Apr 2019 08:52:51 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:52:52 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe12fbc28cc26407d26b2a2c371903185ca3a75a8f4c6d2b2daa309aa6e6c4f`  
		Last Modified: Wed, 27 Mar 2019 11:55:46 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3907042047cc743318aaf7e604b76240af16564141df64ebc03f6acc9905fd5a`  
		Last Modified: Tue, 30 Apr 2019 09:06:38 GMT  
		Size: 1.0 MB (1007901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ed205e9a75ca42c139c092f2e86759c9f5f9453a1d89c04621378a577ad7a1`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853b3d41d13f76c0ce1bb206780520926c06e082df0dba3074ae8c20c6e9596e`  
		Last Modified: Tue, 30 Apr 2019 09:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:822440108736ebf54a5a98406a8e5b169d2c9df36cfee89fc41b2bdb7818c8d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23799102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38c1c5fb965fe51926728cb1bfcdf85d647a6c25bb3f7494a8ccd507b3dc296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:44:39 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Tue, 30 Apr 2019 08:31:13 GMT
ENV MEMCACHED_VERSION=1.5.14
# Tue, 30 Apr 2019 08:31:16 GMT
ENV MEMCACHED_SHA1=94592688ae685caf53ab90a821c99f1503bb1018
# Tue, 30 Apr 2019 08:39:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 30 Apr 2019 08:39:41 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Tue, 30 Apr 2019 08:39:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 30 Apr 2019 08:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 08:39:53 GMT
USER memcache
# Tue, 30 Apr 2019 08:39:56 GMT
EXPOSE 11211
# Tue, 30 Apr 2019 08:40:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f195d6040d0c34bf5f6b7d784453a9264b29da3dce86f1fe77ee70100baedca`  
		Last Modified: Wed, 27 Mar 2019 10:54:24 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15342c0b7e92d493d32822962bb1e55a30e1a8a8bde83f01b06ef882d5d34ad2`  
		Last Modified: Tue, 30 Apr 2019 08:47:04 GMT  
		Size: 1.0 MB (1042310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560b3ac37339064b9c3b1c2248495e22f646e2ab8819fc6d98dd31552a84cf58`  
		Last Modified: Tue, 30 Apr 2019 08:47:03 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deac783246fec1eea6a494b8093e46d5949223dd2fe7fb86ded271dbb521982`  
		Last Modified: Tue, 30 Apr 2019 08:47:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.9`](#memcached159)
-	[`memcached:1.5.9-alpine`](#memcached159-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:389c8c847323b55153e9637c1cbcc86d833bfcd09d71abe8cda1b85daeb774b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:25751a96282c6869de32382ea5c779f5a102b9a824a81deb1b5e2933c11adf3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23538082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccaa2dc524e8171f3e6d87b70aeb5ce99f849b676aa2c4f6ad42a999e664fea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:25:32 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 00:25:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:25:33 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:25:34 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:25:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ac6930f3874ae530822bcae6ec76557d858a0fa59fe8343af7807b6d78f315`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 1.0 MB (1038948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24b9cf620f3f80672b4bc16429c958c7dde0ddf1dff92037c4369beea8ff255`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed1bee6d17e3bffa7e1e0420656249c0940842ceb617658a10f79c9c12ba5e`  
		Last Modified: Tue, 10 Jul 2018 00:31:50 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:96d7c960c1ee450d46514a77603a25854551299b4a30364a481a556c6db9a20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21350325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d33ada9252f4bfd4143dc09ef73a36aa235ef89a069e2c493363d6a46c9d80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 08:45:59 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:46:00 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 08:53:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 08:53:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 08:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 08:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 08:53:49 GMT
USER [memcache]
# Tue, 10 Jul 2018 08:53:50 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 08:53:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6088fcdbac69421129d7cf910a2bd55922555af9d52054e3584a56f848123427`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 1000.1 KB (1000079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d576ac2014ae62ee3e9cc5fce7796caab1d2a6a7418ef9cc5abc869124b156`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb5d3446c9395e2d86977d2717d95636e3d31fa4846870e6a117e6c7d913ab2`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:46bb839e6a587d2a04493a6a8930e0feeeb3649b2e64359074034ebaa4f0bd4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24189840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4a219e7684bad542b23ef758f6488ec70cb8b4ea138b40f34d847fcef68bd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:45:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 10:45:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:45:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:45:03 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:45:03 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:45:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddc0c777b07194efa580374545ecd7174d417b25c2568f6a55b96a167b006b9`  
		Last Modified: Tue, 10 Jul 2018 10:51:19 GMT  
		Size: 1.0 MB (1047586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea23b6601a9f7fa079b79d929eb2e5034c1124242b02ec0a9dfe4f445be0b7a`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a67e01e5187bc19e1b06614dc1691a9c73c72152bda5e75ad5f62cc2fd81d2`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:a1c1375bf513bce7a69d5f7cfdd8595469789925c0c1a059900d8fbb6477577e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23352435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d3604b39a09d1a9f61722c04c0ebd2124c5ac72449db25ea60ed9580a4b07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 11:44:36 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:44:37 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:48:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 11:48:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:48:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:48:05 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:48:05 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:48:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9e5f9e30ec87401be3967df33010c6f34a7c38b7e6ed66cade8927b1e831e`  
		Last Modified: Tue, 10 Jul 2018 11:58:53 GMT  
		Size: 1000.4 KB (1000403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ea74551dbc1f7b8273dfd771db1c09dd6699de4cd8f5da243074441a88da75`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c580a52dfaa394fa1190615e3cbc79a00353dcbe25925184d4c5c5b7a7fee6`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:389c8c847323b55153e9637c1cbcc86d833bfcd09d71abe8cda1b85daeb774b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:25751a96282c6869de32382ea5c779f5a102b9a824a81deb1b5e2933c11adf3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23538082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccaa2dc524e8171f3e6d87b70aeb5ce99f849b676aa2c4f6ad42a999e664fea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:25:32 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 00:25:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:25:33 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:25:34 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:25:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ac6930f3874ae530822bcae6ec76557d858a0fa59fe8343af7807b6d78f315`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 1.0 MB (1038948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24b9cf620f3f80672b4bc16429c958c7dde0ddf1dff92037c4369beea8ff255`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed1bee6d17e3bffa7e1e0420656249c0940842ceb617658a10f79c9c12ba5e`  
		Last Modified: Tue, 10 Jul 2018 00:31:50 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:96d7c960c1ee450d46514a77603a25854551299b4a30364a481a556c6db9a20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21350325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d33ada9252f4bfd4143dc09ef73a36aa235ef89a069e2c493363d6a46c9d80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 08:45:59 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:46:00 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 08:53:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 08:53:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 08:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 08:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 08:53:49 GMT
USER [memcache]
# Tue, 10 Jul 2018 08:53:50 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 08:53:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6088fcdbac69421129d7cf910a2bd55922555af9d52054e3584a56f848123427`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 1000.1 KB (1000079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d576ac2014ae62ee3e9cc5fce7796caab1d2a6a7418ef9cc5abc869124b156`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb5d3446c9395e2d86977d2717d95636e3d31fa4846870e6a117e6c7d913ab2`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:46bb839e6a587d2a04493a6a8930e0feeeb3649b2e64359074034ebaa4f0bd4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24189840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4a219e7684bad542b23ef758f6488ec70cb8b4ea138b40f34d847fcef68bd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:45:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 10:45:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:45:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:45:03 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:45:03 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:45:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddc0c777b07194efa580374545ecd7174d417b25c2568f6a55b96a167b006b9`  
		Last Modified: Tue, 10 Jul 2018 10:51:19 GMT  
		Size: 1.0 MB (1047586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea23b6601a9f7fa079b79d929eb2e5034c1124242b02ec0a9dfe4f445be0b7a`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a67e01e5187bc19e1b06614dc1691a9c73c72152bda5e75ad5f62cc2fd81d2`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:a1c1375bf513bce7a69d5f7cfdd8595469789925c0c1a059900d8fbb6477577e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23352435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d3604b39a09d1a9f61722c04c0ebd2124c5ac72449db25ea60ed9580a4b07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 11:44:36 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:44:37 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:48:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 11:48:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:48:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:48:05 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:48:05 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:48:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9e5f9e30ec87401be3967df33010c6f34a7c38b7e6ed66cade8927b1e831e`  
		Last Modified: Tue, 10 Jul 2018 11:58:53 GMT  
		Size: 1000.4 KB (1000403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ea74551dbc1f7b8273dfd771db1c09dd6699de4cd8f5da243074441a88da75`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c580a52dfaa394fa1190615e3cbc79a00353dcbe25925184d4c5c5b7a7fee6`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.9`

```console
$ docker pull memcached@sha256:389c8c847323b55153e9637c1cbcc86d833bfcd09d71abe8cda1b85daeb774b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:1.5.9` - linux; amd64

```console
$ docker pull memcached@sha256:25751a96282c6869de32382ea5c779f5a102b9a824a81deb1b5e2933c11adf3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23538082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccaa2dc524e8171f3e6d87b70aeb5ce99f849b676aa2c4f6ad42a999e664fea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:25:32 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 00:25:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:25:33 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:25:34 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:25:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ac6930f3874ae530822bcae6ec76557d858a0fa59fe8343af7807b6d78f315`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 1.0 MB (1038948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24b9cf620f3f80672b4bc16429c958c7dde0ddf1dff92037c4369beea8ff255`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed1bee6d17e3bffa7e1e0420656249c0940842ceb617658a10f79c9c12ba5e`  
		Last Modified: Tue, 10 Jul 2018 00:31:50 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:96d7c960c1ee450d46514a77603a25854551299b4a30364a481a556c6db9a20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21350325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d33ada9252f4bfd4143dc09ef73a36aa235ef89a069e2c493363d6a46c9d80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 08:45:59 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:46:00 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 08:53:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 08:53:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 08:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 08:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 08:53:49 GMT
USER [memcache]
# Tue, 10 Jul 2018 08:53:50 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 08:53:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6088fcdbac69421129d7cf910a2bd55922555af9d52054e3584a56f848123427`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 1000.1 KB (1000079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d576ac2014ae62ee3e9cc5fce7796caab1d2a6a7418ef9cc5abc869124b156`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb5d3446c9395e2d86977d2717d95636e3d31fa4846870e6a117e6c7d913ab2`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9` - linux; 386

```console
$ docker pull memcached@sha256:46bb839e6a587d2a04493a6a8930e0feeeb3649b2e64359074034ebaa4f0bd4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24189840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4a219e7684bad542b23ef758f6488ec70cb8b4ea138b40f34d847fcef68bd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:45:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 10:45:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:45:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:45:03 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:45:03 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:45:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddc0c777b07194efa580374545ecd7174d417b25c2568f6a55b96a167b006b9`  
		Last Modified: Tue, 10 Jul 2018 10:51:19 GMT  
		Size: 1.0 MB (1047586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea23b6601a9f7fa079b79d929eb2e5034c1124242b02ec0a9dfe4f445be0b7a`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a67e01e5187bc19e1b06614dc1691a9c73c72152bda5e75ad5f62cc2fd81d2`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9` - linux; s390x

```console
$ docker pull memcached@sha256:a1c1375bf513bce7a69d5f7cfdd8595469789925c0c1a059900d8fbb6477577e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23352435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d3604b39a09d1a9f61722c04c0ebd2124c5ac72449db25ea60ed9580a4b07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 11:44:36 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:44:37 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:48:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 11:48:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:48:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:48:05 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:48:05 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:48:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9e5f9e30ec87401be3967df33010c6f34a7c38b7e6ed66cade8927b1e831e`  
		Last Modified: Tue, 10 Jul 2018 11:58:53 GMT  
		Size: 1000.4 KB (1000403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ea74551dbc1f7b8273dfd771db1c09dd6699de4cd8f5da243074441a88da75`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c580a52dfaa394fa1190615e3cbc79a00353dcbe25925184d4c5c5b7a7fee6`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.9-alpine`

```console
$ docker pull memcached@sha256:b2621a15bb2fa5ef0eef62ae868aed7b4acea117e168bb23363cfcb3a90e21d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:1.5.9-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:57f3fd38478d8b201e6dca9b70a98d3ab73a2d257cc8753843390fc53d78907a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4735147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40e8fa7e3e51b3736640e869436160d40330554d85a861b2bb8a51c849cc701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 10 Jul 2018 00:25:54 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:25:55 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:31:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 00:31:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:31:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:31:18 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:31:19 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:31:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84af2d337c1295555298e43151272b7a1038f0f81f82fe9db02d45c8d5f8be36`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 2.6 MB (2629944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88f78460e6bcbbf1a06f6c56e456380c1653649ccf54e37bbde77dcb5d5c2fc`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be56efdd6a933fe9703ed20dce871b3c0f289ee1d962c199a66f68702238ad3`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:5fe4fc65c520c9a5ca48c3f3e3c453ec30fbf86c205bc3ad34748c3656ffbb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f89650ea958e478007413b8e93436e1f9a67f7e747e3bd7834678c8b126616a`
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
# Tue, 10 Jul 2018 08:54:12 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:54:15 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 09:16:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 09:16:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 09:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 09:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 09:16:28 GMT
USER [memcache]
# Tue, 10 Jul 2018 09:16:29 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 09:16:30 GMT
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
	-	`sha256:77e3b15f6db21987eaed50f51b1b7f77b56d710dce9ccc9709ff524f31e1c07f`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 1.7 MB (1730352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628bd763d9e6467a3f36e5d7495c018734bcf31f97dd938a1f26848dd58c8c97`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d6b3811e6335b72a7853ae8518bb34888c791f67365e4665fd39227dbbf9d`  
		Last Modified: Tue, 10 Jul 2018 09:18:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9-alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea2076b12082239b1edf0e884dfff4e41937968251b8e8dcd2cfbcb64bfe54e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6ed453622e2ff800972f1ffc6956a2a79256e8192d47807422070ee5e49b46`
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
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:50:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 10:50:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:50:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:50:54 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:50:54 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:50:54 GMT
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
	-	`sha256:431e430cd4bee615b6755112909f78ccbf93ebe47f26fe0543caed266c2bcab4`  
		Last Modified: Tue, 10 Jul 2018 10:52:11 GMT  
		Size: 1.9 MB (1893410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8156fa67ef3d4dd01b3e4f751402fa02818fa56eff5b8ee61b23c201c4efdf`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07976b942e898e7997646458b2c25cefb1f69ab906f8f3ace3ab5d53bb43516`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:59ad28f9169b9c0d7b7a761dd2a675e90c6744f8aa75650806318a65b16c8435
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605979dc75f76a98cf3c37875090eadfda0c4870a151dcda9321012eb696c92d`
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
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:58:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 11:58:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:58:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:58:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:58:35 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:58:35 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:58:36 GMT
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
	-	`sha256:75a6500e185851c5bec56adbf0b4a93ac2ea9d468cfc76f22b7f4c53a7ce88be`  
		Last Modified: Tue, 10 Jul 2018 11:59:10 GMT  
		Size: 1.8 MB (1832624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c637c01ebb3bbe22f38d2c6b725eac5aedbcd5e7fc32c18aa77d37fc04033d`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbe1b3016122460c76e6612621e8bc63920ec1a164c99b4802273ac94c97b1`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:b2621a15bb2fa5ef0eef62ae868aed7b4acea117e168bb23363cfcb3a90e21d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:57f3fd38478d8b201e6dca9b70a98d3ab73a2d257cc8753843390fc53d78907a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4735147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40e8fa7e3e51b3736640e869436160d40330554d85a861b2bb8a51c849cc701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 10 Jul 2018 00:25:54 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:25:55 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:31:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 00:31:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:31:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:31:18 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:31:19 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:31:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84af2d337c1295555298e43151272b7a1038f0f81f82fe9db02d45c8d5f8be36`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 2.6 MB (2629944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88f78460e6bcbbf1a06f6c56e456380c1653649ccf54e37bbde77dcb5d5c2fc`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be56efdd6a933fe9703ed20dce871b3c0f289ee1d962c199a66f68702238ad3`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:5fe4fc65c520c9a5ca48c3f3e3c453ec30fbf86c205bc3ad34748c3656ffbb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f89650ea958e478007413b8e93436e1f9a67f7e747e3bd7834678c8b126616a`
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
# Tue, 10 Jul 2018 08:54:12 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:54:15 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 09:16:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 09:16:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 09:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 09:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 09:16:28 GMT
USER [memcache]
# Tue, 10 Jul 2018 09:16:29 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 09:16:30 GMT
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
	-	`sha256:77e3b15f6db21987eaed50f51b1b7f77b56d710dce9ccc9709ff524f31e1c07f`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 1.7 MB (1730352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628bd763d9e6467a3f36e5d7495c018734bcf31f97dd938a1f26848dd58c8c97`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d6b3811e6335b72a7853ae8518bb34888c791f67365e4665fd39227dbbf9d`  
		Last Modified: Tue, 10 Jul 2018 09:18:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea2076b12082239b1edf0e884dfff4e41937968251b8e8dcd2cfbcb64bfe54e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6ed453622e2ff800972f1ffc6956a2a79256e8192d47807422070ee5e49b46`
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
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:50:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 10:50:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:50:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:50:54 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:50:54 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:50:54 GMT
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
	-	`sha256:431e430cd4bee615b6755112909f78ccbf93ebe47f26fe0543caed266c2bcab4`  
		Last Modified: Tue, 10 Jul 2018 10:52:11 GMT  
		Size: 1.9 MB (1893410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8156fa67ef3d4dd01b3e4f751402fa02818fa56eff5b8ee61b23c201c4efdf`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07976b942e898e7997646458b2c25cefb1f69ab906f8f3ace3ab5d53bb43516`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:59ad28f9169b9c0d7b7a761dd2a675e90c6744f8aa75650806318a65b16c8435
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605979dc75f76a98cf3c37875090eadfda0c4870a151dcda9321012eb696c92d`
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
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:58:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 11:58:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:58:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:58:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:58:35 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:58:35 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:58:36 GMT
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
	-	`sha256:75a6500e185851c5bec56adbf0b4a93ac2ea9d468cfc76f22b7f4c53a7ce88be`  
		Last Modified: Tue, 10 Jul 2018 11:59:10 GMT  
		Size: 1.8 MB (1832624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c637c01ebb3bbe22f38d2c6b725eac5aedbcd5e7fc32c18aa77d37fc04033d`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbe1b3016122460c76e6612621e8bc63920ec1a164c99b4802273ac94c97b1`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:b2621a15bb2fa5ef0eef62ae868aed7b4acea117e168bb23363cfcb3a90e21d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:57f3fd38478d8b201e6dca9b70a98d3ab73a2d257cc8753843390fc53d78907a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4735147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40e8fa7e3e51b3736640e869436160d40330554d85a861b2bb8a51c849cc701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 10 Jul 2018 00:25:54 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:25:55 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:31:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 00:31:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:31:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:31:18 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:31:19 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:31:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84af2d337c1295555298e43151272b7a1038f0f81f82fe9db02d45c8d5f8be36`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 2.6 MB (2629944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88f78460e6bcbbf1a06f6c56e456380c1653649ccf54e37bbde77dcb5d5c2fc`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be56efdd6a933fe9703ed20dce871b3c0f289ee1d962c199a66f68702238ad3`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:5fe4fc65c520c9a5ca48c3f3e3c453ec30fbf86c205bc3ad34748c3656ffbb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f89650ea958e478007413b8e93436e1f9a67f7e747e3bd7834678c8b126616a`
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
# Tue, 10 Jul 2018 08:54:12 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:54:15 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 09:16:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 09:16:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 09:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 09:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 09:16:28 GMT
USER [memcache]
# Tue, 10 Jul 2018 09:16:29 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 09:16:30 GMT
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
	-	`sha256:77e3b15f6db21987eaed50f51b1b7f77b56d710dce9ccc9709ff524f31e1c07f`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 1.7 MB (1730352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628bd763d9e6467a3f36e5d7495c018734bcf31f97dd938a1f26848dd58c8c97`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d6b3811e6335b72a7853ae8518bb34888c791f67365e4665fd39227dbbf9d`  
		Last Modified: Tue, 10 Jul 2018 09:18:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea2076b12082239b1edf0e884dfff4e41937968251b8e8dcd2cfbcb64bfe54e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6ed453622e2ff800972f1ffc6956a2a79256e8192d47807422070ee5e49b46`
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
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:50:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 10:50:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:50:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:50:54 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:50:54 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:50:54 GMT
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
	-	`sha256:431e430cd4bee615b6755112909f78ccbf93ebe47f26fe0543caed266c2bcab4`  
		Last Modified: Tue, 10 Jul 2018 10:52:11 GMT  
		Size: 1.9 MB (1893410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8156fa67ef3d4dd01b3e4f751402fa02818fa56eff5b8ee61b23c201c4efdf`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07976b942e898e7997646458b2c25cefb1f69ab906f8f3ace3ab5d53bb43516`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:59ad28f9169b9c0d7b7a761dd2a675e90c6744f8aa75650806318a65b16c8435
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605979dc75f76a98cf3c37875090eadfda0c4870a151dcda9321012eb696c92d`
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
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:58:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 11:58:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:58:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:58:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:58:35 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:58:35 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:58:36 GMT
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
	-	`sha256:75a6500e185851c5bec56adbf0b4a93ac2ea9d468cfc76f22b7f4c53a7ce88be`  
		Last Modified: Tue, 10 Jul 2018 11:59:10 GMT  
		Size: 1.8 MB (1832624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c637c01ebb3bbe22f38d2c6b725eac5aedbcd5e7fc32c18aa77d37fc04033d`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbe1b3016122460c76e6612621e8bc63920ec1a164c99b4802273ac94c97b1`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:b2621a15bb2fa5ef0eef62ae868aed7b4acea117e168bb23363cfcb3a90e21d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:57f3fd38478d8b201e6dca9b70a98d3ab73a2d257cc8753843390fc53d78907a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4735147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40e8fa7e3e51b3736640e869436160d40330554d85a861b2bb8a51c849cc701`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 10 Jul 2018 00:25:54 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:25:55 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:31:17 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 00:31:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:31:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:31:18 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:31:19 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:31:19 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b12912dd4d5012ede38c516277c22aa189773c1ff26e7e8667f8440ce0233`  
		Last Modified: Fri, 06 Jul 2018 17:27:09 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84af2d337c1295555298e43151272b7a1038f0f81f82fe9db02d45c8d5f8be36`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 2.6 MB (2629944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88f78460e6bcbbf1a06f6c56e456380c1653649ccf54e37bbde77dcb5d5c2fc`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be56efdd6a933fe9703ed20dce871b3c0f289ee1d962c199a66f68702238ad3`  
		Last Modified: Tue, 10 Jul 2018 00:33:07 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:5fe4fc65c520c9a5ca48c3f3e3c453ec30fbf86c205bc3ad34748c3656ffbb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f89650ea958e478007413b8e93436e1f9a67f7e747e3bd7834678c8b126616a`
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
# Tue, 10 Jul 2018 08:54:12 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:54:15 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 09:16:25 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 09:16:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 09:16:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 09:16:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 09:16:28 GMT
USER [memcache]
# Tue, 10 Jul 2018 09:16:29 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 09:16:30 GMT
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
	-	`sha256:77e3b15f6db21987eaed50f51b1b7f77b56d710dce9ccc9709ff524f31e1c07f`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 1.7 MB (1730352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628bd763d9e6467a3f36e5d7495c018734bcf31f97dd938a1f26848dd58c8c97`  
		Last Modified: Tue, 10 Jul 2018 09:18:14 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7d6b3811e6335b72a7853ae8518bb34888c791f67365e4665fd39227dbbf9d`  
		Last Modified: Tue, 10 Jul 2018 09:18:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:ea2076b12082239b1edf0e884dfff4e41937968251b8e8dcd2cfbcb64bfe54e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4021458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6ed453622e2ff800972f1ffc6956a2a79256e8192d47807422070ee5e49b46`
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
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:45:17 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:50:52 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 10:50:53 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:50:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:50:54 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:50:54 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:50:54 GMT
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
	-	`sha256:431e430cd4bee615b6755112909f78ccbf93ebe47f26fe0543caed266c2bcab4`  
		Last Modified: Tue, 10 Jul 2018 10:52:11 GMT  
		Size: 1.9 MB (1893410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8156fa67ef3d4dd01b3e4f751402fa02818fa56eff5b8ee61b23c201c4efdf`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07976b942e898e7997646458b2c25cefb1f69ab906f8f3ace3ab5d53bb43516`  
		Last Modified: Tue, 10 Jul 2018 10:52:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:59ad28f9169b9c0d7b7a761dd2a675e90c6744f8aa75650806318a65b16c8435
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605979dc75f76a98cf3c37875090eadfda0c4870a151dcda9321012eb696c92d`
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
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:48:25 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:58:34 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 10 Jul 2018 11:58:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:58:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:58:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:58:35 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:58:35 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:58:36 GMT
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
	-	`sha256:75a6500e185851c5bec56adbf0b4a93ac2ea9d468cfc76f22b7f4c53a7ce88be`  
		Last Modified: Tue, 10 Jul 2018 11:59:10 GMT  
		Size: 1.8 MB (1832624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c637c01ebb3bbe22f38d2c6b725eac5aedbcd5e7fc32c18aa77d37fc04033d`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dbe1b3016122460c76e6612621e8bc63920ec1a164c99b4802273ac94c97b1`  
		Last Modified: Tue, 10 Jul 2018 11:59:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:389c8c847323b55153e9637c1cbcc86d833bfcd09d71abe8cda1b85daeb774b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:25751a96282c6869de32382ea5c779f5a102b9a824a81deb1b5e2933c11adf3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23538082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccaa2dc524e8171f3e6d87b70aeb5ce99f849b676aa2c4f6ad42a999e664fea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 00:19:50 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 00:25:32 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 00:25:32 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 00:25:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 00:25:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 00:25:33 GMT
USER [memcache]
# Tue, 10 Jul 2018 00:25:34 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 00:25:34 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be827dc88ff4088f0794fba20b5c3939874ceec05849fe3227d4d2969920ec1`  
		Last Modified: Tue, 26 Jun 2018 23:00:44 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ac6930f3874ae530822bcae6ec76557d858a0fa59fe8343af7807b6d78f315`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 1.0 MB (1038948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24b9cf620f3f80672b4bc16429c958c7dde0ddf1dff92037c4369beea8ff255`  
		Last Modified: Tue, 10 Jul 2018 00:31:51 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed1bee6d17e3bffa7e1e0420656249c0940842ceb617658a10f79c9c12ba5e`  
		Last Modified: Tue, 10 Jul 2018 00:31:50 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:96d7c960c1ee450d46514a77603a25854551299b4a30364a481a556c6db9a20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21350325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d33ada9252f4bfd4143dc09ef73a36aa235ef89a069e2c493363d6a46c9d80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:46:17 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 08:45:59 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 08:46:00 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 08:53:44 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 08:53:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 08:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 08:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 08:53:49 GMT
USER [memcache]
# Tue, 10 Jul 2018 08:53:50 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 08:53:51 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d07d7b3eebd105daf3698a1ce778ba645163e0598d2ee6517669b50c6fbb03`  
		Last Modified: Wed, 27 Jun 2018 11:55:15 GMT  
		Size: 1.8 KB (1752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6088fcdbac69421129d7cf910a2bd55922555af9d52054e3584a56f848123427`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 1000.1 KB (1000079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d576ac2014ae62ee3e9cc5fce7796caab1d2a6a7418ef9cc5abc869124b156`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb5d3446c9395e2d86977d2717d95636e3d31fa4846870e6a117e6c7d913ab2`  
		Last Modified: Tue, 10 Jul 2018 09:16:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:46bb839e6a587d2a04493a6a8930e0feeeb3649b2e64359074034ebaa4f0bd4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24189840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4a219e7684bad542b23ef758f6488ec70cb8b4ea138b40f34d847fcef68bd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:09 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 10:39:04 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 10:45:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 10:45:02 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 10:45:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 10:45:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 10:45:03 GMT
USER [memcache]
# Tue, 10 Jul 2018 10:45:03 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 10:45:04 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0892872f3fa5c770347a5f96d5ef5e84b50513de7032945359e0e6d042c840b`  
		Last Modified: Wed, 27 Jun 2018 12:24:07 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddc0c777b07194efa580374545ecd7174d417b25c2568f6a55b96a167b006b9`  
		Last Modified: Tue, 10 Jul 2018 10:51:19 GMT  
		Size: 1.0 MB (1047586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea23b6601a9f7fa079b79d929eb2e5034c1124242b02ec0a9dfe4f445be0b7a`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a67e01e5187bc19e1b06614dc1691a9c73c72152bda5e75ad5f62cc2fd81d2`  
		Last Modified: Tue, 10 Jul 2018 10:51:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:a1c1375bf513bce7a69d5f7cfdd8595469789925c0c1a059900d8fbb6477577e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23352435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d3604b39a09d1a9f61722c04c0ebd2124c5ac72449db25ea60ed9580a4b07e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:18 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 10 Jul 2018 11:44:36 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 10 Jul 2018 11:44:37 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 10 Jul 2018 11:48:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 10 Jul 2018 11:48:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 10 Jul 2018 11:48:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 10 Jul 2018 11:48:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Jul 2018 11:48:05 GMT
USER [memcache]
# Tue, 10 Jul 2018 11:48:05 GMT
EXPOSE 11211/tcp
# Tue, 10 Jul 2018 11:48:06 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3afb7cbb94c0f908d4d284230b1f262f1a082c6e862454265ac3a74179d7e20`  
		Last Modified: Wed, 27 Jun 2018 12:29:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda9e5f9e30ec87401be3967df33010c6f34a7c38b7e6ed66cade8927b1e831e`  
		Last Modified: Tue, 10 Jul 2018 11:58:53 GMT  
		Size: 1000.4 KB (1000403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ea74551dbc1f7b8273dfd771db1c09dd6699de4cd8f5da243074441a88da75`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c580a52dfaa394fa1190615e3cbc79a00353dcbe25925184d4c5c5b7a7fee6`  
		Last Modified: Tue, 10 Jul 2018 11:58:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

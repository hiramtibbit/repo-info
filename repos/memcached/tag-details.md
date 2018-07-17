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
$ docker pull memcached@sha256:88bf4810eca30709b8f2fb5407b3c74970658cc7c450f6ce1f133558f085440c
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
$ docker pull memcached@sha256:1db359b54cc14702c29ef399fd5618901d9bff96297cd6c13f3717868a7e65cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23526762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f12c079fd52ebc01ddec81cf9650036dfab324c7fbf1e40b69ae873529335e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 03:53:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:53:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 03:53:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:53:14 GMT
USER [memcache]
# Tue, 17 Jul 2018 03:53:14 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 03:53:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7b02eaa8cb2d82e2ecb6a228d34bda459c893e0d6e84659536aebf2ebc64d8`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c385e72d74e56d36725caaec395e7fa1c663d6fafe364439d668d4e5a0b2454`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.0 MB (1038696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306d0f7fa224be1d77676c1e1ed9d4d3c5184e91e059196d40106be532a6b364`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9746b74b769875a733a4ed503112db03b170bec97913dc063702fa70795bedb`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:5bedbfaeae311cce91f551e40e0ebe2659fd20ecac72da8b3c84b2c5773b0dba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22182349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d40bbb3e85d6272e4dd75c1d7dd7acf286a3230ec4a2f61dba74a1c0c0b5d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 10:02:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 10:02:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:02:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 10:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 10:02:33 GMT
USER [memcache]
# Tue, 17 Jul 2018 10:02:34 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 10:02:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7ab021801f715be3eb626996cd16e74eb0a51495ef458ab1ab323ad8babd5c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b1899fca51d78757a6716f512ef3170eee4e6362719d9e068881b919429ad8`  
		Last Modified: Tue, 17 Jul 2018 10:02:54 GMT  
		Size: 1.0 MB (1017543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9277fc12427a9d3ab95e351ad52fceac4654c4fb2309cf1cadee3a9900d6c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b811b5fd2fb918c5f77d6e972ca7522c99e84a51e2af0fd97bb98e89eae317`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4c744d9d9266e63cb574fb90d30b0ee13e5f91e8eacf4ce6376bbf4ebd036f83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7380ae5363b01a4d8a9e4164acca0e91a34bada72cbda08060a059a7c8be4487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Sat, 14 Jul 2018 12:24:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 14 Jul 2018 12:24:41 GMT
ENV MEMCACHED_VERSION=1.5.9
# Sat, 14 Jul 2018 12:24:42 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Sat, 14 Jul 2018 12:40:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 14 Jul 2018 12:41:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:41:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Jul 2018 12:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:41:06 GMT
USER [memcache]
# Sat, 14 Jul 2018 12:41:07 GMT
EXPOSE 11211/tcp
# Sat, 14 Jul 2018 12:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadb00c38502ad3c0b9154c3d43b371cbce421380e86d10f3b5fe54a8f9ce55`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573bdfd79a06889ef55fd4e5983bffff1f3c23be61f2013854698bd3ded1b0e6`  
		Last Modified: Sat, 14 Jul 2018 12:41:33 GMT  
		Size: 985.6 KB (985606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e24649caaa9821def0c37eafb8b511058391c128a6e9a758d71fa428c9b7ec`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9968c68feb1404b9d1e298149df96cb2789a365ea624473fe6d785038d4b159c`  
		Last Modified: Sat, 14 Jul 2018 12:41:32 GMT  
		Size: 121.0 B  
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

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:8d6fc41c1c51f451918eec8a5f411a5eaf4dc5117473284f3ceb1ebd8f338912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23785743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30229b23e66f002f7b576e864fd1ca833821cdebdd55af786a964383e861aa2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 11 Jul 2018 08:27:10 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:27:12 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:36:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 11 Jul 2018 08:36:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:36:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:36:22 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:36:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5cded865e8854f2ed1e7848dfd3a7cd2a4162973d29c7ca77e7380cdc7f602`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 1.0 MB (1030544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672f90a28b13fc19880295b7e50da4df2ee11c68de514c252deb6ab4d61df71`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e16ff5ad3ba98119b5e61dafdcf5999e5bea54ddc7aa9749ed6173727867c5`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
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
$ docker pull memcached@sha256:88bf4810eca30709b8f2fb5407b3c74970658cc7c450f6ce1f133558f085440c
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
$ docker pull memcached@sha256:1db359b54cc14702c29ef399fd5618901d9bff96297cd6c13f3717868a7e65cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23526762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f12c079fd52ebc01ddec81cf9650036dfab324c7fbf1e40b69ae873529335e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 03:53:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:53:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 03:53:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:53:14 GMT
USER [memcache]
# Tue, 17 Jul 2018 03:53:14 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 03:53:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7b02eaa8cb2d82e2ecb6a228d34bda459c893e0d6e84659536aebf2ebc64d8`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c385e72d74e56d36725caaec395e7fa1c663d6fafe364439d668d4e5a0b2454`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.0 MB (1038696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306d0f7fa224be1d77676c1e1ed9d4d3c5184e91e059196d40106be532a6b364`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9746b74b769875a733a4ed503112db03b170bec97913dc063702fa70795bedb`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:5bedbfaeae311cce91f551e40e0ebe2659fd20ecac72da8b3c84b2c5773b0dba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22182349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d40bbb3e85d6272e4dd75c1d7dd7acf286a3230ec4a2f61dba74a1c0c0b5d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 10:02:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 10:02:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:02:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 10:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 10:02:33 GMT
USER [memcache]
# Tue, 17 Jul 2018 10:02:34 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 10:02:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7ab021801f715be3eb626996cd16e74eb0a51495ef458ab1ab323ad8babd5c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b1899fca51d78757a6716f512ef3170eee4e6362719d9e068881b919429ad8`  
		Last Modified: Tue, 17 Jul 2018 10:02:54 GMT  
		Size: 1.0 MB (1017543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9277fc12427a9d3ab95e351ad52fceac4654c4fb2309cf1cadee3a9900d6c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b811b5fd2fb918c5f77d6e972ca7522c99e84a51e2af0fd97bb98e89eae317`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4c744d9d9266e63cb574fb90d30b0ee13e5f91e8eacf4ce6376bbf4ebd036f83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7380ae5363b01a4d8a9e4164acca0e91a34bada72cbda08060a059a7c8be4487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Sat, 14 Jul 2018 12:24:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 14 Jul 2018 12:24:41 GMT
ENV MEMCACHED_VERSION=1.5.9
# Sat, 14 Jul 2018 12:24:42 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Sat, 14 Jul 2018 12:40:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 14 Jul 2018 12:41:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:41:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Jul 2018 12:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:41:06 GMT
USER [memcache]
# Sat, 14 Jul 2018 12:41:07 GMT
EXPOSE 11211/tcp
# Sat, 14 Jul 2018 12:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadb00c38502ad3c0b9154c3d43b371cbce421380e86d10f3b5fe54a8f9ce55`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573bdfd79a06889ef55fd4e5983bffff1f3c23be61f2013854698bd3ded1b0e6`  
		Last Modified: Sat, 14 Jul 2018 12:41:33 GMT  
		Size: 985.6 KB (985606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e24649caaa9821def0c37eafb8b511058391c128a6e9a758d71fa428c9b7ec`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9968c68feb1404b9d1e298149df96cb2789a365ea624473fe6d785038d4b159c`  
		Last Modified: Sat, 14 Jul 2018 12:41:32 GMT  
		Size: 121.0 B  
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

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:8d6fc41c1c51f451918eec8a5f411a5eaf4dc5117473284f3ceb1ebd8f338912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23785743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30229b23e66f002f7b576e864fd1ca833821cdebdd55af786a964383e861aa2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 11 Jul 2018 08:27:10 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:27:12 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:36:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 11 Jul 2018 08:36:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:36:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:36:22 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:36:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5cded865e8854f2ed1e7848dfd3a7cd2a4162973d29c7ca77e7380cdc7f602`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 1.0 MB (1030544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672f90a28b13fc19880295b7e50da4df2ee11c68de514c252deb6ab4d61df71`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e16ff5ad3ba98119b5e61dafdcf5999e5bea54ddc7aa9749ed6173727867c5`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
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
$ docker pull memcached@sha256:88bf4810eca30709b8f2fb5407b3c74970658cc7c450f6ce1f133558f085440c
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

### `memcached:1.5.9` - linux; amd64

```console
$ docker pull memcached@sha256:1db359b54cc14702c29ef399fd5618901d9bff96297cd6c13f3717868a7e65cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23526762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f12c079fd52ebc01ddec81cf9650036dfab324c7fbf1e40b69ae873529335e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 03:53:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:53:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 03:53:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:53:14 GMT
USER [memcache]
# Tue, 17 Jul 2018 03:53:14 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 03:53:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7b02eaa8cb2d82e2ecb6a228d34bda459c893e0d6e84659536aebf2ebc64d8`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c385e72d74e56d36725caaec395e7fa1c663d6fafe364439d668d4e5a0b2454`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.0 MB (1038696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306d0f7fa224be1d77676c1e1ed9d4d3c5184e91e059196d40106be532a6b364`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9746b74b769875a733a4ed503112db03b170bec97913dc063702fa70795bedb`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9` - linux; arm variant v5

```console
$ docker pull memcached@sha256:5bedbfaeae311cce91f551e40e0ebe2659fd20ecac72da8b3c84b2c5773b0dba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22182349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d40bbb3e85d6272e4dd75c1d7dd7acf286a3230ec4a2f61dba74a1c0c0b5d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 10:02:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 10:02:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:02:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 10:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 10:02:33 GMT
USER [memcache]
# Tue, 17 Jul 2018 10:02:34 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 10:02:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7ab021801f715be3eb626996cd16e74eb0a51495ef458ab1ab323ad8babd5c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b1899fca51d78757a6716f512ef3170eee4e6362719d9e068881b919429ad8`  
		Last Modified: Tue, 17 Jul 2018 10:02:54 GMT  
		Size: 1.0 MB (1017543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9277fc12427a9d3ab95e351ad52fceac4654c4fb2309cf1cadee3a9900d6c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b811b5fd2fb918c5f77d6e972ca7522c99e84a51e2af0fd97bb98e89eae317`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.9` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4c744d9d9266e63cb574fb90d30b0ee13e5f91e8eacf4ce6376bbf4ebd036f83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7380ae5363b01a4d8a9e4164acca0e91a34bada72cbda08060a059a7c8be4487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Sat, 14 Jul 2018 12:24:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 14 Jul 2018 12:24:41 GMT
ENV MEMCACHED_VERSION=1.5.9
# Sat, 14 Jul 2018 12:24:42 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Sat, 14 Jul 2018 12:40:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 14 Jul 2018 12:41:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:41:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Jul 2018 12:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:41:06 GMT
USER [memcache]
# Sat, 14 Jul 2018 12:41:07 GMT
EXPOSE 11211/tcp
# Sat, 14 Jul 2018 12:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadb00c38502ad3c0b9154c3d43b371cbce421380e86d10f3b5fe54a8f9ce55`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573bdfd79a06889ef55fd4e5983bffff1f3c23be61f2013854698bd3ded1b0e6`  
		Last Modified: Sat, 14 Jul 2018 12:41:33 GMT  
		Size: 985.6 KB (985606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e24649caaa9821def0c37eafb8b511058391c128a6e9a758d71fa428c9b7ec`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9968c68feb1404b9d1e298149df96cb2789a365ea624473fe6d785038d4b159c`  
		Last Modified: Sat, 14 Jul 2018 12:41:32 GMT  
		Size: 121.0 B  
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

### `memcached:1.5.9` - linux; ppc64le

```console
$ docker pull memcached@sha256:8d6fc41c1c51f451918eec8a5f411a5eaf4dc5117473284f3ceb1ebd8f338912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23785743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30229b23e66f002f7b576e864fd1ca833821cdebdd55af786a964383e861aa2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 11 Jul 2018 08:27:10 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:27:12 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:36:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 11 Jul 2018 08:36:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:36:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:36:22 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:36:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5cded865e8854f2ed1e7848dfd3a7cd2a4162973d29c7ca77e7380cdc7f602`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 1.0 MB (1030544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672f90a28b13fc19880295b7e50da4df2ee11c68de514c252deb6ab4d61df71`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e16ff5ad3ba98119b5e61dafdcf5999e5bea54ddc7aa9749ed6173727867c5`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
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
$ docker pull memcached@sha256:9206241d87e1ff7101f836bc88ed07b40637a99bbf59788d3a44366dc306d0e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
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

### `memcached:1.5.9-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:e2800fafdfe93b1a36f6cbaca280e6860c3624d04203d6f90d3ea53dd68837d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3786407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726489c73ab03efe277a026c3528ba9809d5dc4dec71b379ed3e4847ac0359a4`
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
# Wed, 11 Jul 2018 07:49:20 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 07:49:21 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:03:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:03:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:03:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:03:11 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:03:12 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:03:12 GMT
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
	-	`sha256:87ae0ac24b929066d46f187dd2fbead7e1b4d96d2f205f616533f7994247b668`  
		Last Modified: Wed, 11 Jul 2018 08:03:32 GMT  
		Size: 1.7 MB (1746250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83820c44a55e25c1fa8e58816ae8417ca2d79017acc31994110e2f3b519acdf`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717cb51fcb3d978f936501ebf9a30eb7abb65259e82f1773d3083000340834ed`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 121.0 B  
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

### `memcached:1.5.9-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f94816d48afb1327c478cf662a1c4a934a6eaaf3ace6861a46a703f1c173b194
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3876193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64231e30e9445c995e7036562a5a993aebffa73c1d8786556ae04becfaa8a624`
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
# Wed, 11 Jul 2018 08:37:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:37:06 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:47:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:47:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:48:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:48:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:48:24 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:48:26 GMT
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
	-	`sha256:9dd9776d33f760b9b0c7a5cb6ee10f95fe62aac37dae9975fc88623df754a6aa`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 1.8 MB (1792864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835ce82e3eccb389724f74f3cd1fa59157c124b9bc48877bfc9e6e299b29b9cf`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1454a75dff97f92372439b89d0c7ffa1bae5e61975c8a0b3d73a00d13c75bd`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
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
$ docker pull memcached@sha256:9206241d87e1ff7101f836bc88ed07b40637a99bbf59788d3a44366dc306d0e8
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

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:e2800fafdfe93b1a36f6cbaca280e6860c3624d04203d6f90d3ea53dd68837d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3786407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726489c73ab03efe277a026c3528ba9809d5dc4dec71b379ed3e4847ac0359a4`
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
# Wed, 11 Jul 2018 07:49:20 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 07:49:21 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:03:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:03:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:03:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:03:11 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:03:12 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:03:12 GMT
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
	-	`sha256:87ae0ac24b929066d46f187dd2fbead7e1b4d96d2f205f616533f7994247b668`  
		Last Modified: Wed, 11 Jul 2018 08:03:32 GMT  
		Size: 1.7 MB (1746250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83820c44a55e25c1fa8e58816ae8417ca2d79017acc31994110e2f3b519acdf`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717cb51fcb3d978f936501ebf9a30eb7abb65259e82f1773d3083000340834ed`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 121.0 B  
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

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f94816d48afb1327c478cf662a1c4a934a6eaaf3ace6861a46a703f1c173b194
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3876193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64231e30e9445c995e7036562a5a993aebffa73c1d8786556ae04becfaa8a624`
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
# Wed, 11 Jul 2018 08:37:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:37:06 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:47:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:47:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:48:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:48:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:48:24 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:48:26 GMT
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
	-	`sha256:9dd9776d33f760b9b0c7a5cb6ee10f95fe62aac37dae9975fc88623df754a6aa`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 1.8 MB (1792864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835ce82e3eccb389724f74f3cd1fa59157c124b9bc48877bfc9e6e299b29b9cf`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1454a75dff97f92372439b89d0c7ffa1bae5e61975c8a0b3d73a00d13c75bd`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
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
$ docker pull memcached@sha256:9206241d87e1ff7101f836bc88ed07b40637a99bbf59788d3a44366dc306d0e8
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

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:e2800fafdfe93b1a36f6cbaca280e6860c3624d04203d6f90d3ea53dd68837d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3786407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726489c73ab03efe277a026c3528ba9809d5dc4dec71b379ed3e4847ac0359a4`
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
# Wed, 11 Jul 2018 07:49:20 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 07:49:21 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:03:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:03:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:03:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:03:11 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:03:12 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:03:12 GMT
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
	-	`sha256:87ae0ac24b929066d46f187dd2fbead7e1b4d96d2f205f616533f7994247b668`  
		Last Modified: Wed, 11 Jul 2018 08:03:32 GMT  
		Size: 1.7 MB (1746250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83820c44a55e25c1fa8e58816ae8417ca2d79017acc31994110e2f3b519acdf`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717cb51fcb3d978f936501ebf9a30eb7abb65259e82f1773d3083000340834ed`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 121.0 B  
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

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f94816d48afb1327c478cf662a1c4a934a6eaaf3ace6861a46a703f1c173b194
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3876193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64231e30e9445c995e7036562a5a993aebffa73c1d8786556ae04becfaa8a624`
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
# Wed, 11 Jul 2018 08:37:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:37:06 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:47:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:47:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:48:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:48:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:48:24 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:48:26 GMT
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
	-	`sha256:9dd9776d33f760b9b0c7a5cb6ee10f95fe62aac37dae9975fc88623df754a6aa`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 1.8 MB (1792864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835ce82e3eccb389724f74f3cd1fa59157c124b9bc48877bfc9e6e299b29b9cf`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1454a75dff97f92372439b89d0c7ffa1bae5e61975c8a0b3d73a00d13c75bd`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
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
$ docker pull memcached@sha256:9206241d87e1ff7101f836bc88ed07b40637a99bbf59788d3a44366dc306d0e8
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

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:e2800fafdfe93b1a36f6cbaca280e6860c3624d04203d6f90d3ea53dd68837d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3786407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726489c73ab03efe277a026c3528ba9809d5dc4dec71b379ed3e4847ac0359a4`
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
# Wed, 11 Jul 2018 07:49:20 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 07:49:21 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:03:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:03:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:03:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:03:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:03:11 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:03:12 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:03:12 GMT
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
	-	`sha256:87ae0ac24b929066d46f187dd2fbead7e1b4d96d2f205f616533f7994247b668`  
		Last Modified: Wed, 11 Jul 2018 08:03:32 GMT  
		Size: 1.7 MB (1746250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83820c44a55e25c1fa8e58816ae8417ca2d79017acc31994110e2f3b519acdf`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717cb51fcb3d978f936501ebf9a30eb7abb65259e82f1773d3083000340834ed`  
		Last Modified: Wed, 11 Jul 2018 08:03:30 GMT  
		Size: 121.0 B  
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

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:f94816d48afb1327c478cf662a1c4a934a6eaaf3ace6861a46a703f1c173b194
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3876193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64231e30e9445c995e7036562a5a993aebffa73c1d8786556ae04becfaa8a624`
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
# Wed, 11 Jul 2018 08:37:04 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:37:06 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:47:49 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 11 Jul 2018 08:47:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:48:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:48:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:48:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:48:24 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:48:26 GMT
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
	-	`sha256:9dd9776d33f760b9b0c7a5cb6ee10f95fe62aac37dae9975fc88623df754a6aa`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 1.8 MB (1792864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835ce82e3eccb389724f74f3cd1fa59157c124b9bc48877bfc9e6e299b29b9cf`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1454a75dff97f92372439b89d0c7ffa1bae5e61975c8a0b3d73a00d13c75bd`  
		Last Modified: Wed, 11 Jul 2018 08:49:37 GMT  
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
$ docker pull memcached@sha256:88bf4810eca30709b8f2fb5407b3c74970658cc7c450f6ce1f133558f085440c
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
$ docker pull memcached@sha256:1db359b54cc14702c29ef399fd5618901d9bff96297cd6c13f3717868a7e65cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23526762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f12c079fd52ebc01ddec81cf9650036dfab324c7fbf1e40b69ae873529335e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 03:47:29 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 03:53:07 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 03:53:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:53:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 03:53:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:53:14 GMT
USER [memcache]
# Tue, 17 Jul 2018 03:53:14 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 03:53:14 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7b02eaa8cb2d82e2ecb6a228d34bda459c893e0d6e84659536aebf2ebc64d8`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c385e72d74e56d36725caaec395e7fa1c663d6fafe364439d668d4e5a0b2454`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 1.0 MB (1038696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306d0f7fa224be1d77676c1e1ed9d4d3c5184e91e059196d40106be532a6b364`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9746b74b769875a733a4ed503112db03b170bec97913dc063702fa70795bedb`  
		Last Modified: Tue, 17 Jul 2018 03:53:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:5bedbfaeae311cce91f551e40e0ebe2659fd20ecac72da8b3c84b2c5773b0dba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22182349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d40bbb3e85d6272e4dd75c1d7dd7acf286a3230ec4a2f61dba74a1c0c0b5d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 09:28:46 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 10:02:26 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 10:02:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 10:02:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 10:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 10:02:33 GMT
USER [memcache]
# Tue, 17 Jul 2018 10:02:34 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 10:02:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7ab021801f715be3eb626996cd16e74eb0a51495ef458ab1ab323ad8babd5c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b1899fca51d78757a6716f512ef3170eee4e6362719d9e068881b919429ad8`  
		Last Modified: Tue, 17 Jul 2018 10:02:54 GMT  
		Size: 1.0 MB (1017543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b9277fc12427a9d3ab95e351ad52fceac4654c4fb2309cf1cadee3a9900d6c`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b811b5fd2fb918c5f77d6e972ca7522c99e84a51e2af0fd97bb98e89eae317`  
		Last Modified: Tue, 17 Jul 2018 10:02:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4c744d9d9266e63cb574fb90d30b0ee13e5f91e8eacf4ce6376bbf4ebd036f83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7380ae5363b01a4d8a9e4164acca0e91a34bada72cbda08060a059a7c8be4487`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Sat, 14 Jul 2018 12:24:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 14 Jul 2018 12:24:41 GMT
ENV MEMCACHED_VERSION=1.5.9
# Sat, 14 Jul 2018 12:24:42 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Sat, 14 Jul 2018 12:40:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 14 Jul 2018 12:41:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 14 Jul 2018 12:41:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 14 Jul 2018 12:41:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Jul 2018 12:41:06 GMT
USER [memcache]
# Sat, 14 Jul 2018 12:41:07 GMT
EXPOSE 11211/tcp
# Sat, 14 Jul 2018 12:41:08 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aadb00c38502ad3c0b9154c3d43b371cbce421380e86d10f3b5fe54a8f9ce55`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573bdfd79a06889ef55fd4e5983bffff1f3c23be61f2013854698bd3ded1b0e6`  
		Last Modified: Sat, 14 Jul 2018 12:41:33 GMT  
		Size: 985.6 KB (985606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e24649caaa9821def0c37eafb8b511058391c128a6e9a758d71fa428c9b7ec`  
		Last Modified: Sat, 14 Jul 2018 12:41:31 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9968c68feb1404b9d1e298149df96cb2789a365ea624473fe6d785038d4b159c`  
		Last Modified: Sat, 14 Jul 2018 12:41:32 GMT  
		Size: 121.0 B  
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

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:8d6fc41c1c51f451918eec8a5f411a5eaf4dc5117473284f3ceb1ebd8f338912
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23785743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30229b23e66f002f7b576e864fd1ca833821cdebdd55af786a964383e861aa2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:11:35 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 11 Jul 2018 08:27:10 GMT
ENV MEMCACHED_VERSION=1.5.9
# Wed, 11 Jul 2018 08:27:12 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Wed, 11 Jul 2018 08:36:06 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 11 Jul 2018 08:36:08 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 11 Jul 2018 08:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 11 Jul 2018 08:36:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 08:36:19 GMT
USER [memcache]
# Wed, 11 Jul 2018 08:36:22 GMT
EXPOSE 11211/tcp
# Wed, 11 Jul 2018 08:36:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeadcedec31f40b3d3c5bf25034f05c1231adcf8c87e31205b6c4fa0284b03`  
		Last Modified: Wed, 27 Jun 2018 10:20:05 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5cded865e8854f2ed1e7848dfd3a7cd2a4162973d29c7ca77e7380cdc7f602`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 1.0 MB (1030544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672f90a28b13fc19880295b7e50da4df2ee11c68de514c252deb6ab4d61df71`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e16ff5ad3ba98119b5e61dafdcf5999e5bea54ddc7aa9749ed6173727867c5`  
		Last Modified: Wed, 11 Jul 2018 08:48:53 GMT  
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

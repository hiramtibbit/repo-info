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
$ docker pull memcached@sha256:d026943fe6c199ab3e7260d0d12f0bdabd515b1a43be21088dbe8b4b2aa9c2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1` - linux; amd64

```console
$ docker pull memcached@sha256:907a1c44f28555f70cae1bf8454c5b7f64a6830e4f4735719a26148af1fa1770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d95d52bdd289dd409590810ddb56a2e903b0275c25303e09e0ffc974c2d7df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:35:22 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 14 Aug 2018 20:35:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:35:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:35:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:35:25 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:35:25 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:35:25 GMT
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
	-	`sha256:988ce23b2606513475d59174fb19d610c17416e6b07c7e497f5bd05088811bee`  
		Last Modified: Tue, 14 Aug 2018 20:42:23 GMT  
		Size: 1.0 MB (1043258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a941ece7efcf4003d89d8a1d2847d8fb4704b20764e731fd2144ca0b7b924c`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb7a7ebd5cacb7b613e9e9ad2b019a7e41ebba44f1fbc4ef8858c085404426`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:7b421579cac3161d54f3a35e405ea9097cc51ac5b0730b10918f04fa2edfa728
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c07295ce487caa56571ce4b678aaf08e11ceb1253a665d7011daad9a9f136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:48:30 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:48:31 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:23:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:24:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:24:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:24:07 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:24:07 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:24:08 GMT
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
	-	`sha256:57912240e2316e6e50314d981b4be362deb417d0ff9bc596cf729a47b67faaaa`  
		Last Modified: Wed, 15 Aug 2018 09:24:27 GMT  
		Size: 1.0 MB (1023709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd67f35cc32ec8ee21324c11dd8bac53fb8b0cf77e67caf5721e1694bdb5b782`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1782a6d5e3e843edc76afa742e596a737a369ce524672c9fa2fabd79e83521af`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c0f413b85b73721fde66085f848e8c9456e89a298e8fafcd94c6d86650280cd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36d1b8c2b7e4d0b32411af2cff94f5dc36f2192351953fe92611f05278881eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:53:59 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:16 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:17 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:03:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:03:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:03:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:03:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:03:46 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:03:47 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:03:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fdfbb0859dc5d057e73c884d739a2e70414b9e522cae0a94fe50394a763846`  
		Last Modified: Tue, 17 Jul 2018 16:01:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e38492b65087f8af0852943c818c45f990f1b14d093bb9a7f3527d3e5adb79`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 1.0 MB (1004949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b739570de1420f56775b5905957f242d8d1744263a2c3647738cdf911d1532f4`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e4f584b97d40148ee287368f35278500309a5e88454aed68bb75369a1776a8`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:c98927563d05e39a21065405ed6f6c9b5a77068c3b798b31ba036a14283e7e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d663e6ca1c12407ac28efd81f6535acc0eee82768f92db38a5391b17ea3869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:19:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 10:48:15 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:48:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 10:54:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 10:54:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 10:54:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 10:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 10:54:43 GMT
USER [memcache]
# Wed, 15 Aug 2018 10:54:43 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 10:54:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051123d9cf2f7608ef560e9b7e8f1600cb4c63d225181ca7c15f4589068ed80`  
		Last Modified: Tue, 17 Jul 2018 15:26:58 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b3579b555bcf3e974099c3126d014b9629410a568534ccbf079199cf057bf`  
		Last Modified: Wed, 15 Aug 2018 11:02:01 GMT  
		Size: 1.1 MB (1051703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354afd046f411b02bc16b70cfc9d0da7c9bbfce1618b6ad4cb3437f5b808042e`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4770b87f4c8c53fba3c7b27ca134e867402031b68e33855212bc69885f13fa1`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:7fb55b21f0727ab072c08abf289611c6855506f54adfe17388be15808fd950bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23779241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407fd3d3c2f02bf19ccf68165b4b51b8af840ca1da25ca230e7ea620a3125d3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:24:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:18 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:33 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:18:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:18:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:18:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:18:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:18:39 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:18:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b5e6d68a00e7dca7691a3c21afd274ea06fb3c2874973b8df6c0e3bf1be4ad`  
		Last Modified: Tue, 17 Jul 2018 14:33:03 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f361946a75f39f5161753adeb068d5943de990dea17291583efe80934e434c8`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 1.0 MB (1036633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aac3769fbaaad76d3b7e5e9ffdb0fb2a82f2d1579e697d6a00f8799f0a2672`  
		Last Modified: Wed, 15 Aug 2018 09:31:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e664022310e5daba75bfcf9102c9033c2e3941ae03b127c31fa8f9a1a9adebe`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:78048c9886081f81b8d414e2c7836678be80154fec6488fbe895ce96eff61596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23336952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abeefc14da8b96c945076caa6e5d98fe8b277110d6458d233c4aa418b1abd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:28:39 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:01:40 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 12:01:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:01:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:01:45 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:01:45 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:01:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9079348bcb9532ec15651337d1f83a7b0bccd6a978bf58bdff6c2ce8d2971e9`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82407ef6f1a46d6bc7f4fb10a4814b924dd6b786225fec5fdda96ad4db038a6e`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 1000.3 KB (1000272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1e6ed730527e7992e1bf2d8e4f8f58822a157d1b8b296f35773ea76d2bc874`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8824d39f41a4136ce0edabe27cbfebf12208fa7177ef09aca05af0ff79ac45c9`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:d026943fe6c199ab3e7260d0d12f0bdabd515b1a43be21088dbe8b4b2aa9c2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5` - linux; amd64

```console
$ docker pull memcached@sha256:907a1c44f28555f70cae1bf8454c5b7f64a6830e4f4735719a26148af1fa1770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d95d52bdd289dd409590810ddb56a2e903b0275c25303e09e0ffc974c2d7df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:35:22 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 14 Aug 2018 20:35:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:35:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:35:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:35:25 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:35:25 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:35:25 GMT
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
	-	`sha256:988ce23b2606513475d59174fb19d610c17416e6b07c7e497f5bd05088811bee`  
		Last Modified: Tue, 14 Aug 2018 20:42:23 GMT  
		Size: 1.0 MB (1043258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a941ece7efcf4003d89d8a1d2847d8fb4704b20764e731fd2144ca0b7b924c`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb7a7ebd5cacb7b613e9e9ad2b019a7e41ebba44f1fbc4ef8858c085404426`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:7b421579cac3161d54f3a35e405ea9097cc51ac5b0730b10918f04fa2edfa728
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c07295ce487caa56571ce4b678aaf08e11ceb1253a665d7011daad9a9f136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:48:30 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:48:31 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:23:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:24:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:24:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:24:07 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:24:07 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:24:08 GMT
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
	-	`sha256:57912240e2316e6e50314d981b4be362deb417d0ff9bc596cf729a47b67faaaa`  
		Last Modified: Wed, 15 Aug 2018 09:24:27 GMT  
		Size: 1.0 MB (1023709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd67f35cc32ec8ee21324c11dd8bac53fb8b0cf77e67caf5721e1694bdb5b782`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1782a6d5e3e843edc76afa742e596a737a369ce524672c9fa2fabd79e83521af`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c0f413b85b73721fde66085f848e8c9456e89a298e8fafcd94c6d86650280cd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36d1b8c2b7e4d0b32411af2cff94f5dc36f2192351953fe92611f05278881eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:53:59 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:16 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:17 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:03:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:03:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:03:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:03:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:03:46 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:03:47 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:03:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fdfbb0859dc5d057e73c884d739a2e70414b9e522cae0a94fe50394a763846`  
		Last Modified: Tue, 17 Jul 2018 16:01:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e38492b65087f8af0852943c818c45f990f1b14d093bb9a7f3527d3e5adb79`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 1.0 MB (1004949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b739570de1420f56775b5905957f242d8d1744263a2c3647738cdf911d1532f4`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e4f584b97d40148ee287368f35278500309a5e88454aed68bb75369a1776a8`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:c98927563d05e39a21065405ed6f6c9b5a77068c3b798b31ba036a14283e7e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d663e6ca1c12407ac28efd81f6535acc0eee82768f92db38a5391b17ea3869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:19:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 10:48:15 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:48:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 10:54:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 10:54:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 10:54:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 10:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 10:54:43 GMT
USER [memcache]
# Wed, 15 Aug 2018 10:54:43 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 10:54:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051123d9cf2f7608ef560e9b7e8f1600cb4c63d225181ca7c15f4589068ed80`  
		Last Modified: Tue, 17 Jul 2018 15:26:58 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b3579b555bcf3e974099c3126d014b9629410a568534ccbf079199cf057bf`  
		Last Modified: Wed, 15 Aug 2018 11:02:01 GMT  
		Size: 1.1 MB (1051703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354afd046f411b02bc16b70cfc9d0da7c9bbfce1618b6ad4cb3437f5b808042e`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4770b87f4c8c53fba3c7b27ca134e867402031b68e33855212bc69885f13fa1`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:7fb55b21f0727ab072c08abf289611c6855506f54adfe17388be15808fd950bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23779241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407fd3d3c2f02bf19ccf68165b4b51b8af840ca1da25ca230e7ea620a3125d3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:24:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:18 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:33 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:18:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:18:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:18:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:18:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:18:39 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:18:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b5e6d68a00e7dca7691a3c21afd274ea06fb3c2874973b8df6c0e3bf1be4ad`  
		Last Modified: Tue, 17 Jul 2018 14:33:03 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f361946a75f39f5161753adeb068d5943de990dea17291583efe80934e434c8`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 1.0 MB (1036633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aac3769fbaaad76d3b7e5e9ffdb0fb2a82f2d1579e697d6a00f8799f0a2672`  
		Last Modified: Wed, 15 Aug 2018 09:31:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e664022310e5daba75bfcf9102c9033c2e3941ae03b127c31fa8f9a1a9adebe`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:78048c9886081f81b8d414e2c7836678be80154fec6488fbe895ce96eff61596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23336952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abeefc14da8b96c945076caa6e5d98fe8b277110d6458d233c4aa418b1abd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:28:39 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:01:40 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 12:01:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:01:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:01:45 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:01:45 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:01:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9079348bcb9532ec15651337d1f83a7b0bccd6a978bf58bdff6c2ce8d2971e9`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82407ef6f1a46d6bc7f4fb10a4814b924dd6b786225fec5fdda96ad4db038a6e`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 1000.3 KB (1000272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1e6ed730527e7992e1bf2d8e4f8f58822a157d1b8b296f35773ea76d2bc874`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8824d39f41a4136ce0edabe27cbfebf12208fa7177ef09aca05af0ff79ac45c9`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.10`

```console
$ docker pull memcached@sha256:d026943fe6c199ab3e7260d0d12f0bdabd515b1a43be21088dbe8b4b2aa9c2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.10` - linux; amd64

```console
$ docker pull memcached@sha256:907a1c44f28555f70cae1bf8454c5b7f64a6830e4f4735719a26148af1fa1770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d95d52bdd289dd409590810ddb56a2e903b0275c25303e09e0ffc974c2d7df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:35:22 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 14 Aug 2018 20:35:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:35:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:35:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:35:25 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:35:25 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:35:25 GMT
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
	-	`sha256:988ce23b2606513475d59174fb19d610c17416e6b07c7e497f5bd05088811bee`  
		Last Modified: Tue, 14 Aug 2018 20:42:23 GMT  
		Size: 1.0 MB (1043258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a941ece7efcf4003d89d8a1d2847d8fb4704b20764e731fd2144ca0b7b924c`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb7a7ebd5cacb7b613e9e9ad2b019a7e41ebba44f1fbc4ef8858c085404426`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; arm variant v5

```console
$ docker pull memcached@sha256:7b421579cac3161d54f3a35e405ea9097cc51ac5b0730b10918f04fa2edfa728
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c07295ce487caa56571ce4b678aaf08e11ceb1253a665d7011daad9a9f136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:48:30 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:48:31 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:23:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:24:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:24:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:24:07 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:24:07 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:24:08 GMT
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
	-	`sha256:57912240e2316e6e50314d981b4be362deb417d0ff9bc596cf729a47b67faaaa`  
		Last Modified: Wed, 15 Aug 2018 09:24:27 GMT  
		Size: 1.0 MB (1023709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd67f35cc32ec8ee21324c11dd8bac53fb8b0cf77e67caf5721e1694bdb5b782`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1782a6d5e3e843edc76afa742e596a737a369ce524672c9fa2fabd79e83521af`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c0f413b85b73721fde66085f848e8c9456e89a298e8fafcd94c6d86650280cd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36d1b8c2b7e4d0b32411af2cff94f5dc36f2192351953fe92611f05278881eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:53:59 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:16 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:17 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:03:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:03:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:03:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:03:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:03:46 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:03:47 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:03:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fdfbb0859dc5d057e73c884d739a2e70414b9e522cae0a94fe50394a763846`  
		Last Modified: Tue, 17 Jul 2018 16:01:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e38492b65087f8af0852943c818c45f990f1b14d093bb9a7f3527d3e5adb79`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 1.0 MB (1004949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b739570de1420f56775b5905957f242d8d1744263a2c3647738cdf911d1532f4`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e4f584b97d40148ee287368f35278500309a5e88454aed68bb75369a1776a8`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; 386

```console
$ docker pull memcached@sha256:c98927563d05e39a21065405ed6f6c9b5a77068c3b798b31ba036a14283e7e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d663e6ca1c12407ac28efd81f6535acc0eee82768f92db38a5391b17ea3869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:19:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 10:48:15 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:48:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 10:54:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 10:54:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 10:54:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 10:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 10:54:43 GMT
USER [memcache]
# Wed, 15 Aug 2018 10:54:43 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 10:54:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051123d9cf2f7608ef560e9b7e8f1600cb4c63d225181ca7c15f4589068ed80`  
		Last Modified: Tue, 17 Jul 2018 15:26:58 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b3579b555bcf3e974099c3126d014b9629410a568534ccbf079199cf057bf`  
		Last Modified: Wed, 15 Aug 2018 11:02:01 GMT  
		Size: 1.1 MB (1051703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354afd046f411b02bc16b70cfc9d0da7c9bbfce1618b6ad4cb3437f5b808042e`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4770b87f4c8c53fba3c7b27ca134e867402031b68e33855212bc69885f13fa1`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; ppc64le

```console
$ docker pull memcached@sha256:7fb55b21f0727ab072c08abf289611c6855506f54adfe17388be15808fd950bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23779241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407fd3d3c2f02bf19ccf68165b4b51b8af840ca1da25ca230e7ea620a3125d3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:24:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:18 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:33 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:18:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:18:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:18:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:18:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:18:39 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:18:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b5e6d68a00e7dca7691a3c21afd274ea06fb3c2874973b8df6c0e3bf1be4ad`  
		Last Modified: Tue, 17 Jul 2018 14:33:03 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f361946a75f39f5161753adeb068d5943de990dea17291583efe80934e434c8`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 1.0 MB (1036633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aac3769fbaaad76d3b7e5e9ffdb0fb2a82f2d1579e697d6a00f8799f0a2672`  
		Last Modified: Wed, 15 Aug 2018 09:31:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e664022310e5daba75bfcf9102c9033c2e3941ae03b127c31fa8f9a1a9adebe`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10` - linux; s390x

```console
$ docker pull memcached@sha256:78048c9886081f81b8d414e2c7836678be80154fec6488fbe895ce96eff61596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23336952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abeefc14da8b96c945076caa6e5d98fe8b277110d6458d233c4aa418b1abd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:28:39 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:01:40 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 12:01:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:01:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:01:45 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:01:45 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:01:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9079348bcb9532ec15651337d1f83a7b0bccd6a978bf58bdff6c2ce8d2971e9`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82407ef6f1a46d6bc7f4fb10a4814b924dd6b786225fec5fdda96ad4db038a6e`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 1000.3 KB (1000272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1e6ed730527e7992e1bf2d8e4f8f58822a157d1b8b296f35773ea76d2bc874`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8824d39f41a4136ce0edabe27cbfebf12208fa7177ef09aca05af0ff79ac45c9`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.10-alpine`

```console
$ docker pull memcached@sha256:9ebbd6dadfe0274f458e3bd0f9217217dcad32c4a4816f08ec3870a41e704abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.10-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b238160b124fc0c7028939bebc2b0c34e911e8bd0132784b93d2e204bf6a9fe0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eaba0c57cc21cf93836490675a904a4bd4536b4c48c6adef6b9e4b7e952ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:41:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 14 Aug 2018 20:41:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:41:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:41:43 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:41:43 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:41:44 GMT
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
	-	`sha256:ffe7669338251c90da83a50d46a8fcb3d23613eff7ec019ce28655b0ef79adb7`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136185a7a98a06b219e0e154750d21e2fb59bd8fc4bd0384f0c44ef2e0c0f3dc`  
		Last Modified: Tue, 14 Aug 2018 20:44:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4fe50d3a76046d8cc89afbb38cd030c2282e52c3e6e0e9397d28640130a6d`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f49187f1b4a3ecb6ffcc7e68fb0d9732c699bf2ec47e5e29b09b183edd0c6d7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b7d7c6e822e984508dfbb31490fed673b1f0d400374e7ffa97c7ec6ecf39af`
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
# Wed, 15 Aug 2018 09:04:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:04:42 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:11:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:11:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:11:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:11:24 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:11:24 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:11:25 GMT
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
	-	`sha256:2711e322dca03ba786ad354eaec1ad9d4922b86451b41c2b69b4f1008513ef2a`  
		Last Modified: Wed, 15 Aug 2018 09:14:39 GMT  
		Size: 1.7 MB (1734157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a134507c07634d58a07564e0e6259abb693aa9dbf9a50929d2a1aafa8c9304`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05e4a1ecc5addd0f8772da84681fdb55f320e181dae42b661812543f25c9670`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; 386

```console
$ docker pull memcached@sha256:9b7639d7d9071e063cb59999464544c0eb3397a7869f7ec06c617ccd0b5f348f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9896eed90993c2db95d72fe6ebe1a1fcd2a26282ce4217e9c3c628d25f41d7e9`
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
# Wed, 15 Aug 2018 10:55:29 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:55:30 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 11:01:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 11:01:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 11:01:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 11:01:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 11:01:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 11:01:35 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 11:01:35 GMT
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
	-	`sha256:0ab09f503b96fa3377b6f13af9be12f126895a8a1c2b20c7a327bbca5bb7c5f7`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 1.9 MB (1896797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bc5e0e1520547f6fbaa3f4e3f3799979063a9da1bc3d0e39a0ef00f621c269`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0ad9aed4fc1bf66a006c423069c5795c9addb253f6635ebb54315d67787e2`  
		Last Modified: Wed, 15 Aug 2018 11:03:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:bf6e953d6d7f56d6f494dab635a51ebbdb3d0f4978e07e14787e5cd622212ed3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3880224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94806c06d28bcfc09495e8f8f57d53fec505f478fb6ac5176b496ffee4a2ba69`
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
# Wed, 15 Aug 2018 09:18:54 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:18:57 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:31:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:31:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:31:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:31:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:31:26 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:31:28 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:31:31 GMT
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
	-	`sha256:b1d3b5d4bf08fc9b08a2b5b1d15a7c4b86ba4b03c11ec59ec4069cdc91524b2a`  
		Last Modified: Wed, 15 Aug 2018 09:32:41 GMT  
		Size: 1.8 MB (1796899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163cd3819aa89da00e060a410a84eb2330d894f1ac945a5346d4e43c4db8504f`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579412157d839758348b885d044b2acd46fa3d2ea441b56d8d7eb2a64ea64d89`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.10-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:9efe5e0b39cb5e8b8b3b7c21b62380559f8e1a2cdae0ed18fbe70e9b84f54a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271dd207c319f0d7786c6f0a37deb8d8df6855dbeb1cde6b97691318810d5eb1`
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
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:05:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 12:05:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:05:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:05:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:05:29 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:05:29 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:05:29 GMT
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
	-	`sha256:47e1f0b335d9887d21e8e77faacf06fe5348468fb275589e7d9a456cdd8c425e`  
		Last Modified: Wed, 15 Aug 2018 12:06:07 GMT  
		Size: 1.8 MB (1832641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60baa849d4f40d5e461f004ccce64425b6f98df7117744a186d4db6135f727`  
		Last Modified: Wed, 15 Aug 2018 12:06:05 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7af7ffe6b98c741ba35412489925b6099afcbfa02db8cc5844d6f533f58541`  
		Last Modified: Wed, 15 Aug 2018 12:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:9ebbd6dadfe0274f458e3bd0f9217217dcad32c4a4816f08ec3870a41e704abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b238160b124fc0c7028939bebc2b0c34e911e8bd0132784b93d2e204bf6a9fe0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eaba0c57cc21cf93836490675a904a4bd4536b4c48c6adef6b9e4b7e952ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:41:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 14 Aug 2018 20:41:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:41:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:41:43 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:41:43 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:41:44 GMT
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
	-	`sha256:ffe7669338251c90da83a50d46a8fcb3d23613eff7ec019ce28655b0ef79adb7`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136185a7a98a06b219e0e154750d21e2fb59bd8fc4bd0384f0c44ef2e0c0f3dc`  
		Last Modified: Tue, 14 Aug 2018 20:44:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4fe50d3a76046d8cc89afbb38cd030c2282e52c3e6e0e9397d28640130a6d`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f49187f1b4a3ecb6ffcc7e68fb0d9732c699bf2ec47e5e29b09b183edd0c6d7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b7d7c6e822e984508dfbb31490fed673b1f0d400374e7ffa97c7ec6ecf39af`
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
# Wed, 15 Aug 2018 09:04:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:04:42 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:11:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:11:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:11:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:11:24 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:11:24 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:11:25 GMT
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
	-	`sha256:2711e322dca03ba786ad354eaec1ad9d4922b86451b41c2b69b4f1008513ef2a`  
		Last Modified: Wed, 15 Aug 2018 09:14:39 GMT  
		Size: 1.7 MB (1734157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a134507c07634d58a07564e0e6259abb693aa9dbf9a50929d2a1aafa8c9304`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05e4a1ecc5addd0f8772da84681fdb55f320e181dae42b661812543f25c9670`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:9b7639d7d9071e063cb59999464544c0eb3397a7869f7ec06c617ccd0b5f348f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9896eed90993c2db95d72fe6ebe1a1fcd2a26282ce4217e9c3c628d25f41d7e9`
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
# Wed, 15 Aug 2018 10:55:29 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:55:30 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 11:01:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 11:01:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 11:01:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 11:01:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 11:01:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 11:01:35 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 11:01:35 GMT
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
	-	`sha256:0ab09f503b96fa3377b6f13af9be12f126895a8a1c2b20c7a327bbca5bb7c5f7`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 1.9 MB (1896797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bc5e0e1520547f6fbaa3f4e3f3799979063a9da1bc3d0e39a0ef00f621c269`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0ad9aed4fc1bf66a006c423069c5795c9addb253f6635ebb54315d67787e2`  
		Last Modified: Wed, 15 Aug 2018 11:03:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:bf6e953d6d7f56d6f494dab635a51ebbdb3d0f4978e07e14787e5cd622212ed3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3880224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94806c06d28bcfc09495e8f8f57d53fec505f478fb6ac5176b496ffee4a2ba69`
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
# Wed, 15 Aug 2018 09:18:54 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:18:57 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:31:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:31:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:31:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:31:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:31:26 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:31:28 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:31:31 GMT
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
	-	`sha256:b1d3b5d4bf08fc9b08a2b5b1d15a7c4b86ba4b03c11ec59ec4069cdc91524b2a`  
		Last Modified: Wed, 15 Aug 2018 09:32:41 GMT  
		Size: 1.8 MB (1796899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163cd3819aa89da00e060a410a84eb2330d894f1ac945a5346d4e43c4db8504f`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579412157d839758348b885d044b2acd46fa3d2ea441b56d8d7eb2a64ea64d89`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:9efe5e0b39cb5e8b8b3b7c21b62380559f8e1a2cdae0ed18fbe70e9b84f54a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271dd207c319f0d7786c6f0a37deb8d8df6855dbeb1cde6b97691318810d5eb1`
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
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:05:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 12:05:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:05:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:05:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:05:29 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:05:29 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:05:29 GMT
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
	-	`sha256:47e1f0b335d9887d21e8e77faacf06fe5348468fb275589e7d9a456cdd8c425e`  
		Last Modified: Wed, 15 Aug 2018 12:06:07 GMT  
		Size: 1.8 MB (1832641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60baa849d4f40d5e461f004ccce64425b6f98df7117744a186d4db6135f727`  
		Last Modified: Wed, 15 Aug 2018 12:06:05 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7af7ffe6b98c741ba35412489925b6099afcbfa02db8cc5844d6f533f58541`  
		Last Modified: Wed, 15 Aug 2018 12:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:9ebbd6dadfe0274f458e3bd0f9217217dcad32c4a4816f08ec3870a41e704abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b238160b124fc0c7028939bebc2b0c34e911e8bd0132784b93d2e204bf6a9fe0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eaba0c57cc21cf93836490675a904a4bd4536b4c48c6adef6b9e4b7e952ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:41:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 14 Aug 2018 20:41:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:41:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:41:43 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:41:43 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:41:44 GMT
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
	-	`sha256:ffe7669338251c90da83a50d46a8fcb3d23613eff7ec019ce28655b0ef79adb7`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136185a7a98a06b219e0e154750d21e2fb59bd8fc4bd0384f0c44ef2e0c0f3dc`  
		Last Modified: Tue, 14 Aug 2018 20:44:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4fe50d3a76046d8cc89afbb38cd030c2282e52c3e6e0e9397d28640130a6d`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f49187f1b4a3ecb6ffcc7e68fb0d9732c699bf2ec47e5e29b09b183edd0c6d7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b7d7c6e822e984508dfbb31490fed673b1f0d400374e7ffa97c7ec6ecf39af`
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
# Wed, 15 Aug 2018 09:04:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:04:42 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:11:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:11:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:11:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:11:24 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:11:24 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:11:25 GMT
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
	-	`sha256:2711e322dca03ba786ad354eaec1ad9d4922b86451b41c2b69b4f1008513ef2a`  
		Last Modified: Wed, 15 Aug 2018 09:14:39 GMT  
		Size: 1.7 MB (1734157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a134507c07634d58a07564e0e6259abb693aa9dbf9a50929d2a1aafa8c9304`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05e4a1ecc5addd0f8772da84681fdb55f320e181dae42b661812543f25c9670`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:9b7639d7d9071e063cb59999464544c0eb3397a7869f7ec06c617ccd0b5f348f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9896eed90993c2db95d72fe6ebe1a1fcd2a26282ce4217e9c3c628d25f41d7e9`
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
# Wed, 15 Aug 2018 10:55:29 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:55:30 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 11:01:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 11:01:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 11:01:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 11:01:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 11:01:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 11:01:35 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 11:01:35 GMT
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
	-	`sha256:0ab09f503b96fa3377b6f13af9be12f126895a8a1c2b20c7a327bbca5bb7c5f7`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 1.9 MB (1896797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bc5e0e1520547f6fbaa3f4e3f3799979063a9da1bc3d0e39a0ef00f621c269`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0ad9aed4fc1bf66a006c423069c5795c9addb253f6635ebb54315d67787e2`  
		Last Modified: Wed, 15 Aug 2018 11:03:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:bf6e953d6d7f56d6f494dab635a51ebbdb3d0f4978e07e14787e5cd622212ed3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3880224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94806c06d28bcfc09495e8f8f57d53fec505f478fb6ac5176b496ffee4a2ba69`
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
# Wed, 15 Aug 2018 09:18:54 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:18:57 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:31:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:31:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:31:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:31:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:31:26 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:31:28 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:31:31 GMT
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
	-	`sha256:b1d3b5d4bf08fc9b08a2b5b1d15a7c4b86ba4b03c11ec59ec4069cdc91524b2a`  
		Last Modified: Wed, 15 Aug 2018 09:32:41 GMT  
		Size: 1.8 MB (1796899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163cd3819aa89da00e060a410a84eb2330d894f1ac945a5346d4e43c4db8504f`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579412157d839758348b885d044b2acd46fa3d2ea441b56d8d7eb2a64ea64d89`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:9efe5e0b39cb5e8b8b3b7c21b62380559f8e1a2cdae0ed18fbe70e9b84f54a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271dd207c319f0d7786c6f0a37deb8d8df6855dbeb1cde6b97691318810d5eb1`
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
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:05:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 12:05:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:05:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:05:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:05:29 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:05:29 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:05:29 GMT
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
	-	`sha256:47e1f0b335d9887d21e8e77faacf06fe5348468fb275589e7d9a456cdd8c425e`  
		Last Modified: Wed, 15 Aug 2018 12:06:07 GMT  
		Size: 1.8 MB (1832641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60baa849d4f40d5e461f004ccce64425b6f98df7117744a186d4db6135f727`  
		Last Modified: Wed, 15 Aug 2018 12:06:05 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7af7ffe6b98c741ba35412489925b6099afcbfa02db8cc5844d6f533f58541`  
		Last Modified: Wed, 15 Aug 2018 12:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:9ebbd6dadfe0274f458e3bd0f9217217dcad32c4a4816f08ec3870a41e704abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:b238160b124fc0c7028939bebc2b0c34e911e8bd0132784b93d2e204bf6a9fe0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4738741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eaba0c57cc21cf93836490675a904a4bd4536b4c48c6adef6b9e4b7e952ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:21:43 GMT
RUN adduser -D memcache
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:35:50 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:41:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 14 Aug 2018 20:41:42 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:41:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:41:43 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:41:43 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:41:44 GMT
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
	-	`sha256:ffe7669338251c90da83a50d46a8fcb3d23613eff7ec019ce28655b0ef79adb7`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 2.6 MB (2633535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136185a7a98a06b219e0e154750d21e2fb59bd8fc4bd0384f0c44ef2e0c0f3dc`  
		Last Modified: Tue, 14 Aug 2018 20:44:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4fe50d3a76046d8cc89afbb38cd030c2282e52c3e6e0e9397d28640130a6d`  
		Last Modified: Tue, 14 Aug 2018 20:44:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f49187f1b4a3ecb6ffcc7e68fb0d9732c699bf2ec47e5e29b09b183edd0c6d7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b7d7c6e822e984508dfbb31490fed673b1f0d400374e7ffa97c7ec6ecf39af`
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
# Wed, 15 Aug 2018 09:04:41 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:04:42 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:11:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:11:04 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:11:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:11:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:11:24 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:11:24 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:11:25 GMT
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
	-	`sha256:2711e322dca03ba786ad354eaec1ad9d4922b86451b41c2b69b4f1008513ef2a`  
		Last Modified: Wed, 15 Aug 2018 09:14:39 GMT  
		Size: 1.7 MB (1734157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a134507c07634d58a07564e0e6259abb693aa9dbf9a50929d2a1aafa8c9304`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05e4a1ecc5addd0f8772da84681fdb55f320e181dae42b661812543f25c9670`  
		Last Modified: Wed, 15 Aug 2018 09:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:9b7639d7d9071e063cb59999464544c0eb3397a7869f7ec06c617ccd0b5f348f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4024847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9896eed90993c2db95d72fe6ebe1a1fcd2a26282ce4217e9c3c628d25f41d7e9`
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
# Wed, 15 Aug 2018 10:55:29 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:55:30 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 11:01:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 11:01:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 11:01:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 11:01:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 11:01:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 11:01:35 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 11:01:35 GMT
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
	-	`sha256:0ab09f503b96fa3377b6f13af9be12f126895a8a1c2b20c7a327bbca5bb7c5f7`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 1.9 MB (1896797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26bc5e0e1520547f6fbaa3f4e3f3799979063a9da1bc3d0e39a0ef00f621c269`  
		Last Modified: Wed, 15 Aug 2018 11:03:49 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb0ad9aed4fc1bf66a006c423069c5795c9addb253f6635ebb54315d67787e2`  
		Last Modified: Wed, 15 Aug 2018 11:03:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:bf6e953d6d7f56d6f494dab635a51ebbdb3d0f4978e07e14787e5cd622212ed3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3880224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94806c06d28bcfc09495e8f8f57d53fec505f478fb6ac5176b496ffee4a2ba69`
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
# Wed, 15 Aug 2018 09:18:54 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 09:18:57 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:31:13 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 09:31:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:31:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:31:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:31:26 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:31:28 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:31:31 GMT
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
	-	`sha256:b1d3b5d4bf08fc9b08a2b5b1d15a7c4b86ba4b03c11ec59ec4069cdc91524b2a`  
		Last Modified: Wed, 15 Aug 2018 09:32:41 GMT  
		Size: 1.8 MB (1796899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163cd3819aa89da00e060a410a84eb2330d894f1ac945a5346d4e43c4db8504f`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579412157d839758348b885d044b2acd46fa3d2ea441b56d8d7eb2a64ea64d89`  
		Last Modified: Wed, 15 Aug 2018 09:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:9efe5e0b39cb5e8b8b3b7c21b62380559f8e1a2cdae0ed18fbe70e9b84f54a15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4019696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271dd207c319f0d7786c6f0a37deb8d8df6855dbeb1cde6b97691318810d5eb1`
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
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 12:02:05 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:05:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Wed, 15 Aug 2018 12:05:28 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:05:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:05:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:05:29 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:05:29 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:05:29 GMT
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
	-	`sha256:47e1f0b335d9887d21e8e77faacf06fe5348468fb275589e7d9a456cdd8c425e`  
		Last Modified: Wed, 15 Aug 2018 12:06:07 GMT  
		Size: 1.8 MB (1832641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df60baa849d4f40d5e461f004ccce64425b6f98df7117744a186d4db6135f727`  
		Last Modified: Wed, 15 Aug 2018 12:06:05 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7af7ffe6b98c741ba35412489925b6099afcbfa02db8cc5844d6f533f58541`  
		Last Modified: Wed, 15 Aug 2018 12:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:d026943fe6c199ab3e7260d0d12f0bdabd515b1a43be21088dbe8b4b2aa9c2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:907a1c44f28555f70cae1bf8454c5b7f64a6830e4f4735719a26148af1fa1770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23531325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d95d52bdd289dd409590810ddb56a2e903b0275c25303e09e0ffc974c2d7df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:47:29 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_VERSION=1.5.10
# Tue, 14 Aug 2018 20:29:10 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Tue, 14 Aug 2018 20:35:22 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 14 Aug 2018 20:35:23 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 14 Aug 2018 20:35:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 14 Aug 2018 20:35:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 14 Aug 2018 20:35:25 GMT
USER [memcache]
# Tue, 14 Aug 2018 20:35:25 GMT
EXPOSE 11211/tcp
# Tue, 14 Aug 2018 20:35:25 GMT
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
	-	`sha256:988ce23b2606513475d59174fb19d610c17416e6b07c7e497f5bd05088811bee`  
		Last Modified: Tue, 14 Aug 2018 20:42:23 GMT  
		Size: 1.0 MB (1043258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a941ece7efcf4003d89d8a1d2847d8fb4704b20764e731fd2144ca0b7b924c`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb7a7ebd5cacb7b613e9e9ad2b019a7e41ebba44f1fbc4ef8858c085404426`  
		Last Modified: Tue, 14 Aug 2018 20:42:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:7b421579cac3161d54f3a35e405ea9097cc51ac5b0730b10918f04fa2edfa728
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22188517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5c07295ce487caa56571ce4b678aaf08e11ceb1253a665d7011daad9a9f136`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:28:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:48:30 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:48:31 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:23:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:24:00 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:24:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:24:07 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:24:07 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:24:08 GMT
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
	-	`sha256:57912240e2316e6e50314d981b4be362deb417d0ff9bc596cf729a47b67faaaa`  
		Last Modified: Wed, 15 Aug 2018 09:24:27 GMT  
		Size: 1.0 MB (1023709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd67f35cc32ec8ee21324c11dd8bac53fb8b0cf77e67caf5721e1694bdb5b782`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1782a6d5e3e843edc76afa742e596a737a369ce524672c9fa2fabd79e83521af`  
		Last Modified: Wed, 15 Aug 2018 09:24:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:c0f413b85b73721fde66085f848e8c9456e89a298e8fafcd94c6d86650280cd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21338753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36d1b8c2b7e4d0b32411af2cff94f5dc36f2192351953fe92611f05278881eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:53:59 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:16 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:17 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:03:42 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:03:43 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:03:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:03:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:03:46 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:03:47 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:03:47 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fdfbb0859dc5d057e73c884d739a2e70414b9e522cae0a94fe50394a763846`  
		Last Modified: Tue, 17 Jul 2018 16:01:34 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e38492b65087f8af0852943c818c45f990f1b14d093bb9a7f3527d3e5adb79`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 1.0 MB (1004949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b739570de1420f56775b5905957f242d8d1744263a2c3647738cdf911d1532f4`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e4f584b97d40148ee287368f35278500309a5e88454aed68bb75369a1776a8`  
		Last Modified: Wed, 15 Aug 2018 09:12:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:c98927563d05e39a21065405ed6f6c9b5a77068c3b798b31ba036a14283e7e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24180231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d663e6ca1c12407ac28efd81f6535acc0eee82768f92db38a5391b17ea3869`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:19:41 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 10:48:15 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 10:48:16 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 10:54:39 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 10:54:41 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 10:54:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 10:54:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 10:54:43 GMT
USER [memcache]
# Wed, 15 Aug 2018 10:54:43 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 10:54:43 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051123d9cf2f7608ef560e9b7e8f1600cb4c63d225181ca7c15f4589068ed80`  
		Last Modified: Tue, 17 Jul 2018 15:26:58 GMT  
		Size: 1.7 KB (1733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43b3579b555bcf3e974099c3126d014b9629410a568534ccbf079199cf057bf`  
		Last Modified: Wed, 15 Aug 2018 11:02:01 GMT  
		Size: 1.1 MB (1051703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354afd046f411b02bc16b70cfc9d0da7c9bbfce1618b6ad4cb3437f5b808042e`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4770b87f4c8c53fba3c7b27ca134e867402031b68e33855212bc69885f13fa1`  
		Last Modified: Wed, 15 Aug 2018 11:02:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:7fb55b21f0727ab072c08abf289611c6855506f54adfe17388be15808fd950bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23779241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407fd3d3c2f02bf19ccf68165b4b51b8af840ca1da25ca230e7ea620a3125d3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:24:52 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 08:56:18 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 08:56:33 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 09:18:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 09:18:22 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 09:18:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 09:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:18:34 GMT
USER [memcache]
# Wed, 15 Aug 2018 09:18:39 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 09:18:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b5e6d68a00e7dca7691a3c21afd274ea06fb3c2874973b8df6c0e3bf1be4ad`  
		Last Modified: Tue, 17 Jul 2018 14:33:03 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f361946a75f39f5161753adeb068d5943de990dea17291583efe80934e434c8`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 1.0 MB (1036633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aac3769fbaaad76d3b7e5e9ffdb0fb2a82f2d1579e697d6a00f8799f0a2672`  
		Last Modified: Wed, 15 Aug 2018 09:31:57 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e664022310e5daba75bfcf9102c9033c2e3941ae03b127c31fa8f9a1a9adebe`  
		Last Modified: Wed, 15 Aug 2018 09:31:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:78048c9886081f81b8d414e2c7836678be80154fec6488fbe895ce96eff61596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23336952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abeefc14da8b96c945076caa6e5d98fe8b277110d6458d233c4aa418b1abd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:28:39 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_VERSION=1.5.10
# Wed, 15 Aug 2018 11:54:21 GMT
ENV MEMCACHED_SHA1=fff9351b360a09497cd805d3e4c1ffbe860d067d
# Wed, 15 Aug 2018 12:01:40 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 15 Aug 2018 12:01:40 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Wed, 15 Aug 2018 12:01:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 15 Aug 2018 12:01:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:01:45 GMT
USER [memcache]
# Wed, 15 Aug 2018 12:01:45 GMT
EXPOSE 11211/tcp
# Wed, 15 Aug 2018 12:01:45 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9079348bcb9532ec15651337d1f83a7b0bccd6a978bf58bdff6c2ce8d2971e9`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82407ef6f1a46d6bc7f4fb10a4814b924dd6b786225fec5fdda96ad4db038a6e`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 1000.3 KB (1000272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1e6ed730527e7992e1bf2d8e4f8f58822a157d1b8b296f35773ea76d2bc874`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8824d39f41a4136ce0edabe27cbfebf12208fa7177ef09aca05af0ff79ac45c9`  
		Last Modified: Wed, 15 Aug 2018 12:05:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.11`](#memcached1511)
-	[`memcached:1.5.11-alpine`](#memcached1511-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:c10e6524b09124d0d2185ff316f42f008f1d486b88325f5c7484f30b533d58e7
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
$ docker pull memcached@sha256:cf8013fcafcc6af2ab10fa0b711950749c05e95d4ef507b33e58c54920f7c0ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9ee55f825afeb684fea3f6fc3ba1407c6b0972a28d38e75bcad9feefd72e61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 01:19:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:30:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 12 Oct 2018 18:30:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:30:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:30:27 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:30:27 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:30:27 GMT
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
	-	`sha256:c91cdce906a874a42987b0a80915fa904732e9e8de506f41ba84ba7a68046d9a`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 1.0 MB (1043805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5bfb063c1c6124f57c84e4f6f3ed62829f8db00c528169ed0e61a95eefc14e`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f1e2d773ca148cb21ba19cbf69c227d46b78830b3582e419adf299180d986`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v5

```console
$ docker pull memcached@sha256:b87c0b18a76b45115b78d85d7798ab2e6310ad870f3b95fb6a751c5c6120639a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22192373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8e5dc69410c6b6ae75417a1eeb6bed6acceee7663bda503775e09968215a3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:48:35 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:14:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:15:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sun, 14 Oct 2018 09:05:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 14 Oct 2018 09:05:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 14 Oct 2018 09:05:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 14 Oct 2018 09:05:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 14 Oct 2018 09:05:39 GMT
USER [memcache]
# Sun, 14 Oct 2018 09:05:40 GMT
EXPOSE 11211/tcp
# Sun, 14 Oct 2018 09:05:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268d2f7ebd47879d7fdb66ac2345c49f0dd909618fb05c59358c0d91ebd10215`  
		Last Modified: Sat, 15 Sep 2018 09:22:52 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b497cbfb3f20e3e8781ac5b532b7280e06e4397d3833b2258b885d2c2c3cb614`  
		Last Modified: Sun, 14 Oct 2018 09:05:57 GMT  
		Size: 1.0 MB (1024180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86e41e55c6412fcf893ca3f9d114cf0125da4c1bd4054e33052f6ab827ec879`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234aabacad65b102fd58a4c6c56020a0b0e24129c2e508e2caacece50f43081a`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4fee67b34e5f876d7eda30414a90369d6ab6ea3b6a6b738fbad622c5b873075d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20267031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e4b59c5e2702bfc3fdc531641d559f7ec3995ae4c3c459b9944130a80f410f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:57:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:57:31 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:32 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:14:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 12:14:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:14:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:14:20 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:14:20 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:14:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb97f80d55dfd54b361eb90d206fd8904ea1aa861395dd6ee8199f05ac33f91`  
		Last Modified: Sat, 15 Sep 2018 12:45:22 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf39cd6a17c4dd87c8e660e03d0c40e4d64632e9ae0de6cced417a35c5b46656`  
		Last Modified: Sat, 13 Oct 2018 12:14:36 GMT  
		Size: 991.5 KB (991544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0194fe728b3b7d6cef314138cfbb5cdd0f6d8e3cad3aca5c0d32015e71bf034`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb935c0fe667ffeb97e0d228bb6fd1e9b606903766e5c3b123f3b5a267f3ee`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f89c1701e366f33e0a32ae58c6f2eeff0d0cc9949e7e9465a05ebbf302426673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21342580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40240527be8bad4fdebdd579407a8d0b4c5159efe077a085c1611da18c74a80b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 09:53:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 08:52:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 08:53:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:00:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 09:00:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:00:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:00:30 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:00:31 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:00:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab6e95024c2a66524e1a1453f259a0a3d403e010468d8659de6b474d7888c72`  
		Last Modified: Sat, 15 Sep 2018 10:09:42 GMT  
		Size: 5.0 KB (5032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5750fa07d1f64daadb0ef7e165ed0e534073d09a859fdeef5bfae91ae29e122`  
		Last Modified: Sat, 13 Oct 2018 09:08:14 GMT  
		Size: 1.0 MB (1005488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d20739752368ed7bf96565e900298bbacc22a7334ca281d3b20138adf3f2ab7`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edba193710f67659a779a38f54073affbf08ac9448e0544f1113bad8bafd8c8b`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; 386

```console
$ docker pull memcached@sha256:39470fd29f3998ec5081e2a9031d975ae8a7deb5fb212f299c2d606c5e9a7ea2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24184284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612e3efbccb50e4e1d74c653334b7707f8ed85c988fbb66bf049fcae40a52996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 10:47:18 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:44:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:44:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:44:26 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:44:26 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:44:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f385b743a1b19ec8f6e9ce94bf769489b6461ef5f011fcf58adc85bb14d9477`  
		Last Modified: Sat, 15 Sep 2018 10:59:37 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53b91a180620e53548b77f907949ea42a990f54cc740ab954008afddd498283`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 1.1 MB (1052476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2635f8a18d315b4f5d70933bfafbc04925b15cedbb3f532e09bb819108e28b79`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b966376439fc5c43f624a0e91c4951824969b6a19f582ea419d5638cb7e6f66`  
		Last Modified: Sat, 13 Oct 2018 10:50:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; ppc64le

```console
$ docker pull memcached@sha256:6b5372903b03c418f6d54a3e95231f15a761988da867d70373b2f22b4c876cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23782868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e653a4916d2eee014a2047ef5f9ac26097aa7baae0769a56cb31104a37f266f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:17:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:46:43 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:46:44 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:01:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:07:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:08:04 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:08:05 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:08:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d4c308ecfc40077cb43b7340dce8e375a1ecb163f5a1edb8165d8b5509bd57`  
		Last Modified: Sat, 15 Sep 2018 08:46:58 GMT  
		Size: 5.0 KB (4992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df4ac36c5050bd608158701b583d26ee5361ff6cd449d57809c62e400ef681`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 1.0 MB (1036924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073d5490d050a345ee442daa8518a95967b7ada15fa429ffead8084f8086499d`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc2715b135740efa0f2260335b981ee7a4f9c6b8337003d755aeb0f99e25fa`  
		Last Modified: Sat, 13 Oct 2018 10:21:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1` - linux; s390x

```console
$ docker pull memcached@sha256:c8f465eea2ebb0eb02db6e9eea1392eeb77530572c799eca7f81b2a2d48f704b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23340400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fc5c79f192e43a5f410636debc7bc06fd8fe1f8f8579e0e6e5a786d4dd1a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:42:22 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:52:57 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:52:58 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 11:56:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 11:56:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 11:56:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 11:56:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 11:56:57 GMT
USER [memcache]
# Sat, 13 Oct 2018 11:56:57 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 11:56:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5987ea36ab1424ed952829971b60afbc37512ec518f4095ea16ab6ab19d4465`  
		Last Modified: Sat, 15 Sep 2018 11:53:43 GMT  
		Size: 5.0 KB (5030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356a168809bd31dd6190eec2ad179dc94bc45fc4cecea3892890a3b936e2b40`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 1000.3 KB (1000341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5310779e092987e01d41c0cf0930668d49c668e183ca6fdcc8aad571c804bae`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d706efb7ae8ed7de2ca9d89bd312efe6a8b630ee21240442831a9abca2eaff3`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5`

```console
$ docker pull memcached@sha256:c10e6524b09124d0d2185ff316f42f008f1d486b88325f5c7484f30b533d58e7
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
$ docker pull memcached@sha256:cf8013fcafcc6af2ab10fa0b711950749c05e95d4ef507b33e58c54920f7c0ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9ee55f825afeb684fea3f6fc3ba1407c6b0972a28d38e75bcad9feefd72e61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 01:19:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:30:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 12 Oct 2018 18:30:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:30:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:30:27 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:30:27 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:30:27 GMT
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
	-	`sha256:c91cdce906a874a42987b0a80915fa904732e9e8de506f41ba84ba7a68046d9a`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 1.0 MB (1043805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5bfb063c1c6124f57c84e4f6f3ed62829f8db00c528169ed0e61a95eefc14e`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f1e2d773ca148cb21ba19cbf69c227d46b78830b3582e419adf299180d986`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v5

```console
$ docker pull memcached@sha256:b87c0b18a76b45115b78d85d7798ab2e6310ad870f3b95fb6a751c5c6120639a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22192373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8e5dc69410c6b6ae75417a1eeb6bed6acceee7663bda503775e09968215a3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:48:35 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:14:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:15:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sun, 14 Oct 2018 09:05:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 14 Oct 2018 09:05:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 14 Oct 2018 09:05:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 14 Oct 2018 09:05:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 14 Oct 2018 09:05:39 GMT
USER [memcache]
# Sun, 14 Oct 2018 09:05:40 GMT
EXPOSE 11211/tcp
# Sun, 14 Oct 2018 09:05:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268d2f7ebd47879d7fdb66ac2345c49f0dd909618fb05c59358c0d91ebd10215`  
		Last Modified: Sat, 15 Sep 2018 09:22:52 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b497cbfb3f20e3e8781ac5b532b7280e06e4397d3833b2258b885d2c2c3cb614`  
		Last Modified: Sun, 14 Oct 2018 09:05:57 GMT  
		Size: 1.0 MB (1024180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86e41e55c6412fcf893ca3f9d114cf0125da4c1bd4054e33052f6ab827ec879`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234aabacad65b102fd58a4c6c56020a0b0e24129c2e508e2caacece50f43081a`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4fee67b34e5f876d7eda30414a90369d6ab6ea3b6a6b738fbad622c5b873075d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20267031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e4b59c5e2702bfc3fdc531641d559f7ec3995ae4c3c459b9944130a80f410f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:57:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:57:31 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:32 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:14:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 12:14:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:14:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:14:20 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:14:20 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:14:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb97f80d55dfd54b361eb90d206fd8904ea1aa861395dd6ee8199f05ac33f91`  
		Last Modified: Sat, 15 Sep 2018 12:45:22 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf39cd6a17c4dd87c8e660e03d0c40e4d64632e9ae0de6cced417a35c5b46656`  
		Last Modified: Sat, 13 Oct 2018 12:14:36 GMT  
		Size: 991.5 KB (991544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0194fe728b3b7d6cef314138cfbb5cdd0f6d8e3cad3aca5c0d32015e71bf034`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb935c0fe667ffeb97e0d228bb6fd1e9b606903766e5c3b123f3b5a267f3ee`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f89c1701e366f33e0a32ae58c6f2eeff0d0cc9949e7e9465a05ebbf302426673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21342580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40240527be8bad4fdebdd579407a8d0b4c5159efe077a085c1611da18c74a80b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 09:53:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 08:52:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 08:53:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:00:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 09:00:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:00:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:00:30 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:00:31 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:00:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab6e95024c2a66524e1a1453f259a0a3d403e010468d8659de6b474d7888c72`  
		Last Modified: Sat, 15 Sep 2018 10:09:42 GMT  
		Size: 5.0 KB (5032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5750fa07d1f64daadb0ef7e165ed0e534073d09a859fdeef5bfae91ae29e122`  
		Last Modified: Sat, 13 Oct 2018 09:08:14 GMT  
		Size: 1.0 MB (1005488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d20739752368ed7bf96565e900298bbacc22a7334ca281d3b20138adf3f2ab7`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edba193710f67659a779a38f54073affbf08ac9448e0544f1113bad8bafd8c8b`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; 386

```console
$ docker pull memcached@sha256:39470fd29f3998ec5081e2a9031d975ae8a7deb5fb212f299c2d606c5e9a7ea2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24184284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612e3efbccb50e4e1d74c653334b7707f8ed85c988fbb66bf049fcae40a52996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 10:47:18 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:44:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:44:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:44:26 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:44:26 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:44:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f385b743a1b19ec8f6e9ce94bf769489b6461ef5f011fcf58adc85bb14d9477`  
		Last Modified: Sat, 15 Sep 2018 10:59:37 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53b91a180620e53548b77f907949ea42a990f54cc740ab954008afddd498283`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 1.1 MB (1052476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2635f8a18d315b4f5d70933bfafbc04925b15cedbb3f532e09bb819108e28b79`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b966376439fc5c43f624a0e91c4951824969b6a19f582ea419d5638cb7e6f66`  
		Last Modified: Sat, 13 Oct 2018 10:50:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; ppc64le

```console
$ docker pull memcached@sha256:6b5372903b03c418f6d54a3e95231f15a761988da867d70373b2f22b4c876cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23782868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e653a4916d2eee014a2047ef5f9ac26097aa7baae0769a56cb31104a37f266f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:17:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:46:43 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:46:44 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:01:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:07:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:08:04 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:08:05 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:08:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d4c308ecfc40077cb43b7340dce8e375a1ecb163f5a1edb8165d8b5509bd57`  
		Last Modified: Sat, 15 Sep 2018 08:46:58 GMT  
		Size: 5.0 KB (4992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df4ac36c5050bd608158701b583d26ee5361ff6cd449d57809c62e400ef681`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 1.0 MB (1036924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073d5490d050a345ee442daa8518a95967b7ada15fa429ffead8084f8086499d`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc2715b135740efa0f2260335b981ee7a4f9c6b8337003d755aeb0f99e25fa`  
		Last Modified: Sat, 13 Oct 2018 10:21:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5` - linux; s390x

```console
$ docker pull memcached@sha256:c8f465eea2ebb0eb02db6e9eea1392eeb77530572c799eca7f81b2a2d48f704b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23340400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fc5c79f192e43a5f410636debc7bc06fd8fe1f8f8579e0e6e5a786d4dd1a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:42:22 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:52:57 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:52:58 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 11:56:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 11:56:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 11:56:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 11:56:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 11:56:57 GMT
USER [memcache]
# Sat, 13 Oct 2018 11:56:57 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 11:56:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5987ea36ab1424ed952829971b60afbc37512ec518f4095ea16ab6ab19d4465`  
		Last Modified: Sat, 15 Sep 2018 11:53:43 GMT  
		Size: 5.0 KB (5030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356a168809bd31dd6190eec2ad179dc94bc45fc4cecea3892890a3b936e2b40`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 1000.3 KB (1000341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5310779e092987e01d41c0cf0930668d49c668e183ca6fdcc8aad571c804bae`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d706efb7ae8ed7de2ca9d89bd312efe6a8b630ee21240442831a9abca2eaff3`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.11`

```console
$ docker pull memcached@sha256:c10e6524b09124d0d2185ff316f42f008f1d486b88325f5c7484f30b533d58e7
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

### `memcached:1.5.11` - linux; amd64

```console
$ docker pull memcached@sha256:cf8013fcafcc6af2ab10fa0b711950749c05e95d4ef507b33e58c54920f7c0ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9ee55f825afeb684fea3f6fc3ba1407c6b0972a28d38e75bcad9feefd72e61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 01:19:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:30:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 12 Oct 2018 18:30:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:30:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:30:27 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:30:27 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:30:27 GMT
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
	-	`sha256:c91cdce906a874a42987b0a80915fa904732e9e8de506f41ba84ba7a68046d9a`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 1.0 MB (1043805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5bfb063c1c6124f57c84e4f6f3ed62829f8db00c528169ed0e61a95eefc14e`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f1e2d773ca148cb21ba19cbf69c227d46b78830b3582e419adf299180d986`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11` - linux; arm variant v5

```console
$ docker pull memcached@sha256:b87c0b18a76b45115b78d85d7798ab2e6310ad870f3b95fb6a751c5c6120639a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22192373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8e5dc69410c6b6ae75417a1eeb6bed6acceee7663bda503775e09968215a3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:48:35 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:14:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:15:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sun, 14 Oct 2018 09:05:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 14 Oct 2018 09:05:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 14 Oct 2018 09:05:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 14 Oct 2018 09:05:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 14 Oct 2018 09:05:39 GMT
USER [memcache]
# Sun, 14 Oct 2018 09:05:40 GMT
EXPOSE 11211/tcp
# Sun, 14 Oct 2018 09:05:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268d2f7ebd47879d7fdb66ac2345c49f0dd909618fb05c59358c0d91ebd10215`  
		Last Modified: Sat, 15 Sep 2018 09:22:52 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b497cbfb3f20e3e8781ac5b532b7280e06e4397d3833b2258b885d2c2c3cb614`  
		Last Modified: Sun, 14 Oct 2018 09:05:57 GMT  
		Size: 1.0 MB (1024180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86e41e55c6412fcf893ca3f9d114cf0125da4c1bd4054e33052f6ab827ec879`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234aabacad65b102fd58a4c6c56020a0b0e24129c2e508e2caacece50f43081a`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4fee67b34e5f876d7eda30414a90369d6ab6ea3b6a6b738fbad622c5b873075d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20267031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e4b59c5e2702bfc3fdc531641d559f7ec3995ae4c3c459b9944130a80f410f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:57:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:57:31 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:32 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:14:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 12:14:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:14:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:14:20 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:14:20 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:14:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb97f80d55dfd54b361eb90d206fd8904ea1aa861395dd6ee8199f05ac33f91`  
		Last Modified: Sat, 15 Sep 2018 12:45:22 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf39cd6a17c4dd87c8e660e03d0c40e4d64632e9ae0de6cced417a35c5b46656`  
		Last Modified: Sat, 13 Oct 2018 12:14:36 GMT  
		Size: 991.5 KB (991544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0194fe728b3b7d6cef314138cfbb5cdd0f6d8e3cad3aca5c0d32015e71bf034`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb935c0fe667ffeb97e0d228bb6fd1e9b606903766e5c3b123f3b5a267f3ee`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f89c1701e366f33e0a32ae58c6f2eeff0d0cc9949e7e9465a05ebbf302426673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21342580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40240527be8bad4fdebdd579407a8d0b4c5159efe077a085c1611da18c74a80b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 09:53:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 08:52:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 08:53:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:00:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 09:00:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:00:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:00:30 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:00:31 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:00:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab6e95024c2a66524e1a1453f259a0a3d403e010468d8659de6b474d7888c72`  
		Last Modified: Sat, 15 Sep 2018 10:09:42 GMT  
		Size: 5.0 KB (5032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5750fa07d1f64daadb0ef7e165ed0e534073d09a859fdeef5bfae91ae29e122`  
		Last Modified: Sat, 13 Oct 2018 09:08:14 GMT  
		Size: 1.0 MB (1005488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d20739752368ed7bf96565e900298bbacc22a7334ca281d3b20138adf3f2ab7`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edba193710f67659a779a38f54073affbf08ac9448e0544f1113bad8bafd8c8b`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11` - linux; 386

```console
$ docker pull memcached@sha256:39470fd29f3998ec5081e2a9031d975ae8a7deb5fb212f299c2d606c5e9a7ea2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24184284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612e3efbccb50e4e1d74c653334b7707f8ed85c988fbb66bf049fcae40a52996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 10:47:18 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:44:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:44:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:44:26 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:44:26 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:44:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f385b743a1b19ec8f6e9ce94bf769489b6461ef5f011fcf58adc85bb14d9477`  
		Last Modified: Sat, 15 Sep 2018 10:59:37 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53b91a180620e53548b77f907949ea42a990f54cc740ab954008afddd498283`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 1.1 MB (1052476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2635f8a18d315b4f5d70933bfafbc04925b15cedbb3f532e09bb819108e28b79`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b966376439fc5c43f624a0e91c4951824969b6a19f582ea419d5638cb7e6f66`  
		Last Modified: Sat, 13 Oct 2018 10:50:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11` - linux; ppc64le

```console
$ docker pull memcached@sha256:6b5372903b03c418f6d54a3e95231f15a761988da867d70373b2f22b4c876cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23782868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e653a4916d2eee014a2047ef5f9ac26097aa7baae0769a56cb31104a37f266f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:17:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:46:43 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:46:44 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:01:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:07:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:08:04 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:08:05 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:08:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d4c308ecfc40077cb43b7340dce8e375a1ecb163f5a1edb8165d8b5509bd57`  
		Last Modified: Sat, 15 Sep 2018 08:46:58 GMT  
		Size: 5.0 KB (4992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df4ac36c5050bd608158701b583d26ee5361ff6cd449d57809c62e400ef681`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 1.0 MB (1036924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073d5490d050a345ee442daa8518a95967b7ada15fa429ffead8084f8086499d`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc2715b135740efa0f2260335b981ee7a4f9c6b8337003d755aeb0f99e25fa`  
		Last Modified: Sat, 13 Oct 2018 10:21:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11` - linux; s390x

```console
$ docker pull memcached@sha256:c8f465eea2ebb0eb02db6e9eea1392eeb77530572c799eca7f81b2a2d48f704b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23340400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fc5c79f192e43a5f410636debc7bc06fd8fe1f8f8579e0e6e5a786d4dd1a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:42:22 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:52:57 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:52:58 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 11:56:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 11:56:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 11:56:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 11:56:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 11:56:57 GMT
USER [memcache]
# Sat, 13 Oct 2018 11:56:57 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 11:56:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5987ea36ab1424ed952829971b60afbc37512ec518f4095ea16ab6ab19d4465`  
		Last Modified: Sat, 15 Sep 2018 11:53:43 GMT  
		Size: 5.0 KB (5030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356a168809bd31dd6190eec2ad179dc94bc45fc4cecea3892890a3b936e2b40`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 1000.3 KB (1000341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5310779e092987e01d41c0cf0930668d49c668e183ca6fdcc8aad571c804bae`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d706efb7ae8ed7de2ca9d89bd312efe6a8b630ee21240442831a9abca2eaff3`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5.11-alpine`

```console
$ docker pull memcached@sha256:bfd52276b49f0f93d727c9f3306c430b657d188ef64431e12387bb25d8f638d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.11-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:4dea6d718880a33f334ef690b288fb9d49ae5cff6ba552697155c0f83f9a0a17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e7979fa1754aef988542f456754cb4441dc8dc15599cf58f2489f43cbb652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 01:38:05 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 12 Oct 2018 18:30:48 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:30:49 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:36:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 12 Oct 2018 18:36:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:36:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:36:16 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:36:16 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:36:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f0a546fde6b4e2982fac226908dd36848f92245f510841d2ac5d915350cdce`  
		Last Modified: Sat, 15 Sep 2018 01:44:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9f10d647a9335c1be6a095a551f2ef6cfced777b061c0beb5d760397c944e9`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 2.7 MB (2711103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f274d19a5f8dbe47341bbaffa19d1a5a6eae8a6eb4722ca27073bbf15df283`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a6f87ef31526f220ec57ec14cd180e11ce75ac4e001a42a54579687ec9fdf0`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c1a3f44669a8881dab3595b4a1666dd0461b529db35b063784a83b85447f43c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4755150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9511638aa72eb85beef550c4f93041be421ed5f9bbfb8d8c82b6a88f12f1adc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 07:49:30 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 07:49:41 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 07:49:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 08:20:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 08:20:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 08:20:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 08:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 08:20:22 GMT
USER [memcache]
# Sat, 13 Oct 2018 08:20:23 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 08:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc4ba54ae4d137be594e8733ed2bd1956a6700f22737a3931fbf5d36b91cd`  
		Last Modified: Sun, 16 Sep 2018 08:04:54 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adaea7a0f1e2fc6c3abf6568c6991af03e301f4a91d023763b12ba0f8bd49b6`  
		Last Modified: Sat, 13 Oct 2018 08:20:41 GMT  
		Size: 2.6 MB (2606835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40123b301b116a6d3b6c5879c6d11f892628a9a34be55248c59e9321e7b3a925`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62073a065c614dc9de7997ee531c335644c8a63878495b8f29e04d48bce02b60`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:4da4e8c8aeea07cc88a0bf9d35547d9f3963c09f75851a6a4026e99e1649a2b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4681264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151ad0328c76259a690df5fbe0d1c6f60f587cea14b116676f97fd182d7d3426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:01:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 09:01:07 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:01:08 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:07:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 09:07:31 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:07:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:07:45 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:07:46 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:07:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb74a2db9e475bbb7f9e1479b6b12c8c4db11108ecc4925570a065edfbc559b0`  
		Last Modified: Sat, 15 Sep 2018 10:10:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b83b31451f3c74c05b258738e95e27a2716d961797373ccc04db53a306b1af`  
		Last Modified: Sat, 13 Oct 2018 09:09:46 GMT  
		Size: 2.6 MB (2579667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87304bbbd765dd64206633521293e8b4ec14665f8dafbbd603823218797ae8bd`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063a8232226e1b68b58148ae95eb860013df3df6c4b700db895348d892b4a579`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11-alpine` - linux; 386

```console
$ docker pull memcached@sha256:0d79e30b512a53307b1c5fdd353d925e46de5643be8159003aa7293c4d64ca5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ad23bb93d2927529253f5c0831f2c31f91706f96b9c0334ee8317c0ddf7c70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:53:40 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:50:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:50:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:50:06 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:50:06 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:50:06 GMT
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
	-	`sha256:6b9942a015a0b11686ba1d3d8d03a223b0d4590a067d063405f5b42938bbf60f`  
		Last Modified: Sat, 15 Sep 2018 10:59:58 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e03d32bb03c39be46a57c614def9d36548204869bd9344d22f7a70c7592f5d2`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 2.8 MB (2779466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a101b1951ab12f1556c17631e9d9ad1dff10dc23fc2599e279a31c3d4bebbae`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6824e0731587fa37091c3881994fd8f3b56cfcdcb78cef81aeee135cf9ae44`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:72b9c84ef2522b051be313533fd8827723a6893c838cfc3dcefd98193154fc3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4842611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779bd4e85cc3c55f857a0e65673dd2ea39b41619f0638d57f31f5af2c65a3cd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:40:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:08:21 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:08:22 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:14:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:20:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:21:00 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:21:01 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:21:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f341dd0bab589cabf61519205a507e84ea1de11d632c1892a09f0397c7be538`  
		Last Modified: Sat, 15 Sep 2018 08:47:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4693d482d740509e20b37a4b6423bc8a897de720a51515fe5da18408ada7cbd`  
		Last Modified: Sat, 13 Oct 2018 10:23:06 GMT  
		Size: 2.6 MB (2645520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee676e47b24dfe27a14b75b608237e1fcb1415a87f8c092311e7035792a829`  
		Last Modified: Sat, 13 Oct 2018 10:23:05 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608438bcbd155d46314f041316280313ebb59754769b7d85804eb9749febba9f`  
		Last Modified: Sat, 13 Oct 2018 10:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.11-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a8d001ba3c6f0b92f8f91e60ca2d6c0a4ed007f82bbaf684732b055f210b2c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4943821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf9d296a3700c5ed35421e3b55a81da44e3041a970dbd927372d2e9a90e0ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:49:53 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 11:57:06 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:07 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:00:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 12:00:39 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:00:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:00:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:00:40 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:00:41 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:00:41 GMT
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
	-	`sha256:5effac186d33f37bdc9b9c93bdebb430d7ed2269cb4aada3510139478eea9ba0`  
		Last Modified: Sat, 15 Sep 2018 11:54:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68304be49fd47f1100b9ac235a01d43147056e8a510307e5f32c16730bf6dc96`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 2.6 MB (2634240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19241b8cc974c0023be582625741f2cc9fb0936f94466eb8c8807dd3f54d723c`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03caee614fa450c6f243206df6743c552ad658871daef41f2cee240fdaff3a57`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:bfd52276b49f0f93d727c9f3306c430b657d188ef64431e12387bb25d8f638d5
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
$ docker pull memcached@sha256:4dea6d718880a33f334ef690b288fb9d49ae5cff6ba552697155c0f83f9a0a17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e7979fa1754aef988542f456754cb4441dc8dc15599cf58f2489f43cbb652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 01:38:05 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 12 Oct 2018 18:30:48 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:30:49 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:36:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 12 Oct 2018 18:36:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:36:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:36:16 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:36:16 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:36:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f0a546fde6b4e2982fac226908dd36848f92245f510841d2ac5d915350cdce`  
		Last Modified: Sat, 15 Sep 2018 01:44:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9f10d647a9335c1be6a095a551f2ef6cfced777b061c0beb5d760397c944e9`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 2.7 MB (2711103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f274d19a5f8dbe47341bbaffa19d1a5a6eae8a6eb4722ca27073bbf15df283`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a6f87ef31526f220ec57ec14cd180e11ce75ac4e001a42a54579687ec9fdf0`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c1a3f44669a8881dab3595b4a1666dd0461b529db35b063784a83b85447f43c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4755150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9511638aa72eb85beef550c4f93041be421ed5f9bbfb8d8c82b6a88f12f1adc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 07:49:30 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 07:49:41 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 07:49:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 08:20:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 08:20:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 08:20:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 08:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 08:20:22 GMT
USER [memcache]
# Sat, 13 Oct 2018 08:20:23 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 08:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc4ba54ae4d137be594e8733ed2bd1956a6700f22737a3931fbf5d36b91cd`  
		Last Modified: Sun, 16 Sep 2018 08:04:54 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adaea7a0f1e2fc6c3abf6568c6991af03e301f4a91d023763b12ba0f8bd49b6`  
		Last Modified: Sat, 13 Oct 2018 08:20:41 GMT  
		Size: 2.6 MB (2606835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40123b301b116a6d3b6c5879c6d11f892628a9a34be55248c59e9321e7b3a925`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62073a065c614dc9de7997ee531c335644c8a63878495b8f29e04d48bce02b60`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:4da4e8c8aeea07cc88a0bf9d35547d9f3963c09f75851a6a4026e99e1649a2b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4681264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151ad0328c76259a690df5fbe0d1c6f60f587cea14b116676f97fd182d7d3426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:01:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 09:01:07 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:01:08 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:07:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 09:07:31 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:07:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:07:45 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:07:46 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:07:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb74a2db9e475bbb7f9e1479b6b12c8c4db11108ecc4925570a065edfbc559b0`  
		Last Modified: Sat, 15 Sep 2018 10:10:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b83b31451f3c74c05b258738e95e27a2716d961797373ccc04db53a306b1af`  
		Last Modified: Sat, 13 Oct 2018 09:09:46 GMT  
		Size: 2.6 MB (2579667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87304bbbd765dd64206633521293e8b4ec14665f8dafbbd603823218797ae8bd`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063a8232226e1b68b58148ae95eb860013df3df6c4b700db895348d892b4a579`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; 386

```console
$ docker pull memcached@sha256:0d79e30b512a53307b1c5fdd353d925e46de5643be8159003aa7293c4d64ca5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ad23bb93d2927529253f5c0831f2c31f91706f96b9c0334ee8317c0ddf7c70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:53:40 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:50:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:50:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:50:06 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:50:06 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:50:06 GMT
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
	-	`sha256:6b9942a015a0b11686ba1d3d8d03a223b0d4590a067d063405f5b42938bbf60f`  
		Last Modified: Sat, 15 Sep 2018 10:59:58 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e03d32bb03c39be46a57c614def9d36548204869bd9344d22f7a70c7592f5d2`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 2.8 MB (2779466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a101b1951ab12f1556c17631e9d9ad1dff10dc23fc2599e279a31c3d4bebbae`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6824e0731587fa37091c3881994fd8f3b56cfcdcb78cef81aeee135cf9ae44`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:72b9c84ef2522b051be313533fd8827723a6893c838cfc3dcefd98193154fc3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4842611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779bd4e85cc3c55f857a0e65673dd2ea39b41619f0638d57f31f5af2c65a3cd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:40:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:08:21 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:08:22 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:14:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:20:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:21:00 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:21:01 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:21:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f341dd0bab589cabf61519205a507e84ea1de11d632c1892a09f0397c7be538`  
		Last Modified: Sat, 15 Sep 2018 08:47:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4693d482d740509e20b37a4b6423bc8a897de720a51515fe5da18408ada7cbd`  
		Last Modified: Sat, 13 Oct 2018 10:23:06 GMT  
		Size: 2.6 MB (2645520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee676e47b24dfe27a14b75b608237e1fcb1415a87f8c092311e7035792a829`  
		Last Modified: Sat, 13 Oct 2018 10:23:05 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608438bcbd155d46314f041316280313ebb59754769b7d85804eb9749febba9f`  
		Last Modified: Sat, 13 Oct 2018 10:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a8d001ba3c6f0b92f8f91e60ca2d6c0a4ed007f82bbaf684732b055f210b2c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4943821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf9d296a3700c5ed35421e3b55a81da44e3041a970dbd927372d2e9a90e0ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:49:53 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 11:57:06 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:07 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:00:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 12:00:39 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:00:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:00:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:00:40 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:00:41 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:00:41 GMT
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
	-	`sha256:5effac186d33f37bdc9b9c93bdebb430d7ed2269cb4aada3510139478eea9ba0`  
		Last Modified: Sat, 15 Sep 2018 11:54:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68304be49fd47f1100b9ac235a01d43147056e8a510307e5f32c16730bf6dc96`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 2.6 MB (2634240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19241b8cc974c0023be582625741f2cc9fb0936f94466eb8c8807dd3f54d723c`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03caee614fa450c6f243206df6743c552ad658871daef41f2cee240fdaff3a57`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:bfd52276b49f0f93d727c9f3306c430b657d188ef64431e12387bb25d8f638d5
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
$ docker pull memcached@sha256:4dea6d718880a33f334ef690b288fb9d49ae5cff6ba552697155c0f83f9a0a17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e7979fa1754aef988542f456754cb4441dc8dc15599cf58f2489f43cbb652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 01:38:05 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 12 Oct 2018 18:30:48 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:30:49 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:36:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 12 Oct 2018 18:36:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:36:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:36:16 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:36:16 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:36:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f0a546fde6b4e2982fac226908dd36848f92245f510841d2ac5d915350cdce`  
		Last Modified: Sat, 15 Sep 2018 01:44:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9f10d647a9335c1be6a095a551f2ef6cfced777b061c0beb5d760397c944e9`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 2.7 MB (2711103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f274d19a5f8dbe47341bbaffa19d1a5a6eae8a6eb4722ca27073bbf15df283`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a6f87ef31526f220ec57ec14cd180e11ce75ac4e001a42a54579687ec9fdf0`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c1a3f44669a8881dab3595b4a1666dd0461b529db35b063784a83b85447f43c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4755150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9511638aa72eb85beef550c4f93041be421ed5f9bbfb8d8c82b6a88f12f1adc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 07:49:30 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 07:49:41 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 07:49:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 08:20:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 08:20:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 08:20:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 08:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 08:20:22 GMT
USER [memcache]
# Sat, 13 Oct 2018 08:20:23 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 08:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc4ba54ae4d137be594e8733ed2bd1956a6700f22737a3931fbf5d36b91cd`  
		Last Modified: Sun, 16 Sep 2018 08:04:54 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adaea7a0f1e2fc6c3abf6568c6991af03e301f4a91d023763b12ba0f8bd49b6`  
		Last Modified: Sat, 13 Oct 2018 08:20:41 GMT  
		Size: 2.6 MB (2606835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40123b301b116a6d3b6c5879c6d11f892628a9a34be55248c59e9321e7b3a925`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62073a065c614dc9de7997ee531c335644c8a63878495b8f29e04d48bce02b60`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:4da4e8c8aeea07cc88a0bf9d35547d9f3963c09f75851a6a4026e99e1649a2b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4681264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151ad0328c76259a690df5fbe0d1c6f60f587cea14b116676f97fd182d7d3426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:01:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 09:01:07 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:01:08 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:07:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 09:07:31 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:07:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:07:45 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:07:46 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:07:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb74a2db9e475bbb7f9e1479b6b12c8c4db11108ecc4925570a065edfbc559b0`  
		Last Modified: Sat, 15 Sep 2018 10:10:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b83b31451f3c74c05b258738e95e27a2716d961797373ccc04db53a306b1af`  
		Last Modified: Sat, 13 Oct 2018 09:09:46 GMT  
		Size: 2.6 MB (2579667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87304bbbd765dd64206633521293e8b4ec14665f8dafbbd603823218797ae8bd`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063a8232226e1b68b58148ae95eb860013df3df6c4b700db895348d892b4a579`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; 386

```console
$ docker pull memcached@sha256:0d79e30b512a53307b1c5fdd353d925e46de5643be8159003aa7293c4d64ca5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ad23bb93d2927529253f5c0831f2c31f91706f96b9c0334ee8317c0ddf7c70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:53:40 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:50:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:50:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:50:06 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:50:06 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:50:06 GMT
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
	-	`sha256:6b9942a015a0b11686ba1d3d8d03a223b0d4590a067d063405f5b42938bbf60f`  
		Last Modified: Sat, 15 Sep 2018 10:59:58 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e03d32bb03c39be46a57c614def9d36548204869bd9344d22f7a70c7592f5d2`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 2.8 MB (2779466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a101b1951ab12f1556c17631e9d9ad1dff10dc23fc2599e279a31c3d4bebbae`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6824e0731587fa37091c3881994fd8f3b56cfcdcb78cef81aeee135cf9ae44`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:72b9c84ef2522b051be313533fd8827723a6893c838cfc3dcefd98193154fc3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4842611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779bd4e85cc3c55f857a0e65673dd2ea39b41619f0638d57f31f5af2c65a3cd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:40:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:08:21 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:08:22 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:14:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:20:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:21:00 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:21:01 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:21:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f341dd0bab589cabf61519205a507e84ea1de11d632c1892a09f0397c7be538`  
		Last Modified: Sat, 15 Sep 2018 08:47:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4693d482d740509e20b37a4b6423bc8a897de720a51515fe5da18408ada7cbd`  
		Last Modified: Sat, 13 Oct 2018 10:23:06 GMT  
		Size: 2.6 MB (2645520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee676e47b24dfe27a14b75b608237e1fcb1415a87f8c092311e7035792a829`  
		Last Modified: Sat, 13 Oct 2018 10:23:05 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608438bcbd155d46314f041316280313ebb59754769b7d85804eb9749febba9f`  
		Last Modified: Sat, 13 Oct 2018 10:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a8d001ba3c6f0b92f8f91e60ca2d6c0a4ed007f82bbaf684732b055f210b2c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4943821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf9d296a3700c5ed35421e3b55a81da44e3041a970dbd927372d2e9a90e0ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:49:53 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 11:57:06 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:07 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:00:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 12:00:39 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:00:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:00:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:00:40 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:00:41 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:00:41 GMT
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
	-	`sha256:5effac186d33f37bdc9b9c93bdebb430d7ed2269cb4aada3510139478eea9ba0`  
		Last Modified: Sat, 15 Sep 2018 11:54:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68304be49fd47f1100b9ac235a01d43147056e8a510307e5f32c16730bf6dc96`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 2.6 MB (2634240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19241b8cc974c0023be582625741f2cc9fb0936f94466eb8c8807dd3f54d723c`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03caee614fa450c6f243206df6743c552ad658871daef41f2cee240fdaff3a57`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:bfd52276b49f0f93d727c9f3306c430b657d188ef64431e12387bb25d8f638d5
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
$ docker pull memcached@sha256:4dea6d718880a33f334ef690b288fb9d49ae5cff6ba552697155c0f83f9a0a17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e7979fa1754aef988542f456754cb4441dc8dc15599cf58f2489f43cbb652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 01:38:05 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Fri, 12 Oct 2018 18:30:48 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:30:49 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:36:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Fri, 12 Oct 2018 18:36:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:36:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:36:16 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:36:16 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:36:16 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f0a546fde6b4e2982fac226908dd36848f92245f510841d2ac5d915350cdce`  
		Last Modified: Sat, 15 Sep 2018 01:44:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9f10d647a9335c1be6a095a551f2ef6cfced777b061c0beb5d760397c944e9`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 2.7 MB (2711103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f274d19a5f8dbe47341bbaffa19d1a5a6eae8a6eb4722ca27073bbf15df283`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a6f87ef31526f220ec57ec14cd180e11ce75ac4e001a42a54579687ec9fdf0`  
		Last Modified: Fri, 12 Oct 2018 18:37:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c1a3f44669a8881dab3595b4a1666dd0461b529db35b063784a83b85447f43c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4755150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9511638aa72eb85beef550c4f93041be421ed5f9bbfb8d8c82b6a88f12f1adc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 07:49:30 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 07:49:41 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 07:49:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 08:20:15 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 08:20:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 08:20:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 08:20:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 08:20:22 GMT
USER [memcache]
# Sat, 13 Oct 2018 08:20:23 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 08:20:24 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc4ba54ae4d137be594e8733ed2bd1956a6700f22737a3931fbf5d36b91cd`  
		Last Modified: Sun, 16 Sep 2018 08:04:54 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adaea7a0f1e2fc6c3abf6568c6991af03e301f4a91d023763b12ba0f8bd49b6`  
		Last Modified: Sat, 13 Oct 2018 08:20:41 GMT  
		Size: 2.6 MB (2606835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40123b301b116a6d3b6c5879c6d11f892628a9a34be55248c59e9321e7b3a925`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62073a065c614dc9de7997ee531c335644c8a63878495b8f29e04d48bce02b60`  
		Last Modified: Sat, 13 Oct 2018 08:20:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:4da4e8c8aeea07cc88a0bf9d35547d9f3963c09f75851a6a4026e99e1649a2b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4681264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151ad0328c76259a690df5fbe0d1c6f60f587cea14b116676f97fd182d7d3426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:01:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 09:01:07 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:01:08 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:07:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 09:07:31 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:07:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:07:45 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:07:46 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:07:46 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb74a2db9e475bbb7f9e1479b6b12c8c4db11108ecc4925570a065edfbc559b0`  
		Last Modified: Sat, 15 Sep 2018 10:10:36 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b83b31451f3c74c05b258738e95e27a2716d961797373ccc04db53a306b1af`  
		Last Modified: Sat, 13 Oct 2018 09:09:46 GMT  
		Size: 2.6 MB (2579667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87304bbbd765dd64206633521293e8b4ec14665f8dafbbd603823218797ae8bd`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063a8232226e1b68b58148ae95eb860013df3df6c4b700db895348d892b4a579`  
		Last Modified: Sat, 13 Oct 2018 09:09:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; 386

```console
$ docker pull memcached@sha256:0d79e30b512a53307b1c5fdd353d925e46de5643be8159003aa7293c4d64ca5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5052753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ad23bb93d2927529253f5c0831f2c31f91706f96b9c0334ee8317c0ddf7c70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:53:40 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:44:35 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:50:05 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:50:05 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:50:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:50:06 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:50:06 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:50:06 GMT
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
	-	`sha256:6b9942a015a0b11686ba1d3d8d03a223b0d4590a067d063405f5b42938bbf60f`  
		Last Modified: Sat, 15 Sep 2018 10:59:58 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e03d32bb03c39be46a57c614def9d36548204869bd9344d22f7a70c7592f5d2`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 2.8 MB (2779466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a101b1951ab12f1556c17631e9d9ad1dff10dc23fc2599e279a31c3d4bebbae`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6824e0731587fa37091c3881994fd8f3b56cfcdcb78cef81aeee135cf9ae44`  
		Last Modified: Sat, 13 Oct 2018 10:50:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:72b9c84ef2522b051be313533fd8827723a6893c838cfc3dcefd98193154fc3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4842611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779bd4e85cc3c55f857a0e65673dd2ea39b41619f0638d57f31f5af2c65a3cd9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 08:40:33 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 10:08:21 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:08:22 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:14:00 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 10:20:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:21:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:21:00 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:21:01 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:21:02 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f341dd0bab589cabf61519205a507e84ea1de11d632c1892a09f0397c7be538`  
		Last Modified: Sat, 15 Sep 2018 08:47:59 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4693d482d740509e20b37a4b6423bc8a897de720a51515fe5da18408ada7cbd`  
		Last Modified: Sat, 13 Oct 2018 10:23:06 GMT  
		Size: 2.6 MB (2645520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee676e47b24dfe27a14b75b608237e1fcb1415a87f8c092311e7035792a829`  
		Last Modified: Sat, 13 Oct 2018 10:23:05 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608438bcbd155d46314f041316280313ebb59754769b7d85804eb9749febba9f`  
		Last Modified: Sat, 13 Oct 2018 10:23:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:0a8d001ba3c6f0b92f8f91e60ca2d6c0a4ed007f82bbaf684732b055f210b2c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4943821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bf9d296a3700c5ed35421e3b55a81da44e3041a970dbd927372d2e9a90e0ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 11:49:53 GMT
RUN addgroup -g 11211 memcache && adduser -D -u 11211 -G memcache memcache
# Sat, 13 Oct 2018 11:57:06 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:07 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:00:35 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		wget 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 13 Oct 2018 12:00:39 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:00:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:00:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:00:40 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:00:41 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:00:41 GMT
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
	-	`sha256:5effac186d33f37bdc9b9c93bdebb430d7ed2269cb4aada3510139478eea9ba0`  
		Last Modified: Sat, 15 Sep 2018 11:54:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68304be49fd47f1100b9ac235a01d43147056e8a510307e5f32c16730bf6dc96`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 2.6 MB (2634240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19241b8cc974c0023be582625741f2cc9fb0936f94466eb8c8807dd3f54d723c`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03caee614fa450c6f243206df6743c552ad658871daef41f2cee240fdaff3a57`  
		Last Modified: Sat, 13 Oct 2018 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:c10e6524b09124d0d2185ff316f42f008f1d486b88325f5c7484f30b533d58e7
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
$ docker pull memcached@sha256:cf8013fcafcc6af2ab10fa0b711950749c05e95d4ef507b33e58c54920f7c0ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23535178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9ee55f825afeb684fea3f6fc3ba1407c6b0972a28d38e75bcad9feefd72e61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 01:19:45 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_VERSION=1.5.11
# Fri, 12 Oct 2018 18:24:33 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Fri, 12 Oct 2018 18:30:14 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Fri, 12 Oct 2018 18:30:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Fri, 12 Oct 2018 18:30:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 12 Oct 2018 18:30:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Oct 2018 18:30:27 GMT
USER [memcache]
# Fri, 12 Oct 2018 18:30:27 GMT
EXPOSE 11211/tcp
# Fri, 12 Oct 2018 18:30:27 GMT
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
	-	`sha256:c91cdce906a874a42987b0a80915fa904732e9e8de506f41ba84ba7a68046d9a`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 1.0 MB (1043805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5bfb063c1c6124f57c84e4f6f3ed62829f8db00c528169ed0e61a95eefc14e`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f1e2d773ca148cb21ba19cbf69c227d46b78830b3582e419adf299180d986`  
		Last Modified: Fri, 12 Oct 2018 18:36:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:b87c0b18a76b45115b78d85d7798ab2e6310ad870f3b95fb6a751c5c6120639a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22192373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8e5dc69410c6b6ae75417a1eeb6bed6acceee7663bda503775e09968215a3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:48:35 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:14:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:15:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sun, 14 Oct 2018 09:05:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sun, 14 Oct 2018 09:05:34 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sun, 14 Oct 2018 09:05:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sun, 14 Oct 2018 09:05:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 14 Oct 2018 09:05:39 GMT
USER [memcache]
# Sun, 14 Oct 2018 09:05:40 GMT
EXPOSE 11211/tcp
# Sun, 14 Oct 2018 09:05:41 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268d2f7ebd47879d7fdb66ac2345c49f0dd909618fb05c59358c0d91ebd10215`  
		Last Modified: Sat, 15 Sep 2018 09:22:52 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b497cbfb3f20e3e8781ac5b532b7280e06e4397d3833b2258b885d2c2c3cb614`  
		Last Modified: Sun, 14 Oct 2018 09:05:57 GMT  
		Size: 1.0 MB (1024180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86e41e55c6412fcf893ca3f9d114cf0125da4c1bd4054e33052f6ab827ec879`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234aabacad65b102fd58a4c6c56020a0b0e24129c2e508e2caacece50f43081a`  
		Last Modified: Sun, 14 Oct 2018 09:05:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:4fee67b34e5f876d7eda30414a90369d6ab6ea3b6a6b738fbad622c5b873075d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20267031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e4b59c5e2702bfc3fdc531641d559f7ec3995ae4c3c459b9944130a80f410f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:57:44 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:57:31 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:57:32 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 12:14:12 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 12:14:13 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 12:14:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 12:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 12:14:20 GMT
USER [memcache]
# Sat, 13 Oct 2018 12:14:20 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 12:14:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb97f80d55dfd54b361eb90d206fd8904ea1aa861395dd6ee8199f05ac33f91`  
		Last Modified: Sat, 15 Sep 2018 12:45:22 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf39cd6a17c4dd87c8e660e03d0c40e4d64632e9ae0de6cced417a35c5b46656`  
		Last Modified: Sat, 13 Oct 2018 12:14:36 GMT  
		Size: 991.5 KB (991544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0194fe728b3b7d6cef314138cfbb5cdd0f6d8e3cad3aca5c0d32015e71bf034`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb935c0fe667ffeb97e0d228bb6fd1e9b606903766e5c3b123f3b5a267f3ee`  
		Last Modified: Sat, 13 Oct 2018 12:14:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:f89c1701e366f33e0a32ae58c6f2eeff0d0cc9949e7e9465a05ebbf302426673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21342580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40240527be8bad4fdebdd579407a8d0b4c5159efe077a085c1611da18c74a80b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 09:53:19 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 08:52:59 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 08:53:00 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 09:00:16 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 09:00:17 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 09:00:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 09:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 09:00:30 GMT
USER [memcache]
# Sat, 13 Oct 2018 09:00:31 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 09:00:31 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab6e95024c2a66524e1a1453f259a0a3d403e010468d8659de6b474d7888c72`  
		Last Modified: Sat, 15 Sep 2018 10:09:42 GMT  
		Size: 5.0 KB (5032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5750fa07d1f64daadb0ef7e165ed0e534073d09a859fdeef5bfae91ae29e122`  
		Last Modified: Sat, 13 Oct 2018 09:08:14 GMT  
		Size: 1.0 MB (1005488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d20739752368ed7bf96565e900298bbacc22a7334ca281d3b20138adf3f2ab7`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edba193710f67659a779a38f54073affbf08ac9448e0544f1113bad8bafd8c8b`  
		Last Modified: Sat, 13 Oct 2018 09:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:39470fd29f3998ec5081e2a9031d975ae8a7deb5fb212f299c2d606c5e9a7ea2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24184284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:612e3efbccb50e4e1d74c653334b7707f8ed85c988fbb66bf049fcae40a52996`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 10:47:18 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 10:38:42 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:44:24 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:44:25 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:44:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:44:26 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:44:26 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:44:26 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f385b743a1b19ec8f6e9ce94bf769489b6461ef5f011fcf58adc85bb14d9477`  
		Last Modified: Sat, 15 Sep 2018 10:59:37 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53b91a180620e53548b77f907949ea42a990f54cc740ab954008afddd498283`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 1.1 MB (1052476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2635f8a18d315b4f5d70933bfafbc04925b15cedbb3f532e09bb819108e28b79`  
		Last Modified: Sat, 13 Oct 2018 10:50:19 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b966376439fc5c43f624a0e91c4951824969b6a19f582ea419d5638cb7e6f66`  
		Last Modified: Sat, 13 Oct 2018 10:50:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:6b5372903b03c418f6d54a3e95231f15a761988da867d70373b2f22b4c876cf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23782868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e653a4916d2eee014a2047ef5f9ac26097aa7baae0769a56cb31104a37f266f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 08:17:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 09:46:43 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 09:46:44 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 10:01:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 10:07:58 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 10:08:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 10:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 10:08:04 GMT
USER [memcache]
# Sat, 13 Oct 2018 10:08:05 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 10:08:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d4c308ecfc40077cb43b7340dce8e375a1ecb163f5a1edb8165d8b5509bd57`  
		Last Modified: Sat, 15 Sep 2018 08:46:58 GMT  
		Size: 5.0 KB (4992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23df4ac36c5050bd608158701b583d26ee5361ff6cd449d57809c62e400ef681`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 1.0 MB (1036924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073d5490d050a345ee442daa8518a95967b7ada15fa429ffead8084f8086499d`  
		Last Modified: Sat, 13 Oct 2018 10:21:28 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fc2715b135740efa0f2260335b981ee7a4f9c6b8337003d755aeb0f99e25fa`  
		Last Modified: Sat, 13 Oct 2018 10:21:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:c8f465eea2ebb0eb02db6e9eea1392eeb77530572c799eca7f81b2a2d48f704b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23340400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fc5c79f192e43a5f410636debc7bc06fd8fe1f8f8579e0e6e5a786d4dd1a07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Sat, 15 Sep 2018 11:42:22 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Sat, 13 Oct 2018 11:52:57 GMT
ENV MEMCACHED_VERSION=1.5.11
# Sat, 13 Oct 2018 11:52:58 GMT
ENV MEMCACHED_SHA1=59b800337ae4bb164b85a5779fa5b72d5f9af66c
# Sat, 13 Oct 2018 11:56:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 13 Oct 2018 11:56:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 13 Oct 2018 11:56:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 13 Oct 2018 11:56:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 13 Oct 2018 11:56:57 GMT
USER [memcache]
# Sat, 13 Oct 2018 11:56:57 GMT
EXPOSE 11211/tcp
# Sat, 13 Oct 2018 11:56:58 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5987ea36ab1424ed952829971b60afbc37512ec518f4095ea16ab6ab19d4465`  
		Last Modified: Sat, 15 Sep 2018 11:53:43 GMT  
		Size: 5.0 KB (5030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b356a168809bd31dd6190eec2ad179dc94bc45fc4cecea3892890a3b936e2b40`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 1000.3 KB (1000341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5310779e092987e01d41c0cf0930668d49c668e183ca6fdcc8aad571c804bae`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d706efb7ae8ed7de2ca9d89bd312efe6a8b630ee21240442831a9abca2eaff3`  
		Last Modified: Sat, 13 Oct 2018 12:00:56 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

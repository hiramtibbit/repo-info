## `memcached:latest`

```console
$ docker pull memcached@sha256:837dbcf0b35a906f4e14bb49b12aca5df74128a167ca134d03d5cc9900a659d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

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

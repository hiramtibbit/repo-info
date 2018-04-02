## `memcached:latest`

```console
$ docker pull memcached@sha256:688513635b63e1fa910a645a9cd4b0e153c2a1814e1d24c79d655d9e685c4f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:3690cfbe0d97d17f85dc38c13919816238363244555f453a0cdfff4b2d13c6ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23468534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784b59c50820f8375de66148763f3a1503748866fc01143e7befcca468433127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:22:54 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:15:49 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:19:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 31 Mar 2018 06:19:19 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:19:20 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:19:21 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:19:21 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d7f86ee24a8d57fa91e48cbc35a25711a84503b27d795922afe464ae984b77`  
		Last Modified: Wed, 14 Mar 2018 06:26:51 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d1a0ca9e18eab9c230ddd666fa7f18d2ded92517631a1c6b8e3bc279643b8e`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 977.4 KB (977395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea7792f94782f38195a5839774a4c8a409941333d788ba77440b9ca4256b56`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6683ee625f6e4ea4fce6b6873a50d4885c92f96f044a4387e239682a78d8e1b`  
		Last Modified: Sat, 31 Mar 2018 06:41:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:310e99df53bcc861b11ffca577fa44cb1d5c30efb3711a7a74a08abbdf440e0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22135734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2601cccb0a80ef6f07b168070ef1864188445b1e316eb5e6c1af95dfe008a3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:33:23 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Apr 2018 16:27:42 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:27:42 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:41:08 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Apr 2018 16:41:09 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:41:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:41:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:41:14 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:41:14 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:41:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69d24e1e3c0700e5612191be3a2bd23d1f706cfdc55eb7125575cfbda18f642`  
		Last Modified: Wed, 14 Mar 2018 20:47:57 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba61689633a43e0026970338540989c72757cee93aaef1e449039f81b84efc3`  
		Last Modified: Mon, 02 Apr 2018 16:41:35 GMT  
		Size: 968.6 KB (968623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1430ecf36067102598f7e4825cc06ae8e6c6aa0efd2f1f157636190ab06e7c`  
		Last Modified: Mon, 02 Apr 2018 16:41:33 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd2886b622d51574b3025c1afd8d531df66c7e37aac4cace28da696f90015f`  
		Last Modified: Mon, 02 Apr 2018 16:41:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:29eec540ad8250674a1b905243223405ea8b40911d8e84180b77c0b4bdaa3096
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20216551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a6b26bd171bae5dcd7baa877931fbf79528cba1b969084a51ad28a5a084e4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:05:36 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Apr 2018 17:45:40 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 17:45:41 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 17:58:29 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Apr 2018 17:58:30 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 17:58:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 17:58:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:58:36 GMT
USER [memcache]
# Mon, 02 Apr 2018 17:58:36 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 17:58:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440d8e65b1604bb0484dfc1417ac47284f364be328e55e40b2718d0f9b972c37`  
		Last Modified: Wed, 14 Mar 2018 13:18:23 GMT  
		Size: 1.7 KB (1734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc30aacb88f578738b03dfcc91754484421e040e851f4ff49a67f72da64c604d`  
		Last Modified: Mon, 02 Apr 2018 17:59:03 GMT  
		Size: 936.8 KB (936788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6dfffb6e09960688aae13d064cb1b1e24f12b678a8b0b0ceb50bcb2548eaf`  
		Last Modified: Mon, 02 Apr 2018 17:59:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464b9b7898347e541d64d5029c533c525c2812500edf1dd51f3c8b19027dc56e`  
		Last Modified: Mon, 02 Apr 2018 17:59:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:60a9dbbccb4fa8560ba611a92877e67929f733fa1a08054d69445054d22da8d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21288932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b885ebcc6d929ade2d3578087a91f4cd3c041e6013a23836f87a05d0f8bc215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:34:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Apr 2018 16:45:45 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:45:46 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:51:15 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Apr 2018 16:51:15 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:51:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:51:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:51:35 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:51:36 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:51:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a2da338f17c198419ea9a348664202524575e76f84fab203cc647665ce48b8`  
		Last Modified: Wed, 14 Mar 2018 19:40:26 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35db66f58602eabf8a349e1d19aa2ec38b02929b4db2a5a0c9582891392b005`  
		Last Modified: Mon, 02 Apr 2018 16:57:26 GMT  
		Size: 949.6 KB (949570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561d2df4c36c2dd3b569281532c7190becc2ea592482adba015db31222cbd15b`  
		Last Modified: Mon, 02 Apr 2018 16:57:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724eedc6164c8b3cae5cc60b4e4082f2e14a5e49ccc54746c7ebd8e164ceaf5`  
		Last Modified: Mon, 02 Apr 2018 16:57:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:fbf93d5df569e2a64109775763d485063894836557fb8ce0cc3db023b0e67b68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23729323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf67fa55c1cdefac7944fddef48735ca7bae98c6dee519dd1dec47428fe155`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:34:32 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Apr 2018 16:41:56 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:41:58 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:50:02 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Apr 2018 16:50:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:50:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:50:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:50:15 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:50:21 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:50:23 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb4e863d67b673457e8ba55bb01fa5c5900400c26dd1583919919c142c4a1d9`  
		Last Modified: Thu, 15 Mar 2018 02:42:49 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d482658b1c071d8bdcedaabd043a898c128f297393f660994b0bf95cd0bfd31`  
		Last Modified: Mon, 02 Apr 2018 16:55:21 GMT  
		Size: 981.0 KB (981019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7023c3a4781ab5c0d1595aa7bb4fb9126f2b54036d7abe1649bd51d2bae6f7`  
		Last Modified: Mon, 02 Apr 2018 16:55:21 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb64fd09e06b392300e636c84c48d401d15cac8fcf1b73e654d81d4aaa37867`  
		Last Modified: Mon, 02 Apr 2018 16:55:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:a4969246e5579081f3d7ecb4400ebcc1a5378f506021502153d2f5f048cc2ebd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23340358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a27eb66bf8c9bd7cf1ba6c626cca9d7762854a95d3597ad4edb12fcf8fb40d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:08:59 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Mon, 02 Apr 2018 16:55:11 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:55:11 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:58:51 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 02 Apr 2018 16:58:51 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:58:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:58:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:58:53 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:58:53 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:58:53 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecff5c1db03eeefb105a2d67c1510d94088d6f320d795bc1a440bbfb9741d7f`  
		Last Modified: Wed, 14 Mar 2018 06:12:46 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91302b3bbdd93c12cc816793a37444af050eb1ec370f45f944468db2583e9761`  
		Last Modified: Mon, 02 Apr 2018 17:03:50 GMT  
		Size: 997.7 KB (997713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfbf5a7cf4fd5f1686d59561ded24f6e524b0d5f0c87f3eef432089a2509142`  
		Last Modified: Mon, 02 Apr 2018 17:03:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5548f836b4dc3ec8d709632ac6dca53d9ee33fe076caa1747d36da09fc850b`  
		Last Modified: Mon, 02 Apr 2018 17:03:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `memcached`

-	[`memcached:1`](#memcached1)
-	[`memcached:1.5`](#memcached15)
-	[`memcached:1.5.7`](#memcached157)
-	[`memcached:1.5.7-alpine`](#memcached157-alpine)
-	[`memcached:1.5-alpine`](#memcached15-alpine)
-	[`memcached:1-alpine`](#memcached1-alpine)
-	[`memcached:alpine`](#memcachedalpine)
-	[`memcached:latest`](#memcachedlatest)

## `memcached:1`

```console
$ docker pull memcached@sha256:9a351fc64642152d1ab6a0588cc0cc12cb2008bf2e9cb3281a5d2f9022eef298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1` - linux; amd64

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

### `memcached:1` - linux; arm variant v5

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

### `memcached:1` - linux; arm64 variant v8

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

### `memcached:1` - linux; ppc64le

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

### `memcached:1` - linux; s390x

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

## `memcached:1.5`

```console
$ docker pull memcached@sha256:9a351fc64642152d1ab6a0588cc0cc12cb2008bf2e9cb3281a5d2f9022eef298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5` - linux; amd64

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

### `memcached:1.5` - linux; arm variant v5

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

### `memcached:1.5` - linux; arm64 variant v8

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

### `memcached:1.5` - linux; ppc64le

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

### `memcached:1.5` - linux; s390x

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

## `memcached:1.5.7`

```console
$ docker pull memcached@sha256:9a351fc64642152d1ab6a0588cc0cc12cb2008bf2e9cb3281a5d2f9022eef298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.7` - linux; amd64

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

### `memcached:1.5.7` - linux; arm variant v5

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

### `memcached:1.5.7` - linux; arm64 variant v8

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

### `memcached:1.5.7` - linux; ppc64le

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

### `memcached:1.5.7` - linux; s390x

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

## `memcached:1.5.7-alpine`

```console
$ docker pull memcached@sha256:599ae6240230316020d65ec9fde47367264703b0f8f19b521d60cdaf89a6f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5.7-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.7-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61421e6bbee34aab62256f2c40cb124d5ea702d72c4d902ea36d5f58c865d98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27acf5fecd77bbf66cd0313cf1139d2cc78b1a965d575ebe499c1c820b4ba93d`
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
# Mon, 02 Apr 2018 16:52:25 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:52:26 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:56:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:56:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:56:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:56:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:56:49 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:56:50 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:56:51 GMT
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
	-	`sha256:3cf457c322b82f9b03770028da6f7e169221c9fd61dea490c94c55e8f2533747`  
		Last Modified: Mon, 02 Apr 2018 16:59:22 GMT  
		Size: 1.7 MB (1683819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5e4abb3aed39d08d6d1383a74bef4654be04ca00b3c7e716602e4df49e272`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a3474e6bb3e127f0ae4716992e7167104e9f45de2e6c490c289c5016e41e1`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.7-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8198eb0334690ce5fbeebb6fb00d568768a6c609090004f609553ea2b4b5e091
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3827507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac03d6008590584d1034dd477238a5261bc21fa3f99b0e78c43ca51a0d7b2df3`
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
# Mon, 02 Apr 2018 16:50:43 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:50:45 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:54:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:54:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:54:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:54:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:54:54 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:54:55 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:54:57 GMT
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
	-	`sha256:3bcb1bb5cb06e8890880507de7e018a61317d1deb298d92abc8f46a5dc2413aa`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 1.7 MB (1744180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d0726faddf63d86ffd93d5a642426678e276c5b8d5a237581e8e191288ff76`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e103c053bff806d370e06afd944796b0344e37b1b03ca7c3d373f579d31b9`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5.7-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:27a7f131635b25fbfc2010c0f70abed1f1af9f1314b5874658ceb2d2a4d0d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ef7014982c8cab9ab71edf28599a09e8f892f91223100c6dbb969b5295376a`
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
# Mon, 02 Apr 2018 16:59:03 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:59:04 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 17:03:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 17:03:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 17:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 17:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:03:05 GMT
USER [memcache]
# Mon, 02 Apr 2018 17:03:07 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 17:03:11 GMT
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
	-	`sha256:7ac2b757994e0a53d65a72f00e57623d862b65d1527f5787b1d14b4fe6f169c7`  
		Last Modified: Mon, 02 Apr 2018 17:04:43 GMT  
		Size: 1.8 MB (1830329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56881d794d87c59b2bba15c819dc005aebe3f7f867c8224184c22da4520edcd9`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f8fea3ba44e71c2d1253b8a4dec74b4ca1420f50f178826fe9c6d655a41e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1.5-alpine`

```console
$ docker pull memcached@sha256:599ae6240230316020d65ec9fde47367264703b0f8f19b521d60cdaf89a6f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1.5-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61421e6bbee34aab62256f2c40cb124d5ea702d72c4d902ea36d5f58c865d98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27acf5fecd77bbf66cd0313cf1139d2cc78b1a965d575ebe499c1c820b4ba93d`
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
# Mon, 02 Apr 2018 16:52:25 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:52:26 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:56:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:56:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:56:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:56:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:56:49 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:56:50 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:56:51 GMT
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
	-	`sha256:3cf457c322b82f9b03770028da6f7e169221c9fd61dea490c94c55e8f2533747`  
		Last Modified: Mon, 02 Apr 2018 16:59:22 GMT  
		Size: 1.7 MB (1683819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5e4abb3aed39d08d6d1383a74bef4654be04ca00b3c7e716602e4df49e272`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a3474e6bb3e127f0ae4716992e7167104e9f45de2e6c490c289c5016e41e1`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8198eb0334690ce5fbeebb6fb00d568768a6c609090004f609553ea2b4b5e091
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3827507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac03d6008590584d1034dd477238a5261bc21fa3f99b0e78c43ca51a0d7b2df3`
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
# Mon, 02 Apr 2018 16:50:43 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:50:45 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:54:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:54:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:54:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:54:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:54:54 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:54:55 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:54:57 GMT
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
	-	`sha256:3bcb1bb5cb06e8890880507de7e018a61317d1deb298d92abc8f46a5dc2413aa`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 1.7 MB (1744180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d0726faddf63d86ffd93d5a642426678e276c5b8d5a237581e8e191288ff76`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e103c053bff806d370e06afd944796b0344e37b1b03ca7c3d373f579d31b9`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1.5-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:27a7f131635b25fbfc2010c0f70abed1f1af9f1314b5874658ceb2d2a4d0d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ef7014982c8cab9ab71edf28599a09e8f892f91223100c6dbb969b5295376a`
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
# Mon, 02 Apr 2018 16:59:03 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:59:04 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 17:03:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 17:03:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 17:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 17:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:03:05 GMT
USER [memcache]
# Mon, 02 Apr 2018 17:03:07 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 17:03:11 GMT
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
	-	`sha256:7ac2b757994e0a53d65a72f00e57623d862b65d1527f5787b1d14b4fe6f169c7`  
		Last Modified: Mon, 02 Apr 2018 17:04:43 GMT  
		Size: 1.8 MB (1830329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56881d794d87c59b2bba15c819dc005aebe3f7f867c8224184c22da4520edcd9`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f8fea3ba44e71c2d1253b8a4dec74b4ca1420f50f178826fe9c6d655a41e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:599ae6240230316020d65ec9fde47367264703b0f8f19b521d60cdaf89a6f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:1-alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61421e6bbee34aab62256f2c40cb124d5ea702d72c4d902ea36d5f58c865d98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27acf5fecd77bbf66cd0313cf1139d2cc78b1a965d575ebe499c1c820b4ba93d`
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
# Mon, 02 Apr 2018 16:52:25 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:52:26 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:56:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:56:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:56:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:56:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:56:49 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:56:50 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:56:51 GMT
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
	-	`sha256:3cf457c322b82f9b03770028da6f7e169221c9fd61dea490c94c55e8f2533747`  
		Last Modified: Mon, 02 Apr 2018 16:59:22 GMT  
		Size: 1.7 MB (1683819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5e4abb3aed39d08d6d1383a74bef4654be04ca00b3c7e716602e4df49e272`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a3474e6bb3e127f0ae4716992e7167104e9f45de2e6c490c289c5016e41e1`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8198eb0334690ce5fbeebb6fb00d568768a6c609090004f609553ea2b4b5e091
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3827507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac03d6008590584d1034dd477238a5261bc21fa3f99b0e78c43ca51a0d7b2df3`
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
# Mon, 02 Apr 2018 16:50:43 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:50:45 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:54:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:54:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:54:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:54:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:54:54 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:54:55 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:54:57 GMT
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
	-	`sha256:3bcb1bb5cb06e8890880507de7e018a61317d1deb298d92abc8f46a5dc2413aa`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 1.7 MB (1744180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d0726faddf63d86ffd93d5a642426678e276c5b8d5a237581e8e191288ff76`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e103c053bff806d370e06afd944796b0344e37b1b03ca7c3d373f579d31b9`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:1-alpine` - linux; s390x

```console
$ docker pull memcached@sha256:27a7f131635b25fbfc2010c0f70abed1f1af9f1314b5874658ceb2d2a4d0d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ef7014982c8cab9ab71edf28599a09e8f892f91223100c6dbb969b5295376a`
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
# Mon, 02 Apr 2018 16:59:03 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:59:04 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 17:03:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 17:03:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 17:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 17:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:03:05 GMT
USER [memcache]
# Mon, 02 Apr 2018 17:03:07 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 17:03:11 GMT
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
	-	`sha256:7ac2b757994e0a53d65a72f00e57623d862b65d1527f5787b1d14b4fe6f169c7`  
		Last Modified: Mon, 02 Apr 2018 17:04:43 GMT  
		Size: 1.8 MB (1830329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56881d794d87c59b2bba15c819dc005aebe3f7f867c8224184c22da4520edcd9`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f8fea3ba44e71c2d1253b8a4dec74b4ca1420f50f178826fe9c6d655a41e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:alpine`

```console
$ docker pull memcached@sha256:599ae6240230316020d65ec9fde47367264703b0f8f19b521d60cdaf89a6f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:61421e6bbee34aab62256f2c40cb124d5ea702d72c4d902ea36d5f58c865d98d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3674505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27acf5fecd77bbf66cd0313cf1139d2cc78b1a965d575ebe499c1c820b4ba93d`
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
# Mon, 02 Apr 2018 16:52:25 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:52:26 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:56:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:56:46 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:56:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:56:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:56:49 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:56:50 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:56:51 GMT
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
	-	`sha256:3cf457c322b82f9b03770028da6f7e169221c9fd61dea490c94c55e8f2533747`  
		Last Modified: Mon, 02 Apr 2018 16:59:22 GMT  
		Size: 1.7 MB (1683819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee5e4abb3aed39d08d6d1383a74bef4654be04ca00b3c7e716602e4df49e272`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a3474e6bb3e127f0ae4716992e7167104e9f45de2e6c490c289c5016e41e1`  
		Last Modified: Mon, 02 Apr 2018 16:59:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; ppc64le

```console
$ docker pull memcached@sha256:8198eb0334690ce5fbeebb6fb00d568768a6c609090004f609553ea2b4b5e091
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3827507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac03d6008590584d1034dd477238a5261bc21fa3f99b0e78c43ca51a0d7b2df3`
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
# Mon, 02 Apr 2018 16:50:43 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:50:45 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 16:54:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 16:54:47 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 16:54:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 16:54:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 16:54:54 GMT
USER [memcache]
# Mon, 02 Apr 2018 16:54:55 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 16:54:57 GMT
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
	-	`sha256:3bcb1bb5cb06e8890880507de7e018a61317d1deb298d92abc8f46a5dc2413aa`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 1.7 MB (1744180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d0726faddf63d86ffd93d5a642426678e276c5b8d5a237581e8e191288ff76`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 286.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e103c053bff806d370e06afd944796b0344e37b1b03ca7c3d373f579d31b9`  
		Last Modified: Mon, 02 Apr 2018 16:55:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:alpine` - linux; s390x

```console
$ docker pull memcached@sha256:27a7f131635b25fbfc2010c0f70abed1f1af9f1314b5874658ceb2d2a4d0d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4017387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ef7014982c8cab9ab71edf28599a09e8f892f91223100c6dbb969b5295376a`
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
# Mon, 02 Apr 2018 16:59:03 GMT
ENV MEMCACHED_VERSION=1.5.7
# Mon, 02 Apr 2018 16:59:04 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Mon, 02 Apr 2018 17:03:02 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Mon, 02 Apr 2018 17:03:03 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Mon, 02 Apr 2018 17:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 02 Apr 2018 17:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Apr 2018 17:03:05 GMT
USER [memcache]
# Mon, 02 Apr 2018 17:03:07 GMT
EXPOSE 11211/tcp
# Mon, 02 Apr 2018 17:03:11 GMT
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
	-	`sha256:7ac2b757994e0a53d65a72f00e57623d862b65d1527f5787b1d14b4fe6f169c7`  
		Last Modified: Mon, 02 Apr 2018 17:04:43 GMT  
		Size: 1.8 MB (1830329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56881d794d87c59b2bba15c819dc005aebe3f7f867c8224184c22da4520edcd9`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f8fea3ba44e71c2d1253b8a4dec74b4ca1420f50f178826fe9c6d655a41e5`  
		Last Modified: Mon, 02 Apr 2018 17:04:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `memcached:latest`

```console
$ docker pull memcached@sha256:9a351fc64642152d1ab6a0588cc0cc12cb2008bf2e9cb3281a5d2f9022eef298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
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

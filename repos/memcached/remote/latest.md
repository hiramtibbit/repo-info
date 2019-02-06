## `memcached:latest`

```console
$ docker pull memcached@sha256:1b6bf55cc9c9bb3406a9d16323ca55c3dbe8ac0d0328a8f09547fa8115b4036e
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
$ docker pull memcached@sha256:a3478442115ce79e08e3091491e509ce59b4e418dd386c60c4e784bf15621d0d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23549588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed45c51724cc557d330c4cf779a70a274ad46aa39fbecc754647f3828f2e45b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:13:40 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 06:13:40 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 06:13:40 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 06:19:35 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 06:19:36 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 06:19:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 06:19:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 06:19:38 GMT
USER memcache
# Wed, 06 Feb 2019 06:19:39 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 06:19:39 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194d23ef193b5839bd8b6e95fc5a1b2c50d7e3dc2c24ff18c5f38fdd121927b0`  
		Last Modified: Wed, 06 Feb 2019 06:20:04 GMT  
		Size: 5.0 KB (4985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3cd949408a3dd46cf29329321885963743c7477c5aeab3f83428a59c98fc79`  
		Last Modified: Wed, 06 Feb 2019 06:20:04 GMT  
		Size: 1.0 MB (1043896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13851dc56f4ba91a44ba9f590ae781c5b20a03f7f123c562fcdc5d689ca2c556`  
		Last Modified: Wed, 06 Feb 2019 06:20:04 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1479973b5a60dc451a684cbbcc0726c4db3978359d57b24e735724b458a10d`  
		Last Modified: Wed, 06 Feb 2019 06:20:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v5

```console
$ docker pull memcached@sha256:14af79243389277c8a82d582dc31bb941cff5031758fc59a080f20f80637444d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22210904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53bafbb176c56fc03d663ec7ba2f30c6a3442ed7052ac4ecabbad66d049ef736`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:47 GMT
ADD file:e870bf9826436c9d50093c17a45bffdf2dbfb3fb4fa73595ec02fdf0767f8c1b in / 
# Wed, 06 Feb 2019 09:55:48 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:21:56 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 10:21:57 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:21:58 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 10:56:59 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 10:57:02 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:57:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 10:57:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:57:15 GMT
USER memcache
# Wed, 06 Feb 2019 10:57:16 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 10:57:18 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:9b1495315079a4327f28a5ece699ace3f2e12af21ab453e345feae7e22d718bf`  
		Last Modified: Wed, 06 Feb 2019 10:03:48 GMT  
		Size: 21.2 MB (21181339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a71f9f8cfc0b08823f3a285dfa3ca44fea7df344c9656e73a822cf082431a`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 4.9 KB (4897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef6f08ad6841d3064af124e56694aee21fafae2728497b611194bb9624d413`  
		Last Modified: Wed, 06 Feb 2019 10:57:41 GMT  
		Size: 1.0 MB (1024249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae41e8f35e6985eaad3fe96eaaecb1ca0d946bd5a58c350f91e399f5f08fd2`  
		Last Modified: Wed, 06 Feb 2019 10:57:39 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62330ebf6b1cd83e4e8c209d98a0c022ff425e34a9b4799fab00b67e3fff3d9b`  
		Last Modified: Wed, 06 Feb 2019 10:57:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm variant v7

```console
$ docker pull memcached@sha256:c89f2363a8987f8adf1c0caca8aab15e96b40db3fed22f3a2962bfcd2a1c3dec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20287172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d87dfb3952133e20272a000719f2a681335212ea3ece9117c833f4bad261540`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Mon, 28 Jan 2019 17:12:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Mon, 28 Jan 2019 17:12:47 GMT
ENV MEMCACHED_VERSION=1.5.12
# Mon, 28 Jan 2019 17:12:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Mon, 28 Jan 2019 18:02:41 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Mon, 28 Jan 2019 18:02:43 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Mon, 28 Jan 2019 18:02:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 28 Jan 2019 18:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Jan 2019 18:02:57 GMT
USER memcache
# Mon, 28 Jan 2019 18:02:58 GMT
EXPOSE 11211
# Mon, 28 Jan 2019 18:03:00 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf4139c2f6d3f3328a65b8ffe3e9e699e5bd523336ca5319e55792ff0bdb0a0`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 4.9 KB (4901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eed201e140a3dd8942d1ca60cec4d04418885ba469eea23af0908b20cf8bf23`  
		Last Modified: Mon, 28 Jan 2019 18:03:16 GMT  
		Size: 991.6 KB (991568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca90e0e503fbd60b79681765e2ceff80d7bcc20bf9bfa8cf653a2de41723a7e`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9632129b4d5a59fb376f918871d6484f426deb68699392d47ac51b87961845d`  
		Last Modified: Mon, 28 Jan 2019 18:03:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; arm64 variant v8

```console
$ docker pull memcached@sha256:15790a1eaff6385805dcd825c6d39fbb9057589712891fdacdfb4f995cf0b1f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21361693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030e6cf69e72c13b096283f8979702cddb73a0ee12d78173a457297874e41986`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:40:46 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 11:40:48 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 11:50:43 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 11:54:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 11:54:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 11:54:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 11:54:08 GMT
USER memcache
# Wed, 06 Feb 2019 11:54:09 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 11:54:15 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b50cdf427d90954f4d264cd8fe97eda0110ed50c5d495c39e88d9dc7aba1bc`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 5.0 KB (5027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8f9209a8e79789132bb21f781211ef126776eb5a3243b89cb319fb6a275df`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 1.0 MB (1006089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb7e862f4a569e52ab9d19050bd0bb671d3e92a1d7f333ec0e555b3fddff783`  
		Last Modified: Wed, 06 Feb 2019 12:01:30 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327112eab309118e75258c9d5a68a10690eeec80e4548d235dfd61e340baed0a`  
		Last Modified: Wed, 06 Feb 2019 12:01:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; 386

```console
$ docker pull memcached@sha256:0d68609f554ac7130ccd28df3d9e6f376762583fd22cff48a42de0b2e3685fac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24204938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e870f80379fcfd037ba26a6cab81ab0e0cbb9cf999a9fb302b85bf74bc210aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Thu, 31 Jan 2019 14:17:34 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Thu, 31 Jan 2019 14:17:34 GMT
ENV MEMCACHED_VERSION=1.5.12
# Thu, 31 Jan 2019 14:17:34 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Thu, 31 Jan 2019 14:23:19 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Thu, 31 Jan 2019 14:23:19 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Thu, 31 Jan 2019 14:23:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 31 Jan 2019 14:23:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 Jan 2019 14:23:20 GMT
USER memcache
# Thu, 31 Jan 2019 14:23:20 GMT
EXPOSE 11211
# Thu, 31 Jan 2019 14:23:20 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095bb23ee20949721300fc22d454bc151320f410a9b9871b5ef2b5a3dc69a89c`  
		Last Modified: Thu, 31 Jan 2019 14:23:42 GMT  
		Size: 4.9 KB (4902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b522a83ec10f30530268ccb0faf0b96a4bdc761e0aef7131d147331c0b12d6`  
		Last Modified: Thu, 31 Jan 2019 14:23:42 GMT  
		Size: 1.1 MB (1052503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0447e9d13f02a2576b580bf704241613b8db7ee12e29e903b0fe32a4be8fea1f`  
		Last Modified: Thu, 31 Jan 2019 14:23:42 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c80f25deabf2c25003534c0a2822010a57ae83a698e39139831f67b330d2d5`  
		Last Modified: Thu, 31 Jan 2019 14:23:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; ppc64le

```console
$ docker pull memcached@sha256:2b08cf3caa3febded557f9ef4d2f9af65e8c21e080e30f22076a1e576e6ceb94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23797704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5009f07b76404b58d992a0be40065fa38db82c264b14faa99313e1d09e9d7180`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:49:13 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 06 Feb 2019 10:49:15 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 06 Feb 2019 10:49:17 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 06 Feb 2019 10:57:20 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 06 Feb 2019 10:57:22 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 06 Feb 2019 10:57:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 10:57:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 10:57:35 GMT
USER memcache
# Wed, 06 Feb 2019 10:57:37 GMT
EXPOSE 11211
# Wed, 06 Feb 2019 10:57:40 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11373fe6c7939df587f08596dce992afb481fa0f0a29477f4088bb42aeb1affb`  
		Last Modified: Wed, 06 Feb 2019 11:10:55 GMT  
		Size: 5.0 KB (4989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da8af16f97afc7a25f5204880ed945fdca2e4b82d2470f0af907d53822e0263`  
		Last Modified: Wed, 06 Feb 2019 11:10:56 GMT  
		Size: 1.0 MB (1036905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94fc8d729fa910563c3a2d667fdf498dbcf6e9161b8e41c6cc27bb329694432`  
		Last Modified: Wed, 06 Feb 2019 11:10:55 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90c03d4eb6082dedb926a4f15efe73f2ae7a05afc21d6493704297b78015845`  
		Last Modified: Wed, 06 Feb 2019 11:10:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `memcached:latest` - linux; s390x

```console
$ docker pull memcached@sha256:3d4d60333a6588c8273614f9bccb2359a0a46d84efb1e15dc6c602ea573371e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23359329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7782ca15fff791d3ed88b1f6b638bccccf5a5ddbd0bdfba7a859a6ccc332fa0a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:39:24 GMT
RUN groupadd --system --gid 11211 memcache && useradd --system --gid memcache --uid 11211 memcache
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_VERSION=1.5.12
# Wed, 23 Jan 2019 13:39:24 GMT
ENV MEMCACHED_SHA1=f67096ba64b0c47668bcad5b680010c4f8987d4c
# Wed, 23 Jan 2019 13:43:04 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Wed, 23 Jan 2019 13:43:04 GMT
COPY file:bf641b13ea5b37f5830b299ebe9d72f194ee5d897db14faf8b133dc7a66a48ad in /usr/local/bin/ 
# Wed, 23 Jan 2019 13:43:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 13:43:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 13:43:05 GMT
USER memcache
# Wed, 23 Jan 2019 13:43:05 GMT
EXPOSE 11211
# Wed, 23 Jan 2019 13:43:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b3acc0e289436055068c9029526ee20a2149e4206c6953ba91775de6df1c9`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 5.0 KB (5029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da90c485b822550b6178c70e5f06e6c95e67d3ab82b2512895b3b4c8e6ba99ad`  
		Last Modified: Wed, 23 Jan 2019 13:43:27 GMT  
		Size: 1000.4 KB (1000386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63aba902596bee477d8200ea63cff2dfd3303bdab96bd54649ed6e553b4895b`  
		Last Modified: Wed, 23 Jan 2019 13:43:28 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f94823374f3ae514756dac7775f52e32ddc5c686dc10e543684570f29558c7b`  
		Last Modified: Wed, 23 Jan 2019 13:43:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

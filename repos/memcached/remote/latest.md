## `memcached:latest`

```console
$ docker pull memcached@sha256:7a55a3852e22c075aa1fba9289eb637e4eb749d4c8d64bf54a36d9900aceba77
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
$ docker pull memcached@sha256:790f43a567a2e1afd31f367f7d8ee41f7a3a60d4f2f38c8d820ca68b8e555ad3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20257975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed104e2871da9aadeee7bfb1da43c2cf5bcd5cee76fd961b0cc08d523c1dcd66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:38:45 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 12:38:46 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 12:38:47 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 12:54:55 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 12:54:56 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 12:55:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 12:55:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 12:55:03 GMT
USER [memcache]
# Tue, 17 Jul 2018 12:55:04 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 12:55:05 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2465b34259703051aca88ccc856dc4b01b78f7b179581478d8fe65244a72e4`  
		Last Modified: Tue, 17 Jul 2018 12:55:20 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e792bf3f79ebab9365a570fa51da298f8e8c85f6fe6c6f7e40cbf686e04086ac`  
		Last Modified: Tue, 17 Jul 2018 12:55:22 GMT  
		Size: 985.6 KB (985637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fc3cbea544e019581ce8c25c6710d4490244a3b0547f5c232978f42f2999cd`  
		Last Modified: Tue, 17 Jul 2018 12:55:20 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2c03a9cd24856530875ad9fd47bb462f569a72012c869dbdf140ba2384b73b`  
		Last Modified: Tue, 17 Jul 2018 12:55:20 GMT  
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
$ docker pull memcached@sha256:34d46bdac150935c09ac6f19e0bc842249da3d36f9a8e2796bf9a568d3fb5d31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23336808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc2b41a7d8a9fa8adba95b5a5b3531b706b6a1c26b83db4ebf9e1a4ca2b4fae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:28:39 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Tue, 17 Jul 2018 13:28:39 GMT
ENV MEMCACHED_VERSION=1.5.9
# Tue, 17 Jul 2018 13:28:39 GMT
ENV MEMCACHED_SHA1=7d3807ed240597444c97e11b0f61d16964feff1c
# Tue, 17 Jul 2018 13:32:01 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& enableExtstore="$( 		case "$gnuArch" in 			s390x-*) ;; 			*) echo '--enable-extstore' ;; 		esac 	)" 	&& ./configure 		--build="$gnuArch" 		--enable-sasl 		$enableExtstore 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Tue, 17 Jul 2018 13:32:01 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 17 Jul 2018 13:32:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 13:32:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 13:32:02 GMT
USER [memcache]
# Tue, 17 Jul 2018 13:32:02 GMT
EXPOSE 11211/tcp
# Tue, 17 Jul 2018 13:32:02 GMT
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
	-	`sha256:4483b7be8440fba572213da720b779f935c89b32248c9c620fe0bd8c87cc6782`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 1000.1 KB (1000130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1acf0ebdff6a44703105e56337056d29ffc765f4b9317b3df75c92462047630`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8065e91778b1e29d0794f3167792b4c51655aae8354675798f051ecb3c7f1f`  
		Last Modified: Tue, 17 Jul 2018 13:32:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

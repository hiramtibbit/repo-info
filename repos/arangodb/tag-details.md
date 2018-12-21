<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.17`](#arangodb3217)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.20`](#arangodb3320)
-	[`arangodb:3.4`](#arangodb34)
-	[`arangodb:3.4.0`](#arangodb340)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:faef6806c200469bce03bc7e057a7fcb053ac5816bd5047e9a07d3679000b792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:f8d3a37053ec40cbf743a883bd5b31021cc4e55764c60ac2a4afb4e9f99649f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115097530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:295893bc50821506df807e3c4160958c883cf66db697e69f7b6847edebde89b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:51:30 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:51:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Nov 2018 10:51:43 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:51:43 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 16 Nov 2018 10:52:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Nov 2018 10:52:32 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 16 Nov 2018 10:52:32 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 16 Nov 2018 10:52:45 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 16 Nov 2018 10:52:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 10:52:46 GMT
EXPOSE 8529/tcp
# Fri, 16 Nov 2018 10:52:59 GMT
USER [arangodb]
# Fri, 16 Nov 2018 10:53:12 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d74839ae7d490b651ea708992f5fa1c834e31de7e94dd4b83a389c4d1e2c0b8`  
		Last Modified: Fri, 16 Nov 2018 10:58:36 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2dd6eadcd26e5b8a00348adb27733ea43ec646d0e9832788256d8bec58c2d`  
		Last Modified: Fri, 16 Nov 2018 10:58:47 GMT  
		Size: 60.7 MB (60731016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5731919ebd292166125127870df1fcfd7138bb1af097048aa8a88f2d72dcd8`  
		Last Modified: Fri, 16 Nov 2018 10:58:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa45e17d23f640d74951e241ec149f7bf735c3e301fbd1068b2dbec604e2e30`  
		Last Modified: Fri, 16 Nov 2018 10:58:36 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:faef6806c200469bce03bc7e057a7fcb053ac5816bd5047e9a07d3679000b792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:f8d3a37053ec40cbf743a883bd5b31021cc4e55764c60ac2a4afb4e9f99649f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115097530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:295893bc50821506df807e3c4160958c883cf66db697e69f7b6847edebde89b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:51:30 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:51:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Nov 2018 10:51:43 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:51:43 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 16 Nov 2018 10:51:44 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 16 Nov 2018 10:52:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Nov 2018 10:52:32 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 16 Nov 2018 10:52:32 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 16 Nov 2018 10:52:45 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 16 Nov 2018 10:52:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 10:52:46 GMT
EXPOSE 8529/tcp
# Fri, 16 Nov 2018 10:52:59 GMT
USER [arangodb]
# Fri, 16 Nov 2018 10:53:12 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d74839ae7d490b651ea708992f5fa1c834e31de7e94dd4b83a389c4d1e2c0b8`  
		Last Modified: Fri, 16 Nov 2018 10:58:36 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2dd6eadcd26e5b8a00348adb27733ea43ec646d0e9832788256d8bec58c2d`  
		Last Modified: Fri, 16 Nov 2018 10:58:47 GMT  
		Size: 60.7 MB (60731016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5731919ebd292166125127870df1fcfd7138bb1af097048aa8a88f2d72dcd8`  
		Last Modified: Fri, 16 Nov 2018 10:58:36 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa45e17d23f640d74951e241ec149f7bf735c3e301fbd1068b2dbec604e2e30`  
		Last Modified: Fri, 16 Nov 2018 10:58:36 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:1ec55085b316c736349a3aa3f1762807304aa901a9230626c574df860c4034e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:9e4f975c544b170a4387c28d71d753f64fffe834b4093d7ad19f629a1c17b859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113447233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f25582b76d739cb7a2b928d2c4a820daf26b35d5ae245bee51b86d5110b1825`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:53:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:53:49 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:53:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 16 Nov 2018 10:56:36 GMT
ENV ARANGO_VERSION=3.2.17
# Fri, 16 Nov 2018 10:56:36 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 16 Nov 2018 10:56:36 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Fri, 16 Nov 2018 10:56:37 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Fri, 16 Nov 2018 10:56:49 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Fri, 16 Nov 2018 10:56:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:57:06 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Nov 2018 10:57:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:57:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 10:57:45 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Nov 2018 10:57:52 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 16 Nov 2018 10:57:53 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Fri, 16 Nov 2018 10:58:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 10:58:06 GMT
EXPOSE 8529/tcp
# Fri, 16 Nov 2018 10:58:06 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5376dc47ad980c3dee3bb4b5719b6361685c3cd8700a893b880d67d044cdf7`  
		Last Modified: Fri, 16 Nov 2018 11:00:47 GMT  
		Size: 6.6 MB (6565477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b390c52965992501270344632fa0cebb92c6c77babce3d8ec404db1ae17e6863`  
		Last Modified: Fri, 16 Nov 2018 11:00:45 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a09c1077bac803d7fafed8e74406c541009c2dceed1fb161aff561e5b2d88c`  
		Last Modified: Fri, 16 Nov 2018 11:00:47 GMT  
		Size: 7.4 MB (7408705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a0d57fc409f77e91119889f3e4df1bf2084db58f85f54ec38e73e1f5f2fa25`  
		Last Modified: Fri, 16 Nov 2018 11:00:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bfb33d78fc95d78bf58235b11a3eb594be60d99fc12b1cd7b328df15fd337`  
		Last Modified: Fri, 16 Nov 2018 11:00:57 GMT  
		Size: 54.1 MB (54147171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2162b4a0b9694459700c03015e9dd6feff8f8ae2bbb7c1b1b413ca7fbe661aed`  
		Last Modified: Fri, 16 Nov 2018 11:00:45 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:1ec55085b316c736349a3aa3f1762807304aa901a9230626c574df860c4034e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:9e4f975c544b170a4387c28d71d753f64fffe834b4093d7ad19f629a1c17b859
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113447233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f25582b76d739cb7a2b928d2c4a820daf26b35d5ae245bee51b86d5110b1825`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:53:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:53:49 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:53:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 16 Nov 2018 10:56:36 GMT
ENV ARANGO_VERSION=3.2.17
# Fri, 16 Nov 2018 10:56:36 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 16 Nov 2018 10:56:36 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Fri, 16 Nov 2018 10:56:37 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Fri, 16 Nov 2018 10:56:49 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Fri, 16 Nov 2018 10:56:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:57:06 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Nov 2018 10:57:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:57:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 10:57:45 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Nov 2018 10:57:52 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 16 Nov 2018 10:57:53 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Fri, 16 Nov 2018 10:58:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 10:58:06 GMT
EXPOSE 8529/tcp
# Fri, 16 Nov 2018 10:58:06 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5376dc47ad980c3dee3bb4b5719b6361685c3cd8700a893b880d67d044cdf7`  
		Last Modified: Fri, 16 Nov 2018 11:00:47 GMT  
		Size: 6.6 MB (6565477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b390c52965992501270344632fa0cebb92c6c77babce3d8ec404db1ae17e6863`  
		Last Modified: Fri, 16 Nov 2018 11:00:45 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a09c1077bac803d7fafed8e74406c541009c2dceed1fb161aff561e5b2d88c`  
		Last Modified: Fri, 16 Nov 2018 11:00:47 GMT  
		Size: 7.4 MB (7408705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a0d57fc409f77e91119889f3e4df1bf2084db58f85f54ec38e73e1f5f2fa25`  
		Last Modified: Fri, 16 Nov 2018 11:00:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bfb33d78fc95d78bf58235b11a3eb594be60d99fc12b1cd7b328df15fd337`  
		Last Modified: Fri, 16 Nov 2018 11:00:57 GMT  
		Size: 54.1 MB (54147171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2162b4a0b9694459700c03015e9dd6feff8f8ae2bbb7c1b1b413ca7fbe661aed`  
		Last Modified: Fri, 16 Nov 2018 11:00:45 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:a190a8a97837d05d604ea35d5eec76fea8a27bc65428804efa5bbf0e5dade011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:48794daf40f373953eb2bdb0105a95e866fe807921adde4f3e4003e319fb43fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117742057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b429b4e02f5a56b93c5fe629a0d1247a48f884fb23b21e2ae6be2f33fb2cc5b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:53:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:53:49 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:53:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 06 Dec 2018 21:19:42 GMT
ENV ARANGO_VERSION=3.3.20
# Thu, 06 Dec 2018 21:19:42 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.20-1_amd64.deb
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.20-1_amd64.deb
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.20-1_amd64.deb.asc
# Thu, 06 Dec 2018 21:19:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 06 Dec 2018 21:20:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 06 Dec 2018 21:20:59 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 06 Dec 2018 21:20:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 06 Dec 2018 21:22:02 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Thu, 06 Dec 2018 21:22:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Dec 2018 21:22:03 GMT
EXPOSE 8529/tcp
# Thu, 06 Dec 2018 21:22:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e06c49b6e230235dee0c052222eabaf71a0bcfdd7330c0d707fd23963c9fd5`  
		Last Modified: Thu, 06 Dec 2018 21:22:32 GMT  
		Size: 6.6 MB (6565456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b9556ab05c91ff56911db1f31629d22f00f658a592ca401f5e4f151150aba`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8995ca3689ceafd138316f3fb53ff433c1ed7a1c7ca7ce1a9221be3e615ccf`  
		Last Modified: Thu, 06 Dec 2018 21:22:31 GMT  
		Size: 7.4 MB (7444716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40a131d837aa5ee6d60d499f4fdeb5fe49ccc3012bf167d857caabf06c6aa5`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da918fc0b83cfcc1bba8fe5983ccc9c5a084a9df1eb8f595c5065fbdbc7b6ba6`  
		Last Modified: Thu, 06 Dec 2018 21:22:42 GMT  
		Size: 58.4 MB (58406010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6008219d46e7e2a61fd6340691ddcd786c7001c2be88383a2fc50e5dbc702f58`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.20`

```console
$ docker pull arangodb@sha256:a190a8a97837d05d604ea35d5eec76fea8a27bc65428804efa5bbf0e5dade011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.20` - linux; amd64

```console
$ docker pull arangodb@sha256:48794daf40f373953eb2bdb0105a95e866fe807921adde4f3e4003e319fb43fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117742057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b429b4e02f5a56b93c5fe629a0d1247a48f884fb23b21e2ae6be2f33fb2cc5b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:53:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:53:49 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:53:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 06 Dec 2018 21:19:42 GMT
ENV ARANGO_VERSION=3.3.20
# Thu, 06 Dec 2018 21:19:42 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.20-1_amd64.deb
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.20-1_amd64.deb
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.20-1_amd64.deb.asc
# Thu, 06 Dec 2018 21:19:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 06 Dec 2018 21:20:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 06 Dec 2018 21:20:59 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 06 Dec 2018 21:20:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 06 Dec 2018 21:22:02 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Thu, 06 Dec 2018 21:22:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Dec 2018 21:22:03 GMT
EXPOSE 8529/tcp
# Thu, 06 Dec 2018 21:22:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e06c49b6e230235dee0c052222eabaf71a0bcfdd7330c0d707fd23963c9fd5`  
		Last Modified: Thu, 06 Dec 2018 21:22:32 GMT  
		Size: 6.6 MB (6565456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b9556ab05c91ff56911db1f31629d22f00f658a592ca401f5e4f151150aba`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8995ca3689ceafd138316f3fb53ff433c1ed7a1c7ca7ce1a9221be3e615ccf`  
		Last Modified: Thu, 06 Dec 2018 21:22:31 GMT  
		Size: 7.4 MB (7444716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40a131d837aa5ee6d60d499f4fdeb5fe49ccc3012bf167d857caabf06c6aa5`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da918fc0b83cfcc1bba8fe5983ccc9c5a084a9df1eb8f595c5065fbdbc7b6ba6`  
		Last Modified: Thu, 06 Dec 2018 21:22:42 GMT  
		Size: 58.4 MB (58406010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6008219d46e7e2a61fd6340691ddcd786c7001c2be88383a2fc50e5dbc702f58`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:5dfb32b7ebfda3bb9b04c8bbb0ab7a5d29977b52e4e6cd4d259f498722d0ceff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:a4cdfb0bd80c87afeff2b45068fd9c5e85bce7453f0fc55a2e796366a62c7832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101509786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6ed05d7cb2cf5e7d02ec515ce91cb90a9f030737d5f0811b89c4942ba5b059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:48:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Dec 2018 00:48:13 GMT
ENV ARANGO_VERSION=3.4.0
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.0-1_amd64.deb
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.0-1_amd64.deb
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.0-1_amd64.deb.asc
# Fri, 21 Dec 2018 00:48:35 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 21 Dec 2018 00:48:39 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Dec 2018 00:48:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 00:48:52 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Fri, 21 Dec 2018 00:48:52 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 21 Dec 2018 00:48:52 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Fri, 21 Dec 2018 00:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 00:48:53 GMT
EXPOSE 8529
# Fri, 21 Dec 2018 00:48:53 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1988edee71e1ac7c5b1e9f3266c20e21cc116068468efacfcfb416ef360ff`  
		Last Modified: Fri, 21 Dec 2018 00:49:20 GMT  
		Size: 29.9 MB (29946664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3151b9592440a1701ce6bf199086318c2a57713be596e41ee5839a9da2968e51`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2646f89eb8aa0722b6194d9653a9e01114781b17bb4b75f6568c6920b0df82c2`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8278a2a6a1c49f7bd9efc7ec620167c5bd800418afee327733e21f139a0eb`  
		Last Modified: Fri, 21 Dec 2018 00:49:25 GMT  
		Size: 69.4 MB (69350611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d20c7ce8bfa47a33a5a8b3a79aadf1e3178276523e6841c2b3678514543e5`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.0`

```console
$ docker pull arangodb@sha256:5dfb32b7ebfda3bb9b04c8bbb0ab7a5d29977b52e4e6cd4d259f498722d0ceff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4.0` - linux; amd64

```console
$ docker pull arangodb@sha256:a4cdfb0bd80c87afeff2b45068fd9c5e85bce7453f0fc55a2e796366a62c7832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101509786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6ed05d7cb2cf5e7d02ec515ce91cb90a9f030737d5f0811b89c4942ba5b059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:48:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Dec 2018 00:48:13 GMT
ENV ARANGO_VERSION=3.4.0
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.0-1_amd64.deb
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.0-1_amd64.deb
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.0-1_amd64.deb.asc
# Fri, 21 Dec 2018 00:48:35 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 21 Dec 2018 00:48:39 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Dec 2018 00:48:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 00:48:52 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Fri, 21 Dec 2018 00:48:52 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 21 Dec 2018 00:48:52 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Fri, 21 Dec 2018 00:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 00:48:53 GMT
EXPOSE 8529
# Fri, 21 Dec 2018 00:48:53 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1988edee71e1ac7c5b1e9f3266c20e21cc116068468efacfcfb416ef360ff`  
		Last Modified: Fri, 21 Dec 2018 00:49:20 GMT  
		Size: 29.9 MB (29946664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3151b9592440a1701ce6bf199086318c2a57713be596e41ee5839a9da2968e51`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2646f89eb8aa0722b6194d9653a9e01114781b17bb4b75f6568c6920b0df82c2`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8278a2a6a1c49f7bd9efc7ec620167c5bd800418afee327733e21f139a0eb`  
		Last Modified: Fri, 21 Dec 2018 00:49:25 GMT  
		Size: 69.4 MB (69350611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d20c7ce8bfa47a33a5a8b3a79aadf1e3178276523e6841c2b3678514543e5`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:5dfb32b7ebfda3bb9b04c8bbb0ab7a5d29977b52e4e6cd4d259f498722d0ceff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:a4cdfb0bd80c87afeff2b45068fd9c5e85bce7453f0fc55a2e796366a62c7832
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101509786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6ed05d7cb2cf5e7d02ec515ce91cb90a9f030737d5f0811b89c4942ba5b059`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:48:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 21 Dec 2018 00:48:13 GMT
ENV ARANGO_VERSION=3.4.0
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.0-1_amd64.deb
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.0-1_amd64.deb
# Fri, 21 Dec 2018 00:48:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.0-1_amd64.deb.asc
# Fri, 21 Dec 2018 00:48:35 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 21 Dec 2018 00:48:39 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 21 Dec 2018 00:48:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 00:48:52 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Fri, 21 Dec 2018 00:48:52 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 21 Dec 2018 00:48:52 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Fri, 21 Dec 2018 00:48:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 00:48:53 GMT
EXPOSE 8529
# Fri, 21 Dec 2018 00:48:53 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade1988edee71e1ac7c5b1e9f3266c20e21cc116068468efacfcfb416ef360ff`  
		Last Modified: Fri, 21 Dec 2018 00:49:20 GMT  
		Size: 29.9 MB (29946664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3151b9592440a1701ce6bf199086318c2a57713be596e41ee5839a9da2968e51`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2646f89eb8aa0722b6194d9653a9e01114781b17bb4b75f6568c6920b0df82c2`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d8278a2a6a1c49f7bd9efc7ec620167c5bd800418afee327733e21f139a0eb`  
		Last Modified: Fri, 21 Dec 2018 00:49:25 GMT  
		Size: 69.4 MB (69350611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2d20c7ce8bfa47a33a5a8b3a79aadf1e3178276523e6841c2b3678514543e5`  
		Last Modified: Fri, 21 Dec 2018 00:49:11 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

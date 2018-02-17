<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.11`](#arangodb3211)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.3`](#arangodb333)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:ae9c772cf06ecf403a45e30a7e59a88d83dfe112ca1cd7d21dadf1d713328c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:280cc598df5eeff1b0cf3c3e3eaf65ed9a91813163d47d68750346a7d2bf9a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113344742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d332a46b06a5558797071293022c038b3499e913bb80729de32ee236981fc508`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:39:51 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 17 Feb 2018 06:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 17 Feb 2018 06:40:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:40:26 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 17 Feb 2018 06:40:27 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 17 Feb 2018 06:40:28 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Sat, 17 Feb 2018 06:40:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:40:28 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:40:29 GMT
USER [arangodb]
# Sat, 17 Feb 2018 06:40:29 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a72b24deea382c26b120fe283d5420729104ee2889f8e752ebdc4a08daa290`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26f946b63cdb81927006625783459f7894e729eb467db44f989464f964cbe75`  
		Last Modified: Sat, 17 Feb 2018 06:55:38 GMT  
		Size: 60.7 MB (60727780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008fe6c052d4e0ab8b45f02929a8512fc0b24599240fb1fd71d6b75fc0d5c52b`  
		Last Modified: Sat, 17 Feb 2018 06:55:22 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dc3491a2304624a5a2763ce9650434228e817b61aea94a0ee63bb939c34130`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:ae9c772cf06ecf403a45e30a7e59a88d83dfe112ca1cd7d21dadf1d713328c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:280cc598df5eeff1b0cf3c3e3eaf65ed9a91813163d47d68750346a7d2bf9a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113344742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d332a46b06a5558797071293022c038b3499e913bb80729de32ee236981fc508`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:39:51 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 17 Feb 2018 06:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 17 Feb 2018 06:40:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:40:26 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 17 Feb 2018 06:40:27 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 17 Feb 2018 06:40:28 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Sat, 17 Feb 2018 06:40:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:40:28 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:40:29 GMT
USER [arangodb]
# Sat, 17 Feb 2018 06:40:29 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a72b24deea382c26b120fe283d5420729104ee2889f8e752ebdc4a08daa290`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26f946b63cdb81927006625783459f7894e729eb467db44f989464f964cbe75`  
		Last Modified: Sat, 17 Feb 2018 06:55:38 GMT  
		Size: 60.7 MB (60727780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008fe6c052d4e0ab8b45f02929a8512fc0b24599240fb1fd71d6b75fc0d5c52b`  
		Last Modified: Sat, 17 Feb 2018 06:55:22 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dc3491a2304624a5a2763ce9650434228e817b61aea94a0ee63bb939c34130`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:c64e7c787538f5d2394e8fcf45ed2daa84eddd671b381ddc3620c76c7f867b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:0d8808c371bde406d537aa6ef4f9728e0e1796baf913b777e1f55c1807035cc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111942585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0d5b4bcec4e2ac5d10e93d73b5e6992511d4f9c370327e197a7fc8ac6a225a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:38:08 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Feb 2018 03:38:09 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARANGO_VERSION=3.2.11
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Thu, 15 Feb 2018 03:38:10 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.11-1_amd64.deb
# Thu, 15 Feb 2018 03:38:10 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.11-1_amd64.deb
# Thu, 15 Feb 2018 03:38:10 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.11-1_amd64.deb.asc
# Thu, 15 Feb 2018 03:38:18 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:38:23 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 15 Feb 2018 03:38:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:38:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 03:38:48 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 15 Feb 2018 03:38:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 15 Feb 2018 03:38:49 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Thu, 15 Feb 2018 03:38:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:38:50 GMT
EXPOSE 8529/tcp
# Thu, 15 Feb 2018 03:38:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3a1ebd0270d614c07222b525b727b3fd1e2194f224a47381f5dce50f50bfdd`  
		Last Modified: Thu, 15 Feb 2018 03:56:42 GMT  
		Size: 6.9 MB (6921041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d053dad90fe458e10d2a7b36a75bd61090334ab8418a921a1f26a80d5ce9cf75`  
		Last Modified: Thu, 15 Feb 2018 03:56:38 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f9935131e5cf191648d84f24d8d130360cd11f8c35544c43b8b75f35f90dc`  
		Last Modified: Thu, 15 Feb 2018 03:56:40 GMT  
		Size: 7.4 MB (7351545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83f7e302491f0eb8a42c593c92b6fbf18314ea53fd364ac5c402c6070fbca61`  
		Last Modified: Thu, 15 Feb 2018 03:56:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039e09403e7465c29ad83172836d68befd7d15a57f87d6df1fe3e5bb571485a`  
		Last Modified: Thu, 15 Feb 2018 03:56:50 GMT  
		Size: 52.5 MB (52531952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c36f5fdf961586c474cad5fd4f68d68b543e30b1ee440c9be9c22094c8aed`  
		Last Modified: Thu, 15 Feb 2018 03:56:38 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.11`

```console
$ docker pull arangodb@sha256:c64e7c787538f5d2394e8fcf45ed2daa84eddd671b381ddc3620c76c7f867b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.11` - linux; amd64

```console
$ docker pull arangodb@sha256:0d8808c371bde406d537aa6ef4f9728e0e1796baf913b777e1f55c1807035cc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111942585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0d5b4bcec4e2ac5d10e93d73b5e6992511d4f9c370327e197a7fc8ac6a225a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:38:08 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Feb 2018 03:38:09 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARANGO_VERSION=3.2.11
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Thu, 15 Feb 2018 03:38:10 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.11-1_amd64.deb
# Thu, 15 Feb 2018 03:38:10 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.11-1_amd64.deb
# Thu, 15 Feb 2018 03:38:10 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.11-1_amd64.deb.asc
# Thu, 15 Feb 2018 03:38:18 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:38:23 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 15 Feb 2018 03:38:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:38:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 03:38:48 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 15 Feb 2018 03:38:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 15 Feb 2018 03:38:49 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Thu, 15 Feb 2018 03:38:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:38:50 GMT
EXPOSE 8529/tcp
# Thu, 15 Feb 2018 03:38:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3a1ebd0270d614c07222b525b727b3fd1e2194f224a47381f5dce50f50bfdd`  
		Last Modified: Thu, 15 Feb 2018 03:56:42 GMT  
		Size: 6.9 MB (6921041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d053dad90fe458e10d2a7b36a75bd61090334ab8418a921a1f26a80d5ce9cf75`  
		Last Modified: Thu, 15 Feb 2018 03:56:38 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f9935131e5cf191648d84f24d8d130360cd11f8c35544c43b8b75f35f90dc`  
		Last Modified: Thu, 15 Feb 2018 03:56:40 GMT  
		Size: 7.4 MB (7351545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83f7e302491f0eb8a42c593c92b6fbf18314ea53fd364ac5c402c6070fbca61`  
		Last Modified: Thu, 15 Feb 2018 03:56:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039e09403e7465c29ad83172836d68befd7d15a57f87d6df1fe3e5bb571485a`  
		Last Modified: Thu, 15 Feb 2018 03:56:50 GMT  
		Size: 52.5 MB (52531952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747c36f5fdf961586c474cad5fd4f68d68b543e30b1ee440c9be9c22094c8aed`  
		Last Modified: Thu, 15 Feb 2018 03:56:38 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:70e93fbe0ee795a9b0921440b56044ece186ed81d152332a724d61eb91ba0697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:7f07cafe26ebc357235df10bf5231a60f616f6beb27c1a1baf08ad31200f084b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115657883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f835c46571338081ff2ae98ed6ea3b129bd6c60c7c71a94167e08662ca45bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:38:08 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Feb 2018 03:38:09 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 15 Feb 2018 03:52:29 GMT
ENV ARANGO_VERSION=3.3.3
# Thu, 15 Feb 2018 03:52:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.3-1_amd64.deb
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb.asc
# Thu, 15 Feb 2018 03:52:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:54:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:54:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:54:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:54:55 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:54:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 17 Feb 2018 06:54:56 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Sat, 17 Feb 2018 06:54:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:54:57 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:54:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb4939ba55fbc8035310be48f78b234e90e836f8075ae885e4e16b703e5205`  
		Last Modified: Sat, 17 Feb 2018 06:56:18 GMT  
		Size: 6.9 MB (6921117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb58ff2cd076f18b12e40ff0e1a8fb170bceb8e07160a7c512c45d8defbd3870`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691264e6f27faaf22f60e375c65315f2db7d8acd267f2347426f8d9617c34922`  
		Last Modified: Sat, 17 Feb 2018 06:56:15 GMT  
		Size: 7.4 MB (7351552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23796cac17693fef71b1a3f7f20c4e726932c6fa51eb88a6d7f09f6621a67bc4`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1fcaddf5190b12cae7bf3e7a60a1d6e69c3f3faf6c0819f9831cff42e3e9bb`  
		Last Modified: Sat, 17 Feb 2018 06:56:24 GMT  
		Size: 56.2 MB (56247166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5f7635c29b305a232a38338c73038d0bfac3dbb9f8b2c1c92c047388a9f5d8`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.3`

```console
$ docker pull arangodb@sha256:70e93fbe0ee795a9b0921440b56044ece186ed81d152332a724d61eb91ba0697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:7f07cafe26ebc357235df10bf5231a60f616f6beb27c1a1baf08ad31200f084b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115657883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f835c46571338081ff2ae98ed6ea3b129bd6c60c7c71a94167e08662ca45bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:38:08 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Feb 2018 03:38:09 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 15 Feb 2018 03:52:29 GMT
ENV ARANGO_VERSION=3.3.3
# Thu, 15 Feb 2018 03:52:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.3-1_amd64.deb
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb.asc
# Thu, 15 Feb 2018 03:52:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:54:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:54:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:54:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:54:55 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:54:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 17 Feb 2018 06:54:56 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Sat, 17 Feb 2018 06:54:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:54:57 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:54:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb4939ba55fbc8035310be48f78b234e90e836f8075ae885e4e16b703e5205`  
		Last Modified: Sat, 17 Feb 2018 06:56:18 GMT  
		Size: 6.9 MB (6921117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb58ff2cd076f18b12e40ff0e1a8fb170bceb8e07160a7c512c45d8defbd3870`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691264e6f27faaf22f60e375c65315f2db7d8acd267f2347426f8d9617c34922`  
		Last Modified: Sat, 17 Feb 2018 06:56:15 GMT  
		Size: 7.4 MB (7351552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23796cac17693fef71b1a3f7f20c4e726932c6fa51eb88a6d7f09f6621a67bc4`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1fcaddf5190b12cae7bf3e7a60a1d6e69c3f3faf6c0819f9831cff42e3e9bb`  
		Last Modified: Sat, 17 Feb 2018 06:56:24 GMT  
		Size: 56.2 MB (56247166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5f7635c29b305a232a38338c73038d0bfac3dbb9f8b2c1c92c047388a9f5d8`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:70e93fbe0ee795a9b0921440b56044ece186ed81d152332a724d61eb91ba0697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:7f07cafe26ebc357235df10bf5231a60f616f6beb27c1a1baf08ad31200f084b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115657883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f835c46571338081ff2ae98ed6ea3b129bd6c60c7c71a94167e08662ca45bd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:38:08 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Feb 2018 03:38:09 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 15 Feb 2018 03:52:29 GMT
ENV ARANGO_VERSION=3.3.3
# Thu, 15 Feb 2018 03:52:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.3-1_amd64.deb
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb
# Thu, 15 Feb 2018 03:52:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb.asc
# Thu, 15 Feb 2018 03:52:37 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:54:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:54:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:54:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:54:55 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:54:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 17 Feb 2018 06:54:56 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Sat, 17 Feb 2018 06:54:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:54:57 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:54:57 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb4939ba55fbc8035310be48f78b234e90e836f8075ae885e4e16b703e5205`  
		Last Modified: Sat, 17 Feb 2018 06:56:18 GMT  
		Size: 6.9 MB (6921117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb58ff2cd076f18b12e40ff0e1a8fb170bceb8e07160a7c512c45d8defbd3870`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691264e6f27faaf22f60e375c65315f2db7d8acd267f2347426f8d9617c34922`  
		Last Modified: Sat, 17 Feb 2018 06:56:15 GMT  
		Size: 7.4 MB (7351552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23796cac17693fef71b1a3f7f20c4e726932c6fa51eb88a6d7f09f6621a67bc4`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1fcaddf5190b12cae7bf3e7a60a1d6e69c3f3faf6c0819f9831cff42e3e9bb`  
		Last Modified: Sat, 17 Feb 2018 06:56:24 GMT  
		Size: 56.2 MB (56247166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5f7635c29b305a232a38338c73038d0bfac3dbb9f8b2c1c92c047388a9f5d8`  
		Last Modified: Sat, 17 Feb 2018 06:56:14 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull arangodb@sha256:732154e5e04f904e0a986265541f548c625090837451ba6efe56a5551939aa46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:712600af602d9b2b4b287f7ae79186144e57de96df18a3ff902ad71d5b22b793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113336013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b489f3f24e3cc73d83c6dd3ec4a336b1fa8ea97542a36ac11a6bf952a0f63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:11:11 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:11:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 12 Dec 2017 03:11:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 12 Dec 2017 03:13:20 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 12 Dec 2017 03:13:21 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 12 Dec 2017 03:13:21 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 12 Dec 2017 03:13:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:13:22 GMT
EXPOSE 8529/tcp
# Tue, 12 Dec 2017 03:13:22 GMT
USER [arangodb]
# Tue, 12 Dec 2017 03:13:22 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8e1d39a5919079ce5aa93d9f922173a0f069ffa09b0dc54c3a5bda312d2610`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e106368cabe2fdb21fc6ec7b2c135084009e38b52ccabd7e6f1b1e8f3ab4cae4`  
		Last Modified: Tue, 12 Dec 2017 03:14:22 GMT  
		Size: 60.7 MB (60727638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee951327a005ac71cf3891e30866e27a173c3dd07f1f89aaf3cdcbcb10d9f4e4`  
		Last Modified: Tue, 12 Dec 2017 03:14:11 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0832ef39b81c31cf7c3401de36251bd01a694d165b5347bdd9a6d434f4c8ab54`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:732154e5e04f904e0a986265541f548c625090837451ba6efe56a5551939aa46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:712600af602d9b2b4b287f7ae79186144e57de96df18a3ff902ad71d5b22b793
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113336013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b489f3f24e3cc73d83c6dd3ec4a336b1fa8ea97542a36ac11a6bf952a0f63`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:11:11 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:11:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:11:13 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 12 Dec 2017 03:11:14 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 12 Dec 2017 03:11:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 12 Dec 2017 03:13:20 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 12 Dec 2017 03:13:21 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 12 Dec 2017 03:13:21 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 12 Dec 2017 03:13:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 03:13:22 GMT
EXPOSE 8529/tcp
# Tue, 12 Dec 2017 03:13:22 GMT
USER [arangodb]
# Tue, 12 Dec 2017 03:13:22 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8e1d39a5919079ce5aa93d9f922173a0f069ffa09b0dc54c3a5bda312d2610`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e106368cabe2fdb21fc6ec7b2c135084009e38b52ccabd7e6f1b1e8f3ab4cae4`  
		Last Modified: Tue, 12 Dec 2017 03:14:22 GMT  
		Size: 60.7 MB (60727638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee951327a005ac71cf3891e30866e27a173c3dd07f1f89aaf3cdcbcb10d9f4e4`  
		Last Modified: Tue, 12 Dec 2017 03:14:11 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0832ef39b81c31cf7c3401de36251bd01a694d165b5347bdd9a6d434f4c8ab54`  
		Last Modified: Tue, 12 Dec 2017 03:14:12 GMT  
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
$ docker pull arangodb@sha256:b15a96f068a40feeb3b81d6ce0b20bb1a081598d53dc1603dd57c55678d09b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:f6957974ab253d7fd6f848988468b57f2c34ded08e6e604bfa4fc8c2655375cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115646736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5abbc75822156b0a3db8389bf19c2a547eb670d1c6db5c0d7aadb50457512522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_VERSION=3.3.3
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.3-1_amd64.deb
# Fri, 26 Jan 2018 18:22:04 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb
# Fri, 26 Jan 2018 18:22:04 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb.asc
# Fri, 26 Jan 2018 18:22:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 18:22:16 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 26 Jan 2018 18:22:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 18:22:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 26 Jan 2018 18:22:53 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 26 Jan 2018 18:23:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 26 Jan 2018 18:23:02 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Fri, 26 Jan 2018 18:23:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Jan 2018 18:23:03 GMT
EXPOSE 8529/tcp
# Fri, 26 Jan 2018 18:23:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03931384a07c2e4a044b09e3fe6ced155b0f18a4314221aeffd7f8952d256bf`  
		Last Modified: Fri, 26 Jan 2018 18:23:32 GMT  
		Size: 6.9 MB (6920988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d87369357713563d06f952bc676c981ceecdabab975d9d4621caa1e21b9de5`  
		Last Modified: Fri, 26 Jan 2018 18:23:29 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c43af0313850faf33b0f4cbe425364b7128f4624a6cf16fd4da5c68cd34d1a7`  
		Last Modified: Fri, 26 Jan 2018 18:23:30 GMT  
		Size: 7.4 MB (7351606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd9b87b2fc045eddb9f8719b0281a82e035ebe86e9c3d36a083712d5a5fb017`  
		Last Modified: Fri, 26 Jan 2018 18:23:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fc83695aa80874fd0f04805e062a8b8067baff4b74993df046bd87a92fc65e`  
		Last Modified: Fri, 26 Jan 2018 18:23:40 GMT  
		Size: 56.2 MB (56247088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488e5fc045d4618171a870fd1daf90232d1ac771410ad2aa6c7d4f3ecdc9990`  
		Last Modified: Fri, 26 Jan 2018 18:23:29 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.3`

```console
$ docker pull arangodb@sha256:b15a96f068a40feeb3b81d6ce0b20bb1a081598d53dc1603dd57c55678d09b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:f6957974ab253d7fd6f848988468b57f2c34ded08e6e604bfa4fc8c2655375cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115646736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5abbc75822156b0a3db8389bf19c2a547eb670d1c6db5c0d7aadb50457512522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_VERSION=3.3.3
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.3-1_amd64.deb
# Fri, 26 Jan 2018 18:22:04 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb
# Fri, 26 Jan 2018 18:22:04 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb.asc
# Fri, 26 Jan 2018 18:22:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 18:22:16 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 26 Jan 2018 18:22:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 18:22:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 26 Jan 2018 18:22:53 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 26 Jan 2018 18:23:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 26 Jan 2018 18:23:02 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Fri, 26 Jan 2018 18:23:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Jan 2018 18:23:03 GMT
EXPOSE 8529/tcp
# Fri, 26 Jan 2018 18:23:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03931384a07c2e4a044b09e3fe6ced155b0f18a4314221aeffd7f8952d256bf`  
		Last Modified: Fri, 26 Jan 2018 18:23:32 GMT  
		Size: 6.9 MB (6920988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d87369357713563d06f952bc676c981ceecdabab975d9d4621caa1e21b9de5`  
		Last Modified: Fri, 26 Jan 2018 18:23:29 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c43af0313850faf33b0f4cbe425364b7128f4624a6cf16fd4da5c68cd34d1a7`  
		Last Modified: Fri, 26 Jan 2018 18:23:30 GMT  
		Size: 7.4 MB (7351606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd9b87b2fc045eddb9f8719b0281a82e035ebe86e9c3d36a083712d5a5fb017`  
		Last Modified: Fri, 26 Jan 2018 18:23:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fc83695aa80874fd0f04805e062a8b8067baff4b74993df046bd87a92fc65e`  
		Last Modified: Fri, 26 Jan 2018 18:23:40 GMT  
		Size: 56.2 MB (56247088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488e5fc045d4618171a870fd1daf90232d1ac771410ad2aa6c7d4f3ecdc9990`  
		Last Modified: Fri, 26 Jan 2018 18:23:29 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:b15a96f068a40feeb3b81d6ce0b20bb1a081598d53dc1603dd57c55678d09b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:f6957974ab253d7fd6f848988468b57f2c34ded08e6e604bfa4fc8c2655375cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115646736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5abbc75822156b0a3db8389bf19c2a547eb670d1c6db5c0d7aadb50457512522`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:13:36 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 12 Dec 2017 03:13:36 GMT
ENV ARCHITECTURE=amd64
# Tue, 12 Dec 2017 03:13:36 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_VERSION=3.3.3
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 26 Jan 2018 18:22:03 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.3-1_amd64.deb
# Fri, 26 Jan 2018 18:22:04 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb
# Fri, 26 Jan 2018 18:22:04 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.3-1_amd64.deb.asc
# Fri, 26 Jan 2018 18:22:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 18:22:16 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 26 Jan 2018 18:22:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 18:22:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 26 Jan 2018 18:22:53 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 26 Jan 2018 18:23:02 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 26 Jan 2018 18:23:02 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Fri, 26 Jan 2018 18:23:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Jan 2018 18:23:03 GMT
EXPOSE 8529/tcp
# Fri, 26 Jan 2018 18:23:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03931384a07c2e4a044b09e3fe6ced155b0f18a4314221aeffd7f8952d256bf`  
		Last Modified: Fri, 26 Jan 2018 18:23:32 GMT  
		Size: 6.9 MB (6920988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d87369357713563d06f952bc676c981ceecdabab975d9d4621caa1e21b9de5`  
		Last Modified: Fri, 26 Jan 2018 18:23:29 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c43af0313850faf33b0f4cbe425364b7128f4624a6cf16fd4da5c68cd34d1a7`  
		Last Modified: Fri, 26 Jan 2018 18:23:30 GMT  
		Size: 7.4 MB (7351606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd9b87b2fc045eddb9f8719b0281a82e035ebe86e9c3d36a083712d5a5fb017`  
		Last Modified: Fri, 26 Jan 2018 18:23:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fc83695aa80874fd0f04805e062a8b8067baff4b74993df046bd87a92fc65e`  
		Last Modified: Fri, 26 Jan 2018 18:23:40 GMT  
		Size: 56.2 MB (56247088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488e5fc045d4618171a870fd1daf90232d1ac771410ad2aa6c7d4f3ecdc9990`  
		Last Modified: Fri, 26 Jan 2018 18:23:29 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

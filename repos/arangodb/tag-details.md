<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.17`](#arangodb3217)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.23`](#arangodb3323)
-	[`arangodb:3.4`](#arangodb34)
-	[`arangodb:3.4.5`](#arangodb345)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:dbbabbeb6c16715f3c7d9ff30b1af7f73012a98a2719b08ffab94477a9f4e8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:ea195497db9da36371af63d7d50a6bfaa70a2b4f9c5fedfd4a16b46b5431b0a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115100993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e7da8a09d634781299d379baf66b426805d2ec82d311ac6f9631ccf6894af9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:06:37 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 08 May 2019 01:06:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 08 May 2019 01:06:39 GMT
ENV ARCHITECTURE=amd64
# Wed, 08 May 2019 01:06:39 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 08 May 2019 01:06:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 08 May 2019 01:06:39 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 08 May 2019 01:06:40 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 08 May 2019 01:06:40 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 08 May 2019 01:09:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 08 May 2019 01:09:10 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 08 May 2019 01:09:10 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 08 May 2019 01:09:10 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Wed, 08 May 2019 01:09:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:09:10 GMT
EXPOSE 8529
# Wed, 08 May 2019 01:09:11 GMT
USER arangodb
# Wed, 08 May 2019 01:09:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10993b002ece4b0eecb29459700992656eab01c725b7dc6e469f9b38443cb8c9`  
		Last Modified: Wed, 08 May 2019 01:10:31 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ad3a6c561221f2417739f8a2bbb4046b134a2b1a155bc924aef4e7b13ef5e`  
		Last Modified: Wed, 08 May 2019 01:10:42 GMT  
		Size: 60.7 MB (60706617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9920c2131aece3d04ce89ea951c123275c5dc884789e6d63ef07b9a70c593445`  
		Last Modified: Wed, 08 May 2019 01:10:32 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8973e65a470eb6ea757d896c88efa499c6fb54dabc60d54d6925491b02881703`  
		Last Modified: Wed, 08 May 2019 01:10:32 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:dbbabbeb6c16715f3c7d9ff30b1af7f73012a98a2719b08ffab94477a9f4e8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:ea195497db9da36371af63d7d50a6bfaa70a2b4f9c5fedfd4a16b46b5431b0a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115100993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e7da8a09d634781299d379baf66b426805d2ec82d311ac6f9631ccf6894af9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:06:37 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 08 May 2019 01:06:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 08 May 2019 01:06:39 GMT
ENV ARCHITECTURE=amd64
# Wed, 08 May 2019 01:06:39 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 08 May 2019 01:06:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 08 May 2019 01:06:39 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 08 May 2019 01:06:40 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 08 May 2019 01:06:40 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 08 May 2019 01:09:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 08 May 2019 01:09:10 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 08 May 2019 01:09:10 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 08 May 2019 01:09:10 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Wed, 08 May 2019 01:09:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:09:10 GMT
EXPOSE 8529
# Wed, 08 May 2019 01:09:11 GMT
USER arangodb
# Wed, 08 May 2019 01:09:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10993b002ece4b0eecb29459700992656eab01c725b7dc6e469f9b38443cb8c9`  
		Last Modified: Wed, 08 May 2019 01:10:31 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ad3a6c561221f2417739f8a2bbb4046b134a2b1a155bc924aef4e7b13ef5e`  
		Last Modified: Wed, 08 May 2019 01:10:42 GMT  
		Size: 60.7 MB (60706617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9920c2131aece3d04ce89ea951c123275c5dc884789e6d63ef07b9a70c593445`  
		Last Modified: Wed, 08 May 2019 01:10:32 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8973e65a470eb6ea757d896c88efa499c6fb54dabc60d54d6925491b02881703`  
		Last Modified: Wed, 08 May 2019 01:10:32 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:faaa04ceb99ecf624679b72a225ae51f6b4ec3f0371e4f21e7022e105ea12767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:710f1490b306239d8ade645ee0217fc4486b6aa03ebb66d1feb212000f1fddb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113501161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8368bfc03548e88db7ced855144aaaa0694f77ae1d79ebad584a4d334a4c9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:09:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 08 May 2019 01:09:21 GMT
ENV ARCHITECTURE=amd64
# Wed, 08 May 2019 01:09:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 08 May 2019 01:09:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:09:32 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 08 May 2019 01:09:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:09:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:09:59 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 08 May 2019 01:09:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 08 May 2019 01:10:00 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 08 May 2019 01:10:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:10:00 GMT
EXPOSE 8529
# Wed, 08 May 2019 01:10:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8346a9e40be1452d74f7da0cf0a33c931447b0debed2c6d0fa9f3d553a0751`  
		Last Modified: Wed, 08 May 2019 01:10:50 GMT  
		Size: 6.6 MB (6565715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334f44b76b5f4f1bb16de513d929d9e4beab73a9ee9a09063c5780dc0c366a47`  
		Last Modified: Wed, 08 May 2019 01:10:48 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5af356c8fd0315be5c87500d27dc3cbed1b7dd122d601648b9ec6df86e48ca8`  
		Last Modified: Wed, 08 May 2019 01:10:49 GMT  
		Size: 7.5 MB (7455116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b755992d422fb7687f0ffd2942165b4405726cdee46e93aa87027a73ee5ea6f`  
		Last Modified: Wed, 08 May 2019 01:10:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea277be08e3f6f17ae939556bbfcc30f8183adcae01971ed4410a546034059`  
		Last Modified: Wed, 08 May 2019 01:10:59 GMT  
		Size: 54.1 MB (54135516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef277ba9181805de3825eece70bf946f9310f8a067a238dcebc7bb99df96c3`  
		Last Modified: Wed, 08 May 2019 01:10:48 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:faaa04ceb99ecf624679b72a225ae51f6b4ec3f0371e4f21e7022e105ea12767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:710f1490b306239d8ade645ee0217fc4486b6aa03ebb66d1feb212000f1fddb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113501161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8368bfc03548e88db7ced855144aaaa0694f77ae1d79ebad584a4d334a4c9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:09:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 08 May 2019 01:09:21 GMT
ENV ARCHITECTURE=amd64
# Wed, 08 May 2019 01:09:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 08 May 2019 01:09:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 08 May 2019 01:09:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:09:32 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 08 May 2019 01:09:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:09:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:09:59 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 08 May 2019 01:09:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 08 May 2019 01:10:00 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 08 May 2019 01:10:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 01:10:00 GMT
EXPOSE 8529
# Wed, 08 May 2019 01:10:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8346a9e40be1452d74f7da0cf0a33c931447b0debed2c6d0fa9f3d553a0751`  
		Last Modified: Wed, 08 May 2019 01:10:50 GMT  
		Size: 6.6 MB (6565715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334f44b76b5f4f1bb16de513d929d9e4beab73a9ee9a09063c5780dc0c366a47`  
		Last Modified: Wed, 08 May 2019 01:10:48 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5af356c8fd0315be5c87500d27dc3cbed1b7dd122d601648b9ec6df86e48ca8`  
		Last Modified: Wed, 08 May 2019 01:10:49 GMT  
		Size: 7.5 MB (7455116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b755992d422fb7687f0ffd2942165b4405726cdee46e93aa87027a73ee5ea6f`  
		Last Modified: Wed, 08 May 2019 01:10:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea277be08e3f6f17ae939556bbfcc30f8183adcae01971ed4410a546034059`  
		Last Modified: Wed, 08 May 2019 01:10:59 GMT  
		Size: 54.1 MB (54135516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef277ba9181805de3825eece70bf946f9310f8a067a238dcebc7bb99df96c3`  
		Last Modified: Wed, 08 May 2019 01:10:48 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:0c0224416053ea2375ddbc92924895407fbcdfd2f8db40e19a7c5144ece58183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:51f0a835183f977a0668710e402e24d59f56ab1cdd45a60711228a9c821e7c31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114265856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a5cfd81154a771f7f614a3fd77375b9fd9a31ad7ba030e72ca03fa79c52b52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:09:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 08 May 2019 01:09:21 GMT
ENV ARCHITECTURE=amd64
# Wed, 08 May 2019 01:09:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 15 May 2019 03:19:25 GMT
ENV ARANGO_VERSION=3.3.23
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.23-1_amd64.deb
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb.asc
# Wed, 15 May 2019 03:19:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 03:19:42 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 15 May 2019 03:19:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 03:19:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 03:20:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 15 May 2019 03:20:06 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 15 May 2019 03:20:07 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 15 May 2019 03:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 May 2019 03:20:07 GMT
EXPOSE 8529
# Wed, 15 May 2019 03:20:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a9483dd775a60b46f128c0f0105a35d22df005851f303c8aec566eccdc8ae5`  
		Last Modified: Wed, 15 May 2019 03:20:55 GMT  
		Size: 6.6 MB (6565720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0eae418e7c72a70a40205d8245f997cd65f83686e791ff2ae70c02c5c0a0685`  
		Last Modified: Wed, 15 May 2019 03:20:53 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fddac5ac4f4989f9696545403b2d26ab2cd0acd5e986324baa06481853e35ee`  
		Last Modified: Wed, 15 May 2019 03:20:54 GMT  
		Size: 7.5 MB (7455188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deef5ee33a2bbca8db3ebb81836e55cfc65bb0f5090fb549749d24cf4331c30`  
		Last Modified: Wed, 15 May 2019 03:20:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a1aaf346ef14ccb6afb72b349f5b8e9227c49b690d806c45241c4bd9ce67f`  
		Last Modified: Wed, 15 May 2019 03:21:03 GMT  
		Size: 54.9 MB (54900134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c1bee781e35276af12cf45bf8944d56d4fc64c7041a5ecdc5d5e4df221f567`  
		Last Modified: Wed, 15 May 2019 03:20:53 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.23`

```console
$ docker pull arangodb@sha256:0c0224416053ea2375ddbc92924895407fbcdfd2f8db40e19a7c5144ece58183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.23` - linux; amd64

```console
$ docker pull arangodb@sha256:51f0a835183f977a0668710e402e24d59f56ab1cdd45a60711228a9c821e7c31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114265856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a5cfd81154a771f7f614a3fd77375b9fd9a31ad7ba030e72ca03fa79c52b52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:09:21 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 08 May 2019 01:09:21 GMT
ENV ARCHITECTURE=amd64
# Wed, 08 May 2019 01:09:21 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 15 May 2019 03:19:25 GMT
ENV ARANGO_VERSION=3.3.23
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.23-1_amd64.deb
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb
# Wed, 15 May 2019 03:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb.asc
# Wed, 15 May 2019 03:19:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 03:19:42 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 15 May 2019 03:19:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 03:19:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 03:20:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 15 May 2019 03:20:06 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 15 May 2019 03:20:07 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 15 May 2019 03:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 May 2019 03:20:07 GMT
EXPOSE 8529
# Wed, 15 May 2019 03:20:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a9483dd775a60b46f128c0f0105a35d22df005851f303c8aec566eccdc8ae5`  
		Last Modified: Wed, 15 May 2019 03:20:55 GMT  
		Size: 6.6 MB (6565720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0eae418e7c72a70a40205d8245f997cd65f83686e791ff2ae70c02c5c0a0685`  
		Last Modified: Wed, 15 May 2019 03:20:53 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fddac5ac4f4989f9696545403b2d26ab2cd0acd5e986324baa06481853e35ee`  
		Last Modified: Wed, 15 May 2019 03:20:54 GMT  
		Size: 7.5 MB (7455188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deef5ee33a2bbca8db3ebb81836e55cfc65bb0f5090fb549749d24cf4331c30`  
		Last Modified: Wed, 15 May 2019 03:20:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a1aaf346ef14ccb6afb72b349f5b8e9227c49b690d806c45241c4bd9ce67f`  
		Last Modified: Wed, 15 May 2019 03:21:03 GMT  
		Size: 54.9 MB (54900134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c1bee781e35276af12cf45bf8944d56d4fc64c7041a5ecdc5d5e4df221f567`  
		Last Modified: Wed, 15 May 2019 03:20:53 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:fe725e9c2c5d73906ef25697a4d9accb4e5a2b6f281265914a1edc63a94c2782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:b8a97dad463169010a2c764d054e27407d578c1de17a9f9a3ec57ace6eb1aebb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107668955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76e424cf7b14330b7b0b9d246c9b5a1624b1bf704a2666a4c38d2295ac54e9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_VERSION=3.4.6
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6-1_amd64.deb
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6-1_amd64.deb
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6-1_amd64.deb.asc
# Wed, 29 May 2019 16:19:49 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 29 May 2019 16:19:54 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 29 May 2019 16:19:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 16:20:04 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Wed, 29 May 2019 16:20:04 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 29 May 2019 16:20:04 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Wed, 29 May 2019 16:20:05 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Wed, 29 May 2019 16:20:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 16:20:05 GMT
EXPOSE 8529
# Wed, 29 May 2019 16:20:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9937af02c46c8dd0b7513d0e7710d287978459b84989243f8d45e033d2751edb`  
		Last Modified: Wed, 29 May 2019 16:20:24 GMT  
		Size: 30.1 MB (30135767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a916d0eeb8d8ee4ca485b49f943f08a027685cd610d9d047c03300742bf969`  
		Last Modified: Wed, 29 May 2019 16:20:15 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec9144502ae79c5fde58f92236eb6f1810cf71233bc35ae5841835cfd8a952a`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a18d7047df18e2ee59138f4ac41345ee91ce4577b8fc38ec3f7159b20299639`  
		Last Modified: Wed, 29 May 2019 16:20:29 GMT  
		Size: 75.3 MB (75320039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f31308fac555832d108edc44e4ad392d16dedabc3ffc1628d2c95a03603431`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3299d79dd96c27f3c9cf83346f36ff0f0a4dfd73aa38990437f374b248caa3f`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.5`

```console
$ docker pull arangodb@sha256:fc636edf6ca4701004025c4ea2c07692a400b2f6881a8c901fe5402207fabf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4.5` - linux; amd64

```console
$ docker pull arangodb@sha256:a9fc5430bc9aaae10ac3c0b7b86213aff936659c0a58335f93c5fc08f8522b20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104881815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0e205ec96ff74589f9811f111374f2bbf25a96edfcf35e772362ee4d83aeb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 15 May 2019 03:20:09 GMT
ENV ARANGO_VERSION=3.4.5
# Wed, 15 May 2019 03:20:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 15 May 2019 03:20:10 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.5-1_amd64.deb
# Wed, 15 May 2019 03:20:10 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.5-1_amd64.deb
# Wed, 15 May 2019 03:20:10 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.5-1_amd64.deb.asc
# Wed, 15 May 2019 03:20:26 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 15 May 2019 03:20:30 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 15 May 2019 03:20:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 15 May 2019 03:20:40 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Wed, 15 May 2019 03:20:40 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 15 May 2019 03:20:41 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Wed, 15 May 2019 03:20:41 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Wed, 15 May 2019 03:20:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 May 2019 03:20:41 GMT
EXPOSE 8529
# Wed, 15 May 2019 03:20:41 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66509331625e888d3e683f9f40f13b7f72ce21cc8385bc6e0c9bf1f7f1ec8b75`  
		Last Modified: Wed, 15 May 2019 03:21:18 GMT  
		Size: 30.2 MB (30187624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58fc57bdd7cdcc5f35cdede5d39b745a2013b0709ebe931e11def2f8e2f0ec`  
		Last Modified: Wed, 15 May 2019 03:21:09 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddbaa842550f9f09eb4b2748ee15cca0864868476d7c40457bac1e7412e57e5`  
		Last Modified: Wed, 15 May 2019 03:21:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b495f65fe2e181098be992d98b641588deb04addfa9e74c4a34cfeddd01453d1`  
		Last Modified: Wed, 15 May 2019 03:21:22 GMT  
		Size: 72.5 MB (72481045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16187b893e1def1a79fe1995e7aaacd63c174ea296dbdb7056068684a65c7311`  
		Last Modified: Wed, 15 May 2019 03:21:09 GMT  
		Size: 2.2 KB (2206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aafeab1d6278c7a125a3a04cef9cebab5f7c71053a18f8de17b743c89f1eb4b`  
		Last Modified: Wed, 15 May 2019 03:21:09 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:fe725e9c2c5d73906ef25697a4d9accb4e5a2b6f281265914a1edc63a94c2782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:b8a97dad463169010a2c764d054e27407d578c1de17a9f9a3ec57ace6eb1aebb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107668955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76e424cf7b14330b7b0b9d246c9b5a1624b1bf704a2666a4c38d2295ac54e9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_VERSION=3.4.6
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6-1_amd64.deb
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6-1_amd64.deb
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6-1_amd64.deb.asc
# Wed, 29 May 2019 16:19:49 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 29 May 2019 16:19:54 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 29 May 2019 16:19:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 16:20:04 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Wed, 29 May 2019 16:20:04 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 29 May 2019 16:20:04 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Wed, 29 May 2019 16:20:05 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Wed, 29 May 2019 16:20:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 16:20:05 GMT
EXPOSE 8529
# Wed, 29 May 2019 16:20:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9937af02c46c8dd0b7513d0e7710d287978459b84989243f8d45e033d2751edb`  
		Last Modified: Wed, 29 May 2019 16:20:24 GMT  
		Size: 30.1 MB (30135767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a916d0eeb8d8ee4ca485b49f943f08a027685cd610d9d047c03300742bf969`  
		Last Modified: Wed, 29 May 2019 16:20:15 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec9144502ae79c5fde58f92236eb6f1810cf71233bc35ae5841835cfd8a952a`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a18d7047df18e2ee59138f4ac41345ee91ce4577b8fc38ec3f7159b20299639`  
		Last Modified: Wed, 29 May 2019 16:20:29 GMT  
		Size: 75.3 MB (75320039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f31308fac555832d108edc44e4ad392d16dedabc3ffc1628d2c95a03603431`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3299d79dd96c27f3c9cf83346f36ff0f0a4dfd73aa38990437f374b248caa3f`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

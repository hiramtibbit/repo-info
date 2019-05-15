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
$ docker pull arangodb@sha256:a851275af15ecf98e43ee47a5a10cc56fba8212dd8102730f0b58bc74f818abb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:eeb1a5fea649d91a7a796db280b407395349120d43c84bb5e0bd5bbe2cf137a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117767818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b11e0ba3631ce34c791715ceffe057094f7ddc763fe827ec7bd6af3eee62f5`
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
# Sat, 11 May 2019 00:23:01 GMT
ENV ARANGO_VERSION=3.3.21
# Sat, 11 May 2019 00:23:01 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Sat, 11 May 2019 00:23:01 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Sat, 11 May 2019 00:23:01 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Sat, 11 May 2019 00:23:02 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Sat, 11 May 2019 00:23:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Sat, 11 May 2019 00:23:19 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 11 May 2019 00:23:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Sat, 11 May 2019 00:23:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 11 May 2019 00:23:45 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 11 May 2019 00:23:46 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 11 May 2019 00:23:46 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Sat, 11 May 2019 00:23:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 00:23:46 GMT
EXPOSE 8529
# Sat, 11 May 2019 00:23:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ee24e2b8d8d19a7f7d8454866d925992567f1ecdac3de8923f14221083786e`  
		Last Modified: Sat, 11 May 2019 00:24:04 GMT  
		Size: 6.6 MB (6565722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31e822bf3492eba371d9bebeea2eddca665e9cabb01dabfa9997528892fef92`  
		Last Modified: Sat, 11 May 2019 00:24:02 GMT  
		Size: 3.3 KB (3346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40756699993b4f29da4f36639cc15e295f7121d98538c666a925089946cb913f`  
		Last Modified: Sat, 11 May 2019 00:24:04 GMT  
		Size: 7.5 MB (7455167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9945ffa737fe85a014388e2e7bb02d782fd0d96bea4039d8c7cfc5409dcecfd`  
		Last Modified: Sat, 11 May 2019 00:24:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4636ec7d3a657095b8754959de43a6da2b782afdda89c4f379009f5415a766`  
		Last Modified: Sat, 11 May 2019 00:24:14 GMT  
		Size: 58.4 MB (58402116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df006127339d38334088e7fb8273ada24eeddecb740d1f2e016d98f7b19fee7`  
		Last Modified: Sat, 11 May 2019 00:24:02 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.23`

**does not exist** (yet?)

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:824abc85250ebf4fb839de21e9ef8c6e714c0523f18741415f6a48bd3dd5e9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:9c0ede6ce6936bb4d2279cec4c4b1f3cc171eef7c7f966b9262974901344d0f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103144265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b511850759aaf68034d7fc726cb68c0e4cd7c291c52b1d945d911ecd2a84de13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 14 Mar 2019 16:19:25 GMT
ENV ARANGO_VERSION=3.4.4
# Thu, 14 Mar 2019 16:19:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Thu, 14 Mar 2019 16:19:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.4-1_amd64.deb
# Thu, 14 Mar 2019 16:19:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.4-1_amd64.deb
# Thu, 14 Mar 2019 16:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.4-1_amd64.deb.asc
# Thu, 14 Mar 2019 16:19:43 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Thu, 14 Mar 2019 16:19:47 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 14 Mar 2019 16:19:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 14 Mar 2019 16:19:55 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Thu, 14 Mar 2019 16:19:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 14 Mar 2019 16:19:55 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Thu, 14 Mar 2019 16:19:55 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Thu, 14 Mar 2019 16:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 16:19:56 GMT
EXPOSE 8529
# Thu, 14 Mar 2019 16:19:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314b9377b4ee1fcc963499898f42c4f49fd2a025293540f7778b7417cfce90ce`  
		Last Modified: Thu, 14 Mar 2019 16:20:18 GMT  
		Size: 30.0 MB (30020743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724687c00c8848b9aa1a56e4fc573a11894a5f08e327234e84a7c51f2b6cf0d`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f8217f1395141a39168350ad62b308e1e425d03c1dd02b54c82600dbc58fea`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478c1f2c44edad5b7bfed360b23b393208d58514f0a10287365adced9b91255`  
		Last Modified: Thu, 14 Mar 2019 16:20:22 GMT  
		Size: 70.9 MB (70910611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f4a3fa4363f8de8958bce4d56dc4417c401ada440322dedbe4aed14c4fdebf`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 2.0 KB (1970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8271e371960a3ac55fa19b93ac1837293ed5860d1a17cfaf30987f59db704`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.5`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:824abc85250ebf4fb839de21e9ef8c6e714c0523f18741415f6a48bd3dd5e9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:9c0ede6ce6936bb4d2279cec4c4b1f3cc171eef7c7f966b9262974901344d0f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103144265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b511850759aaf68034d7fc726cb68c0e4cd7c291c52b1d945d911ecd2a84de13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 14 Mar 2019 16:19:25 GMT
ENV ARANGO_VERSION=3.4.4
# Thu, 14 Mar 2019 16:19:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Thu, 14 Mar 2019 16:19:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.4-1_amd64.deb
# Thu, 14 Mar 2019 16:19:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.4-1_amd64.deb
# Thu, 14 Mar 2019 16:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.4-1_amd64.deb.asc
# Thu, 14 Mar 2019 16:19:43 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Thu, 14 Mar 2019 16:19:47 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 14 Mar 2019 16:19:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 14 Mar 2019 16:19:55 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Thu, 14 Mar 2019 16:19:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 14 Mar 2019 16:19:55 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Thu, 14 Mar 2019 16:19:55 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Thu, 14 Mar 2019 16:19:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Mar 2019 16:19:56 GMT
EXPOSE 8529
# Thu, 14 Mar 2019 16:19:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314b9377b4ee1fcc963499898f42c4f49fd2a025293540f7778b7417cfce90ce`  
		Last Modified: Thu, 14 Mar 2019 16:20:18 GMT  
		Size: 30.0 MB (30020743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724687c00c8848b9aa1a56e4fc573a11894a5f08e327234e84a7c51f2b6cf0d`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f8217f1395141a39168350ad62b308e1e425d03c1dd02b54c82600dbc58fea`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478c1f2c44edad5b7bfed360b23b393208d58514f0a10287365adced9b91255`  
		Last Modified: Thu, 14 Mar 2019 16:20:22 GMT  
		Size: 70.9 MB (70910611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f4a3fa4363f8de8958bce4d56dc4417c401ada440322dedbe4aed14c4fdebf`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 2.0 KB (1970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8271e371960a3ac55fa19b93ac1837293ed5860d1a17cfaf30987f59db704`  
		Last Modified: Thu, 14 Mar 2019 16:20:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

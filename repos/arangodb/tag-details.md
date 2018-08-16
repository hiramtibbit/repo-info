<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.16`](#arangodb3216)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.14`](#arangodb3314)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:ccd2bff82f4dcd0ab78e9f91d79b9befb6287550574889a68ea99e04b767193d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:7f16df0d372c893a1c7a6d4fb75f7d3b90a88edb3fec3c1536357c032765f326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee51db637e23a4162f83e4d01d053143f3e35886e698bcb4b577b8a8db0a8269`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:45:24 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:45:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jul 2018 01:45:25 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:45:25 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 17 Jul 2018 01:45:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 17 Jul 2018 01:45:26 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 17 Jul 2018 01:45:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 17 Jul 2018 01:45:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 17 Jul 2018 01:46:32 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jul 2018 01:46:33 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 17 Jul 2018 01:46:33 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jul 2018 01:46:34 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:46:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:46:45 GMT
EXPOSE 8529/tcp
# Tue, 17 Jul 2018 01:46:45 GMT
USER [arangodb]
# Tue, 17 Jul 2018 01:46:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e786e2cf05e16266bff04d33c9c1510b8e1d9c9812e2a7bad765b2079aad176`  
		Last Modified: Tue, 17 Jul 2018 01:50:46 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3301a2b9a704cf2139efbc332b7d3930ad179f41fe088dd27c053dbff78e20`  
		Last Modified: Tue, 17 Jul 2018 01:51:06 GMT  
		Size: 60.7 MB (60730826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee836bb5ee41f8523a05543d3fb643581606f971eed8bce6cb3c064298e3b1a`  
		Last Modified: Tue, 17 Jul 2018 01:50:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1e03c169ebb15062cd86f21fa0083292a6d0e7f82ec4d649dc08f0208e7859`  
		Last Modified: Tue, 17 Jul 2018 01:50:46 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:ccd2bff82f4dcd0ab78e9f91d79b9befb6287550574889a68ea99e04b767193d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:7f16df0d372c893a1c7a6d4fb75f7d3b90a88edb3fec3c1536357c032765f326
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee51db637e23a4162f83e4d01d053143f3e35886e698bcb4b577b8a8db0a8269`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:45:24 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:45:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jul 2018 01:45:25 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:45:25 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 17 Jul 2018 01:45:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 17 Jul 2018 01:45:26 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 17 Jul 2018 01:45:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 17 Jul 2018 01:45:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 17 Jul 2018 01:46:32 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jul 2018 01:46:33 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 17 Jul 2018 01:46:33 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 17 Jul 2018 01:46:34 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 17 Jul 2018 01:46:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:46:45 GMT
EXPOSE 8529/tcp
# Tue, 17 Jul 2018 01:46:45 GMT
USER [arangodb]
# Tue, 17 Jul 2018 01:46:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e786e2cf05e16266bff04d33c9c1510b8e1d9c9812e2a7bad765b2079aad176`  
		Last Modified: Tue, 17 Jul 2018 01:50:46 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3301a2b9a704cf2139efbc332b7d3930ad179f41fe088dd27c053dbff78e20`  
		Last Modified: Tue, 17 Jul 2018 01:51:06 GMT  
		Size: 60.7 MB (60730826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee836bb5ee41f8523a05543d3fb643581606f971eed8bce6cb3c064298e3b1a`  
		Last Modified: Tue, 17 Jul 2018 01:50:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1e03c169ebb15062cd86f21fa0083292a6d0e7f82ec4d649dc08f0208e7859`  
		Last Modified: Tue, 17 Jul 2018 01:50:46 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:6b9b35a439f4d3da4e31423239b71dd75701b5fe9a3cb86fe98257bf2be4202e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:5724f2a28d9724983fb7e313c698452703aee1958d574c71e202913fe520134c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112791646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3852c2733532e62e4ef57e2c9e1ca7693bf20ec1b754d235a79f8b886026288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:47:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:47:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:47:22 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 20 Jul 2018 17:20:47 GMT
ENV ARANGO_VERSION=3.2.16
# Fri, 20 Jul 2018 17:20:47 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 20 Jul 2018 17:20:47 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.16-1_amd64.deb
# Fri, 20 Jul 2018 17:20:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb
# Fri, 20 Jul 2018 17:20:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb.asc
# Fri, 20 Jul 2018 17:21:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 17:21:07 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 20 Jul 2018 17:21:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 17:21:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 20 Jul 2018 17:21:43 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 20 Jul 2018 17:21:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 20 Jul 2018 17:21:50 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Fri, 20 Jul 2018 17:21:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 17:21:51 GMT
EXPOSE 8529/tcp
# Fri, 20 Jul 2018 17:21:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2eda0aa86b192bbe631204c7d76781ffbe4593157ff7ae7443be564a4c715c`  
		Last Modified: Fri, 20 Jul 2018 17:22:19 GMT  
		Size: 6.6 MB (6561861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b06cf686beef0e1e71ae0ff029863f4a7ebd0b307003fdde8cdedb0ec8952fa`  
		Last Modified: Fri, 20 Jul 2018 17:22:15 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3b944f641d7d4e9d9e3f9771abe3230984f784e215bfbe669069459cb4a966`  
		Last Modified: Fri, 20 Jul 2018 17:22:18 GMT  
		Size: 7.3 MB (7320862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb47fa735343798a98e83acbf56bbb0cfbb6648ed61528238c105e044be6f177`  
		Last Modified: Fri, 20 Jul 2018 17:22:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c4c4b315bdc7efbcdd88f15e37ef972f475ebe06ef049f957af3d27d6126c`  
		Last Modified: Fri, 20 Jul 2018 17:22:36 GMT  
		Size: 53.6 MB (53593496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ecf11755ba222af572d8bd90ddbf472d828189cd8f0396eff57e830dc8f95`  
		Last Modified: Fri, 20 Jul 2018 17:22:15 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.16`

```console
$ docker pull arangodb@sha256:6b9b35a439f4d3da4e31423239b71dd75701b5fe9a3cb86fe98257bf2be4202e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.16` - linux; amd64

```console
$ docker pull arangodb@sha256:5724f2a28d9724983fb7e313c698452703aee1958d574c71e202913fe520134c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112791646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3852c2733532e62e4ef57e2c9e1ca7693bf20ec1b754d235a79f8b886026288`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:47:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:47:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:47:22 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 20 Jul 2018 17:20:47 GMT
ENV ARANGO_VERSION=3.2.16
# Fri, 20 Jul 2018 17:20:47 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 20 Jul 2018 17:20:47 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.16-1_amd64.deb
# Fri, 20 Jul 2018 17:20:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb
# Fri, 20 Jul 2018 17:20:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb.asc
# Fri, 20 Jul 2018 17:21:02 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 17:21:07 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 20 Jul 2018 17:21:24 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 17:21:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 20 Jul 2018 17:21:43 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 20 Jul 2018 17:21:49 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 20 Jul 2018 17:21:50 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Fri, 20 Jul 2018 17:21:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 17:21:51 GMT
EXPOSE 8529/tcp
# Fri, 20 Jul 2018 17:21:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2eda0aa86b192bbe631204c7d76781ffbe4593157ff7ae7443be564a4c715c`  
		Last Modified: Fri, 20 Jul 2018 17:22:19 GMT  
		Size: 6.6 MB (6561861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b06cf686beef0e1e71ae0ff029863f4a7ebd0b307003fdde8cdedb0ec8952fa`  
		Last Modified: Fri, 20 Jul 2018 17:22:15 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3b944f641d7d4e9d9e3f9771abe3230984f784e215bfbe669069459cb4a966`  
		Last Modified: Fri, 20 Jul 2018 17:22:18 GMT  
		Size: 7.3 MB (7320862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb47fa735343798a98e83acbf56bbb0cfbb6648ed61528238c105e044be6f177`  
		Last Modified: Fri, 20 Jul 2018 17:22:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c4c4b315bdc7efbcdd88f15e37ef972f475ebe06ef049f957af3d27d6126c`  
		Last Modified: Fri, 20 Jul 2018 17:22:36 GMT  
		Size: 53.6 MB (53593496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ecf11755ba222af572d8bd90ddbf472d828189cd8f0396eff57e830dc8f95`  
		Last Modified: Fri, 20 Jul 2018 17:22:15 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:23b22204d8dbdd2b7af95cbee7f4a5a8064ac01206a167a2cb849721960e3894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:508273cd538ecf03c2a17ed9bad020ce88b3363c522ab45832623b0462395167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117452233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321af6b70583adee9101ffd46380816d7e90eb0f95cd76ae81d7b3a293d6376d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:47:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:47:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:47:22 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_VERSION=3.3.14
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.14-1_amd64.deb
# Thu, 16 Aug 2018 20:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.14-1_amd64.deb
# Thu, 16 Aug 2018 20:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.14-1_amd64.deb.asc
# Thu, 16 Aug 2018 20:21:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 16 Aug 2018 20:22:09 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 16 Aug 2018 20:22:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 16 Aug 2018 20:22:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Aug 2018 20:23:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 16 Aug 2018 20:23:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 16 Aug 2018 20:23:06 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Thu, 16 Aug 2018 20:23:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Aug 2018 20:23:07 GMT
EXPOSE 8529/tcp
# Thu, 16 Aug 2018 20:23:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af85454268a55a6212119e243929278c13fc5095568a35172026531621241f6`  
		Last Modified: Thu, 16 Aug 2018 20:23:59 GMT  
		Size: 6.6 MB (6561863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cfa74ff8070d289b4a6366b90af516dd370fa3fd1a259d48a9861081ab5934`  
		Last Modified: Thu, 16 Aug 2018 20:23:53 GMT  
		Size: 3.5 KB (3478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb6319d01df18b7342ea434472ffddd1239d1ac37a1c6a7ab277bfe08f268fe`  
		Last Modified: Thu, 16 Aug 2018 20:23:56 GMT  
		Size: 7.3 MB (7320859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa0d6bd004be7729141cbefb7ed0d78021516b43f9acaa844d8bdc4d10e6ef`  
		Last Modified: Thu, 16 Aug 2018 20:23:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e622e2db9b8dbc5b1fba24d1d161bcdd2fe44f00dcd1e156ee8cfc51ddf0b78`  
		Last Modified: Thu, 16 Aug 2018 20:24:25 GMT  
		Size: 58.3 MB (58254074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2747b1336c40bd54ba4e85038e5c17371e467fe465b8c47e01d8048217db88`  
		Last Modified: Thu, 16 Aug 2018 20:23:53 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.14`

```console
$ docker pull arangodb@sha256:23b22204d8dbdd2b7af95cbee7f4a5a8064ac01206a167a2cb849721960e3894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.14` - linux; amd64

```console
$ docker pull arangodb@sha256:508273cd538ecf03c2a17ed9bad020ce88b3363c522ab45832623b0462395167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117452233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321af6b70583adee9101ffd46380816d7e90eb0f95cd76ae81d7b3a293d6376d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:47:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:47:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:47:22 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_VERSION=3.3.14
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.14-1_amd64.deb
# Thu, 16 Aug 2018 20:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.14-1_amd64.deb
# Thu, 16 Aug 2018 20:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.14-1_amd64.deb.asc
# Thu, 16 Aug 2018 20:21:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 16 Aug 2018 20:22:09 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 16 Aug 2018 20:22:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 16 Aug 2018 20:22:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Aug 2018 20:23:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 16 Aug 2018 20:23:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 16 Aug 2018 20:23:06 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Thu, 16 Aug 2018 20:23:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Aug 2018 20:23:07 GMT
EXPOSE 8529/tcp
# Thu, 16 Aug 2018 20:23:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af85454268a55a6212119e243929278c13fc5095568a35172026531621241f6`  
		Last Modified: Thu, 16 Aug 2018 20:23:59 GMT  
		Size: 6.6 MB (6561863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cfa74ff8070d289b4a6366b90af516dd370fa3fd1a259d48a9861081ab5934`  
		Last Modified: Thu, 16 Aug 2018 20:23:53 GMT  
		Size: 3.5 KB (3478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb6319d01df18b7342ea434472ffddd1239d1ac37a1c6a7ab277bfe08f268fe`  
		Last Modified: Thu, 16 Aug 2018 20:23:56 GMT  
		Size: 7.3 MB (7320859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa0d6bd004be7729141cbefb7ed0d78021516b43f9acaa844d8bdc4d10e6ef`  
		Last Modified: Thu, 16 Aug 2018 20:23:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e622e2db9b8dbc5b1fba24d1d161bcdd2fe44f00dcd1e156ee8cfc51ddf0b78`  
		Last Modified: Thu, 16 Aug 2018 20:24:25 GMT  
		Size: 58.3 MB (58254074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2747b1336c40bd54ba4e85038e5c17371e467fe465b8c47e01d8048217db88`  
		Last Modified: Thu, 16 Aug 2018 20:23:53 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:23b22204d8dbdd2b7af95cbee7f4a5a8064ac01206a167a2cb849721960e3894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:508273cd538ecf03c2a17ed9bad020ce88b3363c522ab45832623b0462395167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117452233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321af6b70583adee9101ffd46380816d7e90eb0f95cd76ae81d7b3a293d6376d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:47:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:47:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:47:22 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_VERSION=3.3.14
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 16 Aug 2018 20:21:17 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.14-1_amd64.deb
# Thu, 16 Aug 2018 20:21:38 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.14-1_amd64.deb
# Thu, 16 Aug 2018 20:21:38 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.14-1_amd64.deb.asc
# Thu, 16 Aug 2018 20:21:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 16 Aug 2018 20:22:09 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 16 Aug 2018 20:22:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 16 Aug 2018 20:22:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 16 Aug 2018 20:23:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 16 Aug 2018 20:23:05 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 16 Aug 2018 20:23:06 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Thu, 16 Aug 2018 20:23:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 16 Aug 2018 20:23:07 GMT
EXPOSE 8529/tcp
# Thu, 16 Aug 2018 20:23:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af85454268a55a6212119e243929278c13fc5095568a35172026531621241f6`  
		Last Modified: Thu, 16 Aug 2018 20:23:59 GMT  
		Size: 6.6 MB (6561863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cfa74ff8070d289b4a6366b90af516dd370fa3fd1a259d48a9861081ab5934`  
		Last Modified: Thu, 16 Aug 2018 20:23:53 GMT  
		Size: 3.5 KB (3478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb6319d01df18b7342ea434472ffddd1239d1ac37a1c6a7ab277bfe08f268fe`  
		Last Modified: Thu, 16 Aug 2018 20:23:56 GMT  
		Size: 7.3 MB (7320859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa0d6bd004be7729141cbefb7ed0d78021516b43f9acaa844d8bdc4d10e6ef`  
		Last Modified: Thu, 16 Aug 2018 20:23:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e622e2db9b8dbc5b1fba24d1d161bcdd2fe44f00dcd1e156ee8cfc51ddf0b78`  
		Last Modified: Thu, 16 Aug 2018 20:24:25 GMT  
		Size: 58.3 MB (58254074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2747b1336c40bd54ba4e85038e5c17371e467fe465b8c47e01d8048217db88`  
		Last Modified: Thu, 16 Aug 2018 20:23:53 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

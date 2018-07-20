<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.16`](#arangodb3216)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.12`](#arangodb3312)
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
$ docker pull arangodb@sha256:ae9208486936cb5538ecf19e0df02a920e2a11644cc6c9a84881fb7c6970b536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:351b10f15527c5727a0beaf7db8345e4777842cd792e22dc39389b8680a56595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112663153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3e1f5e0c012a3897de19d03e1917bc781c04e720fb3dd47b8eea594f87ea2e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Fri, 29 Jun 2018 23:20:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 29 Jun 2018 23:20:22 GMT
ENV ARCHITECTURE=amd64
# Fri, 29 Jun 2018 23:20:23 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_VERSION=3.2.15
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Fri, 29 Jun 2018 23:20:24 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Fri, 29 Jun 2018 23:20:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 23:20:47 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 29 Jun 2018 23:20:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 23:20:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jun 2018 23:21:08 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 29 Jun 2018 23:21:09 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 29 Jun 2018 23:21:09 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Fri, 29 Jun 2018 23:21:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Jun 2018 23:21:10 GMT
EXPOSE 8529/tcp
# Fri, 29 Jun 2018 23:21:10 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad2648a4ade27a6436dee81d0441702b544b9938c477f7546abb59a90ea9539`  
		Last Modified: Fri, 29 Jun 2018 23:23:02 GMT  
		Size: 6.6 MB (6561572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fd502de41d53411ea4b3e34b96f3e434721c5945a813bc89cbe0a4f5184d46`  
		Last Modified: Fri, 29 Jun 2018 23:22:59 GMT  
		Size: 3.5 KB (3466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ca36875a39481aa59937d564c3bc81ea23a74fbdfac475f72d06831a598375`  
		Last Modified: Fri, 29 Jun 2018 23:23:00 GMT  
		Size: 7.4 MB (7353201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868072d7c196ab8bcb96c9195def768ac3d0010d91896e7ef7c659f6beb0276`  
		Last Modified: Fri, 29 Jun 2018 23:23:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb436879be7e788a8d3e999aaf633374f538d3a01e8128debb4654746513ca0`  
		Last Modified: Fri, 29 Jun 2018 23:23:08 GMT  
		Size: 53.4 MB (53423734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e48f9220d4a3d3aed94071adf7f11bc1e8b10154b6b83eb17060476327742a`  
		Last Modified: Fri, 29 Jun 2018 23:22:59 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.16`

```console
$ docker pull arangodb@sha256:ae9208486936cb5538ecf19e0df02a920e2a11644cc6c9a84881fb7c6970b536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.16` - linux; amd64

```console
$ docker pull arangodb@sha256:351b10f15527c5727a0beaf7db8345e4777842cd792e22dc39389b8680a56595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112663153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3e1f5e0c012a3897de19d03e1917bc781c04e720fb3dd47b8eea594f87ea2e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Fri, 29 Jun 2018 23:20:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 29 Jun 2018 23:20:22 GMT
ENV ARCHITECTURE=amd64
# Fri, 29 Jun 2018 23:20:23 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_VERSION=3.2.15
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Fri, 29 Jun 2018 23:20:23 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Fri, 29 Jun 2018 23:20:24 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Fri, 29 Jun 2018 23:20:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 23:20:47 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 29 Jun 2018 23:20:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 23:20:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jun 2018 23:21:08 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 29 Jun 2018 23:21:09 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 29 Jun 2018 23:21:09 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Fri, 29 Jun 2018 23:21:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Jun 2018 23:21:10 GMT
EXPOSE 8529/tcp
# Fri, 29 Jun 2018 23:21:10 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad2648a4ade27a6436dee81d0441702b544b9938c477f7546abb59a90ea9539`  
		Last Modified: Fri, 29 Jun 2018 23:23:02 GMT  
		Size: 6.6 MB (6561572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fd502de41d53411ea4b3e34b96f3e434721c5945a813bc89cbe0a4f5184d46`  
		Last Modified: Fri, 29 Jun 2018 23:22:59 GMT  
		Size: 3.5 KB (3466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ca36875a39481aa59937d564c3bc81ea23a74fbdfac475f72d06831a598375`  
		Last Modified: Fri, 29 Jun 2018 23:23:00 GMT  
		Size: 7.4 MB (7353201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868072d7c196ab8bcb96c9195def768ac3d0010d91896e7ef7c659f6beb0276`  
		Last Modified: Fri, 29 Jun 2018 23:23:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb436879be7e788a8d3e999aaf633374f538d3a01e8128debb4654746513ca0`  
		Last Modified: Fri, 29 Jun 2018 23:23:08 GMT  
		Size: 53.4 MB (53423734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e48f9220d4a3d3aed94071adf7f11bc1e8b10154b6b83eb17060476327742a`  
		Last Modified: Fri, 29 Jun 2018 23:22:59 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:01c99317ba03dd83cff9d1674af7b5630fda7a308efa48ce2d4996b0ea95f13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:91c043cc487e3a3e0c16e5729598471862290153d4ea077c855df93c58e5c94f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116836717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e554afc44da0a640eabae08ee8c8245ac9999191ad06d54d92077ddb9eb0ba`
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
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_VERSION=3.3.12
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:50 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb.asc
# Tue, 17 Jul 2018 01:48:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jul 2018 01:49:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 01:50:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jul 2018 01:50:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jul 2018 01:50:17 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 17 Jul 2018 01:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:50:18 GMT
EXPOSE 8529/tcp
# Tue, 17 Jul 2018 01:50:18 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57766d9e96c5558e16749f54fc70685985861cef2e4a28a3b88e2a632c687fd8`  
		Last Modified: Tue, 17 Jul 2018 01:51:57 GMT  
		Size: 6.6 MB (6561834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a0fc72fc7bf2c5a526dd5e2fb1401c4185cd1f09598cf89b487c655153486`  
		Last Modified: Tue, 17 Jul 2018 01:51:52 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624afc3c4d0d2e84b6e4d1a68d7f5d82ae272db58e6067c282646fe99dc4e0ef`  
		Last Modified: Tue, 17 Jul 2018 01:51:55 GMT  
		Size: 7.3 MB (7320904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b179f955dfa997ddf82f1058c2d86d376ff37bf572d47b09987ab2603d02a5`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070c94aba6cf414b786393b5254bd09f192f07b4de544f33ca08ae748edf307e`  
		Last Modified: Tue, 17 Jul 2018 01:52:14 GMT  
		Size: 57.6 MB (57638552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d10465459b135a4b2d7270ce0333addcd0191b77c31d1b7842b5f68867fc33`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.12`

```console
$ docker pull arangodb@sha256:01c99317ba03dd83cff9d1674af7b5630fda7a308efa48ce2d4996b0ea95f13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.12` - linux; amd64

```console
$ docker pull arangodb@sha256:91c043cc487e3a3e0c16e5729598471862290153d4ea077c855df93c58e5c94f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116836717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e554afc44da0a640eabae08ee8c8245ac9999191ad06d54d92077ddb9eb0ba`
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
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_VERSION=3.3.12
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:50 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb.asc
# Tue, 17 Jul 2018 01:48:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jul 2018 01:49:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 01:50:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jul 2018 01:50:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jul 2018 01:50:17 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 17 Jul 2018 01:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:50:18 GMT
EXPOSE 8529/tcp
# Tue, 17 Jul 2018 01:50:18 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57766d9e96c5558e16749f54fc70685985861cef2e4a28a3b88e2a632c687fd8`  
		Last Modified: Tue, 17 Jul 2018 01:51:57 GMT  
		Size: 6.6 MB (6561834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a0fc72fc7bf2c5a526dd5e2fb1401c4185cd1f09598cf89b487c655153486`  
		Last Modified: Tue, 17 Jul 2018 01:51:52 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624afc3c4d0d2e84b6e4d1a68d7f5d82ae272db58e6067c282646fe99dc4e0ef`  
		Last Modified: Tue, 17 Jul 2018 01:51:55 GMT  
		Size: 7.3 MB (7320904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b179f955dfa997ddf82f1058c2d86d376ff37bf572d47b09987ab2603d02a5`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070c94aba6cf414b786393b5254bd09f192f07b4de544f33ca08ae748edf307e`  
		Last Modified: Tue, 17 Jul 2018 01:52:14 GMT  
		Size: 57.6 MB (57638552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d10465459b135a4b2d7270ce0333addcd0191b77c31d1b7842b5f68867fc33`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:01c99317ba03dd83cff9d1674af7b5630fda7a308efa48ce2d4996b0ea95f13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:91c043cc487e3a3e0c16e5729598471862290153d4ea077c855df93c58e5c94f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116836717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e554afc44da0a640eabae08ee8c8245ac9999191ad06d54d92077ddb9eb0ba`
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
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_VERSION=3.3.12
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:50 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb.asc
# Tue, 17 Jul 2018 01:48:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jul 2018 01:49:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 01:50:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jul 2018 01:50:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jul 2018 01:50:17 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 17 Jul 2018 01:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:50:18 GMT
EXPOSE 8529/tcp
# Tue, 17 Jul 2018 01:50:18 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57766d9e96c5558e16749f54fc70685985861cef2e4a28a3b88e2a632c687fd8`  
		Last Modified: Tue, 17 Jul 2018 01:51:57 GMT  
		Size: 6.6 MB (6561834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a0fc72fc7bf2c5a526dd5e2fb1401c4185cd1f09598cf89b487c655153486`  
		Last Modified: Tue, 17 Jul 2018 01:51:52 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624afc3c4d0d2e84b6e4d1a68d7f5d82ae272db58e6067c282646fe99dc4e0ef`  
		Last Modified: Tue, 17 Jul 2018 01:51:55 GMT  
		Size: 7.3 MB (7320904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b179f955dfa997ddf82f1058c2d86d376ff37bf572d47b09987ab2603d02a5`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070c94aba6cf414b786393b5254bd09f192f07b4de544f33ca08ae748edf307e`  
		Last Modified: Tue, 17 Jul 2018 01:52:14 GMT  
		Size: 57.6 MB (57638552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d10465459b135a4b2d7270ce0333addcd0191b77c31d1b7842b5f68867fc33`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

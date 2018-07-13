<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.15`](#arangodb3215)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.11`](#arangodb3311)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:404b019872ec75b06162aa59edd0821660944240f93a460e291803e135988140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:6dd1f41d4f38eec5dc6c4d31de3c4a518a751bbc12cefafd725c4eb6af1bd3e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916276bcc1316840fb1ac524f5ae4186162bf7304e71341378b0e5c466d9613d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Fri, 29 Jun 2018 23:19:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 29 Jun 2018 23:19:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARCHITECTURE=amd64
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 29 Jun 2018 23:19:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 29 Jun 2018 23:19:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 29 Jun 2018 23:20:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 29 Jun 2018 23:20:05 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 29 Jun 2018 23:20:05 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 29 Jun 2018 23:20:06 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 29 Jun 2018 23:20:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Jun 2018 23:20:07 GMT
EXPOSE 8529/tcp
# Fri, 29 Jun 2018 23:20:07 GMT
USER [arangodb]
# Fri, 29 Jun 2018 23:20:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4acbe1f8a0328e16edf1c7b9a1d75dc572310ff33af422e1bfd5272a7f2f05c`  
		Last Modified: Fri, 29 Jun 2018 23:22:25 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dde7a97b7c584dab1e057e6b38ead6a03fc317115225c07757c0599adbb40bb`  
		Last Modified: Fri, 29 Jun 2018 23:22:32 GMT  
		Size: 60.7 MB (60731064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4414cf0c0c9ece2b8fb648da81bbc49f9c10db10f7409e2fd58a17f6eff4b2be`  
		Last Modified: Fri, 29 Jun 2018 23:22:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc4a022d32bc07df670e220e06528ea218fc750879c5cc6a2ba3cf577b542`  
		Last Modified: Fri, 29 Jun 2018 23:22:25 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:404b019872ec75b06162aa59edd0821660944240f93a460e291803e135988140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:6dd1f41d4f38eec5dc6c4d31de3c4a518a751bbc12cefafd725c4eb6af1bd3e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916276bcc1316840fb1ac524f5ae4186162bf7304e71341378b0e5c466d9613d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Fri, 29 Jun 2018 23:19:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 29 Jun 2018 23:19:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARCHITECTURE=amd64
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARANGO_VERSION=2.8.11
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Fri, 29 Jun 2018 23:19:27 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Fri, 29 Jun 2018 23:19:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Fri, 29 Jun 2018 23:19:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Fri, 29 Jun 2018 23:20:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 29 Jun 2018 23:20:05 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Fri, 29 Jun 2018 23:20:05 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Fri, 29 Jun 2018 23:20:06 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Fri, 29 Jun 2018 23:20:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Jun 2018 23:20:07 GMT
EXPOSE 8529/tcp
# Fri, 29 Jun 2018 23:20:07 GMT
USER [arangodb]
# Fri, 29 Jun 2018 23:20:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4acbe1f8a0328e16edf1c7b9a1d75dc572310ff33af422e1bfd5272a7f2f05c`  
		Last Modified: Fri, 29 Jun 2018 23:22:25 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dde7a97b7c584dab1e057e6b38ead6a03fc317115225c07757c0599adbb40bb`  
		Last Modified: Fri, 29 Jun 2018 23:22:32 GMT  
		Size: 60.7 MB (60731064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4414cf0c0c9ece2b8fb648da81bbc49f9c10db10f7409e2fd58a17f6eff4b2be`  
		Last Modified: Fri, 29 Jun 2018 23:22:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc4a022d32bc07df670e220e06528ea218fc750879c5cc6a2ba3cf577b542`  
		Last Modified: Fri, 29 Jun 2018 23:22:25 GMT  
		Size: 1.1 KB (1091 bytes)  
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

## `arangodb:3.2.15`

```console
$ docker pull arangodb@sha256:ae9208486936cb5538ecf19e0df02a920e2a11644cc6c9a84881fb7c6970b536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.15` - linux; amd64

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
$ docker pull arangodb@sha256:f9e21888d59e07ed55bbae47259403027ec35323de92d7551cbde28943c90506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:786c43eadc9184c534b45100c605d184505e6c3be356f14d05beaf306ab26f0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116927889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5507e54f5a595b6dfdc798bd061708e16d824f3bff857191897ebe72205838`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:59:54 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARCHITECTURE=amd64
# Tue, 26 Jun 2018 21:59:55 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 03 Jul 2018 21:20:11 GMT
ENV ARANGO_VERSION=3.3.11
# Tue, 03 Jul 2018 21:20:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.11-1_amd64.deb
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb.asc
# Tue, 03 Jul 2018 21:20:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 13 Jul 2018 17:49:38 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 13 Jul 2018 17:49:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 13 Jul 2018 17:49:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 13 Jul 2018 17:50:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 13 Jul 2018 17:50:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 13 Jul 2018 17:50:19 GMT
COPY file:fb41e313acde6e0043b2c70292d2c231554e59bb05a403adaa65eeb672626988 in /entrypoint.sh 
# Fri, 13 Jul 2018 17:50:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jul 2018 17:50:19 GMT
EXPOSE 8529/tcp
# Fri, 13 Jul 2018 17:50:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ccae486608bcf01dcbeaa8792e7835e033ca9935088834ec3575ce3b1f9064`  
		Last Modified: Fri, 13 Jul 2018 17:50:52 GMT  
		Size: 6.6 MB (6561579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a75c818d88ecdfe13abe9c3555fc65fbd9a0ed3e9eb684dce88439d2d2cf3de`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb9d54a6462810331f9f6a19f64a3eec8c2a8236693e0a934ecd4d32b55cca1`  
		Last Modified: Fri, 13 Jul 2018 17:50:49 GMT  
		Size: 7.4 MB (7353504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3700d29f67bc873a1515b4e0313444aa47c39a46fdf3b4a342557bd2d8abefc4`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b28e0a48afc2e61efe6841d07b9b4aa532c57d21044af9df8592d028a1b3ac`  
		Last Modified: Fri, 13 Jul 2018 17:51:09 GMT  
		Size: 57.7 MB (57688218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c252ee7fdb2bb094fde0cec4bb34bcb3e7ea3249fe913e23afb4432e18fef74`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.11`

```console
$ docker pull arangodb@sha256:f9e21888d59e07ed55bbae47259403027ec35323de92d7551cbde28943c90506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.11` - linux; amd64

```console
$ docker pull arangodb@sha256:786c43eadc9184c534b45100c605d184505e6c3be356f14d05beaf306ab26f0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116927889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5507e54f5a595b6dfdc798bd061708e16d824f3bff857191897ebe72205838`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:59:54 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARCHITECTURE=amd64
# Tue, 26 Jun 2018 21:59:55 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 03 Jul 2018 21:20:11 GMT
ENV ARANGO_VERSION=3.3.11
# Tue, 03 Jul 2018 21:20:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.11-1_amd64.deb
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb.asc
# Tue, 03 Jul 2018 21:20:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 13 Jul 2018 17:49:38 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 13 Jul 2018 17:49:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 13 Jul 2018 17:49:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 13 Jul 2018 17:50:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 13 Jul 2018 17:50:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 13 Jul 2018 17:50:19 GMT
COPY file:fb41e313acde6e0043b2c70292d2c231554e59bb05a403adaa65eeb672626988 in /entrypoint.sh 
# Fri, 13 Jul 2018 17:50:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jul 2018 17:50:19 GMT
EXPOSE 8529/tcp
# Fri, 13 Jul 2018 17:50:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ccae486608bcf01dcbeaa8792e7835e033ca9935088834ec3575ce3b1f9064`  
		Last Modified: Fri, 13 Jul 2018 17:50:52 GMT  
		Size: 6.6 MB (6561579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a75c818d88ecdfe13abe9c3555fc65fbd9a0ed3e9eb684dce88439d2d2cf3de`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb9d54a6462810331f9f6a19f64a3eec8c2a8236693e0a934ecd4d32b55cca1`  
		Last Modified: Fri, 13 Jul 2018 17:50:49 GMT  
		Size: 7.4 MB (7353504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3700d29f67bc873a1515b4e0313444aa47c39a46fdf3b4a342557bd2d8abefc4`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b28e0a48afc2e61efe6841d07b9b4aa532c57d21044af9df8592d028a1b3ac`  
		Last Modified: Fri, 13 Jul 2018 17:51:09 GMT  
		Size: 57.7 MB (57688218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c252ee7fdb2bb094fde0cec4bb34bcb3e7ea3249fe913e23afb4432e18fef74`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:f9e21888d59e07ed55bbae47259403027ec35323de92d7551cbde28943c90506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:786c43eadc9184c534b45100c605d184505e6c3be356f14d05beaf306ab26f0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116927889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5507e54f5a595b6dfdc798bd061708e16d824f3bff857191897ebe72205838`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:59:54 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARCHITECTURE=amd64
# Tue, 26 Jun 2018 21:59:55 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 03 Jul 2018 21:20:11 GMT
ENV ARANGO_VERSION=3.3.11
# Tue, 03 Jul 2018 21:20:11 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.11-1_amd64.deb
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb
# Tue, 03 Jul 2018 21:20:12 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb.asc
# Tue, 03 Jul 2018 21:20:27 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 13 Jul 2018 17:49:38 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 13 Jul 2018 17:49:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 13 Jul 2018 17:49:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 13 Jul 2018 17:50:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 13 Jul 2018 17:50:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 13 Jul 2018 17:50:19 GMT
COPY file:fb41e313acde6e0043b2c70292d2c231554e59bb05a403adaa65eeb672626988 in /entrypoint.sh 
# Fri, 13 Jul 2018 17:50:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 13 Jul 2018 17:50:19 GMT
EXPOSE 8529/tcp
# Fri, 13 Jul 2018 17:50:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ccae486608bcf01dcbeaa8792e7835e033ca9935088834ec3575ce3b1f9064`  
		Last Modified: Fri, 13 Jul 2018 17:50:52 GMT  
		Size: 6.6 MB (6561579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a75c818d88ecdfe13abe9c3555fc65fbd9a0ed3e9eb684dce88439d2d2cf3de`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb9d54a6462810331f9f6a19f64a3eec8c2a8236693e0a934ecd4d32b55cca1`  
		Last Modified: Fri, 13 Jul 2018 17:50:49 GMT  
		Size: 7.4 MB (7353504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3700d29f67bc873a1515b4e0313444aa47c39a46fdf3b4a342557bd2d8abefc4`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b28e0a48afc2e61efe6841d07b9b4aa532c57d21044af9df8592d028a1b3ac`  
		Last Modified: Fri, 13 Jul 2018 17:51:09 GMT  
		Size: 57.7 MB (57688218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c252ee7fdb2bb094fde0cec4bb34bcb3e7ea3249fe913e23afb4432e18fef74`  
		Last Modified: Fri, 13 Jul 2018 17:50:47 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

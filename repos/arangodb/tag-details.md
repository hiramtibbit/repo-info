<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.14`](#arangodb3214)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.8`](#arangodb338)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:16a6758a3bdbea5beea8a6f37f84ec771557b13f94712924806301c7e231db3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:f39cd4ef20bfaae846bc3c02d7fcbf1ce5658f56a857288b73b62cb7067bf86a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115002143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e765f2773ec4afe8fa2e27472a23d96146b8529b3282bbe1ff9d535daeb49ff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:54:30 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 07:54:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 07:54:32 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 07:54:32 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 01 May 2018 07:54:32 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 01 May 2018 07:54:32 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 01 May 2018 07:54:33 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 01 May 2018 07:54:33 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 01 May 2018 07:55:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 07:55:08 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 01 May 2018 07:55:08 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 01 May 2018 07:55:09 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 01 May 2018 07:55:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 07:55:10 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 07:55:10 GMT
USER [arangodb]
# Tue, 01 May 2018 07:55:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b278537d7312736ade41ed079014584fdf5dfa2bc2482d0b9d68e160d9cb524d`  
		Last Modified: Tue, 01 May 2018 08:15:03 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a172ebcc96578b918be884910e25399abe62a033c4f07b9ba08c485fe07d85`  
		Last Modified: Tue, 01 May 2018 08:15:16 GMT  
		Size: 60.7 MB (60730900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9610242d0c483c1b381f4cbb19900c6c520ee204e8e2936eba364d4c9ff1bf4e`  
		Last Modified: Tue, 01 May 2018 08:15:03 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b351c0d0bd525b48f28c7da16dd5ac7eca791d56969e030b1f98518f6e362c0`  
		Last Modified: Tue, 01 May 2018 08:15:03 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:16a6758a3bdbea5beea8a6f37f84ec771557b13f94712924806301c7e231db3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:f39cd4ef20bfaae846bc3c02d7fcbf1ce5658f56a857288b73b62cb7067bf86a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115002143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e765f2773ec4afe8fa2e27472a23d96146b8529b3282bbe1ff9d535daeb49ff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:54:30 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 07:54:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 07:54:32 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 07:54:32 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 01 May 2018 07:54:32 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 01 May 2018 07:54:32 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 01 May 2018 07:54:33 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 01 May 2018 07:54:33 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 01 May 2018 07:55:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 07:55:08 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 01 May 2018 07:55:08 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 01 May 2018 07:55:09 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 01 May 2018 07:55:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 07:55:10 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 07:55:10 GMT
USER [arangodb]
# Tue, 01 May 2018 07:55:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b278537d7312736ade41ed079014584fdf5dfa2bc2482d0b9d68e160d9cb524d`  
		Last Modified: Tue, 01 May 2018 08:15:03 GMT  
		Size: 7.4 KB (7416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a172ebcc96578b918be884910e25399abe62a033c4f07b9ba08c485fe07d85`  
		Last Modified: Tue, 01 May 2018 08:15:16 GMT  
		Size: 60.7 MB (60730900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9610242d0c483c1b381f4cbb19900c6c520ee204e8e2936eba364d4c9ff1bf4e`  
		Last Modified: Tue, 01 May 2018 08:15:03 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b351c0d0bd525b48f28c7da16dd5ac7eca791d56969e030b1f98518f6e362c0`  
		Last Modified: Tue, 01 May 2018 08:15:03 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:de11b43ca86b49190050b9332c301715b8549e1da384a710986ab9b83a3d5fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:b778e599987b50095c5d545eff6ae75b338afa41f10a5094c2e82148ea1ecdd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111813419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae934677ae221265d1b4decec7dd45768665ec630ead58356a15b039476e4d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 08:07:20 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 08:07:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 01 May 2018 08:08:33 GMT
ENV ARANGO_VERSION=3.2.14
# Tue, 01 May 2018 08:08:33 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 01 May 2018 08:08:33 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.14-1_amd64.deb
# Tue, 01 May 2018 08:08:34 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.14-1_amd64.deb
# Tue, 01 May 2018 08:08:34 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.14-1_amd64.deb.asc
# Tue, 01 May 2018 08:08:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:42 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 08:08:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 May 2018 08:09:19 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 08:09:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 01 May 2018 08:09:20 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Tue, 01 May 2018 08:09:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 08:09:21 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 08:09:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbc8710f5cb209af1c7c6488c2d3030c39ac985fcbc1380e02d59c59b89e0ca`  
		Last Modified: Tue, 01 May 2018 08:29:22 GMT  
		Size: 6.6 MB (6561159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9381240b8dd3011dc76f34771b8a69385d53b5eafd75fc16ff91ace35b267664`  
		Last Modified: Tue, 01 May 2018 08:29:18 GMT  
		Size: 3.5 KB (3473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb158b0cc9dca5ac3b70a04dd572672c40b6901cb402b5827bb0db2734780b70`  
		Last Modified: Tue, 01 May 2018 08:29:21 GMT  
		Size: 7.4 MB (7352767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a994da8e460d22a98e28a10a0a111d07b1ca90947e252647c4eabf233487c3`  
		Last Modified: Tue, 01 May 2018 08:29:18 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45949b59542f8dfafd6ca683022e38713eeb987663b7e8fc28c74b736e6d886a`  
		Last Modified: Tue, 01 May 2018 08:29:32 GMT  
		Size: 52.6 MB (52575908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e502530f1ea897bff6e8fc5f213f436b54d034969388998e9b46a35b40d0a7b7`  
		Last Modified: Tue, 01 May 2018 08:29:19 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.14`

```console
$ docker pull arangodb@sha256:de11b43ca86b49190050b9332c301715b8549e1da384a710986ab9b83a3d5fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.14` - linux; amd64

```console
$ docker pull arangodb@sha256:b778e599987b50095c5d545eff6ae75b338afa41f10a5094c2e82148ea1ecdd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111813419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae934677ae221265d1b4decec7dd45768665ec630ead58356a15b039476e4d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 08:07:20 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 08:07:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 01 May 2018 08:08:33 GMT
ENV ARANGO_VERSION=3.2.14
# Tue, 01 May 2018 08:08:33 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 01 May 2018 08:08:33 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.14-1_amd64.deb
# Tue, 01 May 2018 08:08:34 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.14-1_amd64.deb
# Tue, 01 May 2018 08:08:34 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.14-1_amd64.deb.asc
# Tue, 01 May 2018 08:08:38 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:42 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 08:08:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 May 2018 08:09:19 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 08:09:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 01 May 2018 08:09:20 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Tue, 01 May 2018 08:09:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 08:09:21 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 08:09:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbc8710f5cb209af1c7c6488c2d3030c39ac985fcbc1380e02d59c59b89e0ca`  
		Last Modified: Tue, 01 May 2018 08:29:22 GMT  
		Size: 6.6 MB (6561159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9381240b8dd3011dc76f34771b8a69385d53b5eafd75fc16ff91ace35b267664`  
		Last Modified: Tue, 01 May 2018 08:29:18 GMT  
		Size: 3.5 KB (3473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb158b0cc9dca5ac3b70a04dd572672c40b6901cb402b5827bb0db2734780b70`  
		Last Modified: Tue, 01 May 2018 08:29:21 GMT  
		Size: 7.4 MB (7352767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a994da8e460d22a98e28a10a0a111d07b1ca90947e252647c4eabf233487c3`  
		Last Modified: Tue, 01 May 2018 08:29:18 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45949b59542f8dfafd6ca683022e38713eeb987663b7e8fc28c74b736e6d886a`  
		Last Modified: Tue, 01 May 2018 08:29:32 GMT  
		Size: 52.6 MB (52575908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e502530f1ea897bff6e8fc5f213f436b54d034969388998e9b46a35b40d0a7b7`  
		Last Modified: Tue, 01 May 2018 08:29:19 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:11a730cc125f9d15b96a9f33768e82099e094669952f829839a91791199fbffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:1c6cbfe9f2f1423f626a46636a2953e55bf44bdc28bc20bc1389c9f52ee13469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115640866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0412ba848bea68a33ca043b27786571184b3b955874c1bc711e8a5ba8618fe90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 08:07:20 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 08:07:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_VERSION=3.3.7
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.7-1_amd64.deb
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb
# Tue, 01 May 2018 08:07:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb.asc
# Tue, 01 May 2018 08:07:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:07:40 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 08:07:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 May 2018 08:08:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 08:08:07 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 01 May 2018 08:08:07 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Tue, 01 May 2018 08:08:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 08:08:08 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 08:08:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95243f778046cad8c6d5c78f48a47647d6f5a7e239a71025392c35092faab1f2`  
		Last Modified: Tue, 01 May 2018 08:19:00 GMT  
		Size: 6.6 MB (6561184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05865e2d01d04bab7d57cf51ed8d8afa01bdddeef22af853777dfa0d421ef3a8`  
		Last Modified: Tue, 01 May 2018 08:18:56 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3554e63121fa48bd60d755242a0dba643df65f9a0d5cf32a1cdf3af80fd7e40`  
		Last Modified: Tue, 01 May 2018 08:18:58 GMT  
		Size: 7.4 MB (7352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac3ad0ce6675435a0cbe3f45bdd4084c245a9e25e021c26b677d7758499e84`  
		Last Modified: Tue, 01 May 2018 08:18:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294eb9f779f06f064500adbbd1765a97eb1814ddd364d95fdecb4ff08d2e99e`  
		Last Modified: Tue, 01 May 2018 08:19:13 GMT  
		Size: 56.4 MB (56403353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f2caa86759226f0b24b0670a9987bf1a17fd36d2cd8f6331fc9639e4797bc`  
		Last Modified: Tue, 01 May 2018 08:18:56 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.8`

```console
$ docker pull arangodb@sha256:11a730cc125f9d15b96a9f33768e82099e094669952f829839a91791199fbffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.8` - linux; amd64

```console
$ docker pull arangodb@sha256:1c6cbfe9f2f1423f626a46636a2953e55bf44bdc28bc20bc1389c9f52ee13469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115640866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0412ba848bea68a33ca043b27786571184b3b955874c1bc711e8a5ba8618fe90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 08:07:20 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 08:07:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_VERSION=3.3.7
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.7-1_amd64.deb
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb
# Tue, 01 May 2018 08:07:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb.asc
# Tue, 01 May 2018 08:07:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:07:40 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 08:07:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 May 2018 08:08:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 08:08:07 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 01 May 2018 08:08:07 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Tue, 01 May 2018 08:08:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 08:08:08 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 08:08:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95243f778046cad8c6d5c78f48a47647d6f5a7e239a71025392c35092faab1f2`  
		Last Modified: Tue, 01 May 2018 08:19:00 GMT  
		Size: 6.6 MB (6561184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05865e2d01d04bab7d57cf51ed8d8afa01bdddeef22af853777dfa0d421ef3a8`  
		Last Modified: Tue, 01 May 2018 08:18:56 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3554e63121fa48bd60d755242a0dba643df65f9a0d5cf32a1cdf3af80fd7e40`  
		Last Modified: Tue, 01 May 2018 08:18:58 GMT  
		Size: 7.4 MB (7352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac3ad0ce6675435a0cbe3f45bdd4084c245a9e25e021c26b677d7758499e84`  
		Last Modified: Tue, 01 May 2018 08:18:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294eb9f779f06f064500adbbd1765a97eb1814ddd364d95fdecb4ff08d2e99e`  
		Last Modified: Tue, 01 May 2018 08:19:13 GMT  
		Size: 56.4 MB (56403353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f2caa86759226f0b24b0670a9987bf1a17fd36d2cd8f6331fc9639e4797bc`  
		Last Modified: Tue, 01 May 2018 08:18:56 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:11a730cc125f9d15b96a9f33768e82099e094669952f829839a91791199fbffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:1c6cbfe9f2f1423f626a46636a2953e55bf44bdc28bc20bc1389c9f52ee13469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115640866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0412ba848bea68a33ca043b27786571184b3b955874c1bc711e8a5ba8618fe90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 08:07:20 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 08:07:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_VERSION=3.3.7
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.7-1_amd64.deb
# Tue, 01 May 2018 08:07:21 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb
# Tue, 01 May 2018 08:07:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb.asc
# Tue, 01 May 2018 08:07:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:07:40 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 01 May 2018 08:07:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 May 2018 08:08:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 01 May 2018 08:08:07 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 01 May 2018 08:08:07 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Tue, 01 May 2018 08:08:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 08:08:08 GMT
EXPOSE 8529/tcp
# Tue, 01 May 2018 08:08:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95243f778046cad8c6d5c78f48a47647d6f5a7e239a71025392c35092faab1f2`  
		Last Modified: Tue, 01 May 2018 08:19:00 GMT  
		Size: 6.6 MB (6561184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05865e2d01d04bab7d57cf51ed8d8afa01bdddeef22af853777dfa0d421ef3a8`  
		Last Modified: Tue, 01 May 2018 08:18:56 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3554e63121fa48bd60d755242a0dba643df65f9a0d5cf32a1cdf3af80fd7e40`  
		Last Modified: Tue, 01 May 2018 08:18:58 GMT  
		Size: 7.4 MB (7352751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac3ad0ce6675435a0cbe3f45bdd4084c245a9e25e021c26b677d7758499e84`  
		Last Modified: Tue, 01 May 2018 08:18:57 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0294eb9f779f06f064500adbbd1765a97eb1814ddd364d95fdecb4ff08d2e99e`  
		Last Modified: Tue, 01 May 2018 08:19:13 GMT  
		Size: 56.4 MB (56403353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f2caa86759226f0b24b0670a9987bf1a17fd36d2cd8f6331fc9639e4797bc`  
		Last Modified: Tue, 01 May 2018 08:18:56 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.15`](#arangodb3215)
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
$ docker pull arangodb@sha256:cbf77aa185a68f56971e7b68b5f4f8a2719e1e7b89387a23413f2e40b96ab3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:205ed0ef6638d1edf40b3366cfcc41a0f9caedfb718c87db1764ae52e331a3c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112661352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22c64a67d5b5e5bed4162d388368d4957a1728e9ee808ed09a479446b7891a3`
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
# Wed, 16 May 2018 19:19:43 GMT
ENV ARANGO_VERSION=3.2.15
# Wed, 16 May 2018 19:19:43 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 16 May 2018 19:19:43 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Wed, 16 May 2018 19:19:44 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Wed, 16 May 2018 19:19:44 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Wed, 16 May 2018 19:19:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 19:20:00 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 16 May 2018 19:20:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 19:20:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 16 May 2018 19:20:25 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 16 May 2018 19:20:25 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 16 May 2018 19:20:26 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Wed, 16 May 2018 19:20:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 May 2018 19:20:27 GMT
EXPOSE 8529/tcp
# Wed, 16 May 2018 19:20:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d809140a044e49320f8a8608af152213c8557042b1c2eb04a2f5f273def8fe`  
		Last Modified: Wed, 16 May 2018 19:20:46 GMT  
		Size: 6.6 MB (6561238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ae2e75e338fda0957e5dbe7a83e8f50fb4ca4e6163a4758678ddf8e0d5ea6e`  
		Last Modified: Wed, 16 May 2018 19:20:42 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a576f68e16d297abd664e17e1251aee08b50fb0f44e653fd185afc44930ad1`  
		Last Modified: Wed, 16 May 2018 19:20:43 GMT  
		Size: 7.4 MB (7352835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c940d6f46c15baf0810134dcdc67623fa5f1a84c8de3e1c159eb7514d1936b0`  
		Last Modified: Wed, 16 May 2018 19:20:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec20d7fc67317937446f4c960fa9f7a1af1544addd1150283ab33c3a9fcf5ea`  
		Last Modified: Wed, 16 May 2018 19:20:50 GMT  
		Size: 53.4 MB (53423696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f607aaab1f918e1331f4ece6c6b7097bdcffe289326b84af17781a0d0c4e3d`  
		Last Modified: Wed, 16 May 2018 19:20:42 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.15`

```console
$ docker pull arangodb@sha256:cbf77aa185a68f56971e7b68b5f4f8a2719e1e7b89387a23413f2e40b96ab3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.15` - linux; amd64

```console
$ docker pull arangodb@sha256:205ed0ef6638d1edf40b3366cfcc41a0f9caedfb718c87db1764ae52e331a3c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112661352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22c64a67d5b5e5bed4162d388368d4957a1728e9ee808ed09a479446b7891a3`
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
# Wed, 16 May 2018 19:19:43 GMT
ENV ARANGO_VERSION=3.2.15
# Wed, 16 May 2018 19:19:43 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 16 May 2018 19:19:43 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Wed, 16 May 2018 19:19:44 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Wed, 16 May 2018 19:19:44 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Wed, 16 May 2018 19:19:56 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 19:20:00 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 16 May 2018 19:20:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 19:20:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 16 May 2018 19:20:25 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 16 May 2018 19:20:25 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 16 May 2018 19:20:26 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Wed, 16 May 2018 19:20:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 May 2018 19:20:27 GMT
EXPOSE 8529/tcp
# Wed, 16 May 2018 19:20:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d809140a044e49320f8a8608af152213c8557042b1c2eb04a2f5f273def8fe`  
		Last Modified: Wed, 16 May 2018 19:20:46 GMT  
		Size: 6.6 MB (6561238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ae2e75e338fda0957e5dbe7a83e8f50fb4ca4e6163a4758678ddf8e0d5ea6e`  
		Last Modified: Wed, 16 May 2018 19:20:42 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a576f68e16d297abd664e17e1251aee08b50fb0f44e653fd185afc44930ad1`  
		Last Modified: Wed, 16 May 2018 19:20:43 GMT  
		Size: 7.4 MB (7352835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c940d6f46c15baf0810134dcdc67623fa5f1a84c8de3e1c159eb7514d1936b0`  
		Last Modified: Wed, 16 May 2018 19:20:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec20d7fc67317937446f4c960fa9f7a1af1544addd1150283ab33c3a9fcf5ea`  
		Last Modified: Wed, 16 May 2018 19:20:50 GMT  
		Size: 53.4 MB (53423696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f607aaab1f918e1331f4ece6c6b7097bdcffe289326b84af17781a0d0c4e3d`  
		Last Modified: Wed, 16 May 2018 19:20:42 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:e690c71e7d74ca98b51a8d42d21bd30ccba6ad61683e47c4de4008754e3ce90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:497e914eb6efb91f98e076f41ff3e4985c1954a5134ed05f0957c49964cfd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116648651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123390a29fd55dfafdc713b105809cd1292fcb6477528db18c9ecc86d60c02af`
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
# Fri, 04 May 2018 03:42:53 GMT
ENV ARANGO_VERSION=3.3.8
# Fri, 04 May 2018 03:42:55 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 04 May 2018 03:42:56 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.8-1_amd64.deb
# Fri, 04 May 2018 03:42:57 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.8-1_amd64.deb
# Fri, 04 May 2018 03:43:00 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.8-1_amd64.deb.asc
# Fri, 04 May 2018 03:43:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:43:22 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 04 May 2018 03:43:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 04 May 2018 03:43:52 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 04 May 2018 03:43:53 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 04 May 2018 03:43:55 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Fri, 04 May 2018 03:44:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 03:44:09 GMT
EXPOSE 8529/tcp
# Fri, 04 May 2018 03:44:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44a5df1a97de4e5947b59b9b66df1d0bcdc5bd2b6b8595d44780a6ae5cda4d8`  
		Last Modified: Fri, 04 May 2018 03:49:26 GMT  
		Size: 6.6 MB (6561222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2933d32a1b72034919b43a717d0b0ca5098365fee39ad7f17999d79729e1dab8`  
		Last Modified: Fri, 04 May 2018 03:49:24 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26c5973cb6d2903f5029213668c608d7cd62c76c88929c0927a40ded8db0ed5`  
		Last Modified: Fri, 04 May 2018 03:49:24 GMT  
		Size: 7.4 MB (7352818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd173823069e1948ead1f5601b62efea895205a111d7ad0a4f7b02db5997e3f9`  
		Last Modified: Fri, 04 May 2018 03:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd950cbf77aaf222c657fb7c003d5c1f1b2991cd0ab010635d044ba4732f02`  
		Last Modified: Fri, 04 May 2018 03:50:05 GMT  
		Size: 57.4 MB (57411028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c024c4d1cb65172388d9872f3ac7936c91338b8d5ab32b344abab964f24179`  
		Last Modified: Fri, 04 May 2018 03:49:23 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.8`

```console
$ docker pull arangodb@sha256:e690c71e7d74ca98b51a8d42d21bd30ccba6ad61683e47c4de4008754e3ce90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.8` - linux; amd64

```console
$ docker pull arangodb@sha256:497e914eb6efb91f98e076f41ff3e4985c1954a5134ed05f0957c49964cfd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116648651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123390a29fd55dfafdc713b105809cd1292fcb6477528db18c9ecc86d60c02af`
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
# Fri, 04 May 2018 03:42:53 GMT
ENV ARANGO_VERSION=3.3.8
# Fri, 04 May 2018 03:42:55 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 04 May 2018 03:42:56 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.8-1_amd64.deb
# Fri, 04 May 2018 03:42:57 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.8-1_amd64.deb
# Fri, 04 May 2018 03:43:00 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.8-1_amd64.deb.asc
# Fri, 04 May 2018 03:43:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:43:22 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 04 May 2018 03:43:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 04 May 2018 03:43:52 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 04 May 2018 03:43:53 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 04 May 2018 03:43:55 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Fri, 04 May 2018 03:44:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 03:44:09 GMT
EXPOSE 8529/tcp
# Fri, 04 May 2018 03:44:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44a5df1a97de4e5947b59b9b66df1d0bcdc5bd2b6b8595d44780a6ae5cda4d8`  
		Last Modified: Fri, 04 May 2018 03:49:26 GMT  
		Size: 6.6 MB (6561222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2933d32a1b72034919b43a717d0b0ca5098365fee39ad7f17999d79729e1dab8`  
		Last Modified: Fri, 04 May 2018 03:49:24 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26c5973cb6d2903f5029213668c608d7cd62c76c88929c0927a40ded8db0ed5`  
		Last Modified: Fri, 04 May 2018 03:49:24 GMT  
		Size: 7.4 MB (7352818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd173823069e1948ead1f5601b62efea895205a111d7ad0a4f7b02db5997e3f9`  
		Last Modified: Fri, 04 May 2018 03:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd950cbf77aaf222c657fb7c003d5c1f1b2991cd0ab010635d044ba4732f02`  
		Last Modified: Fri, 04 May 2018 03:50:05 GMT  
		Size: 57.4 MB (57411028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c024c4d1cb65172388d9872f3ac7936c91338b8d5ab32b344abab964f24179`  
		Last Modified: Fri, 04 May 2018 03:49:23 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:e690c71e7d74ca98b51a8d42d21bd30ccba6ad61683e47c4de4008754e3ce90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:497e914eb6efb91f98e076f41ff3e4985c1954a5134ed05f0957c49964cfd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116648651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123390a29fd55dfafdc713b105809cd1292fcb6477528db18c9ecc86d60c02af`
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
# Fri, 04 May 2018 03:42:53 GMT
ENV ARANGO_VERSION=3.3.8
# Fri, 04 May 2018 03:42:55 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 04 May 2018 03:42:56 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.8-1_amd64.deb
# Fri, 04 May 2018 03:42:57 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.8-1_amd64.deb
# Fri, 04 May 2018 03:43:00 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.8-1_amd64.deb.asc
# Fri, 04 May 2018 03:43:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:43:22 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 04 May 2018 03:43:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 03:43:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 04 May 2018 03:43:52 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 04 May 2018 03:43:53 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 04 May 2018 03:43:55 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Fri, 04 May 2018 03:44:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 03:44:09 GMT
EXPOSE 8529/tcp
# Fri, 04 May 2018 03:44:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44a5df1a97de4e5947b59b9b66df1d0bcdc5bd2b6b8595d44780a6ae5cda4d8`  
		Last Modified: Fri, 04 May 2018 03:49:26 GMT  
		Size: 6.6 MB (6561222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2933d32a1b72034919b43a717d0b0ca5098365fee39ad7f17999d79729e1dab8`  
		Last Modified: Fri, 04 May 2018 03:49:24 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26c5973cb6d2903f5029213668c608d7cd62c76c88929c0927a40ded8db0ed5`  
		Last Modified: Fri, 04 May 2018 03:49:24 GMT  
		Size: 7.4 MB (7352818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd173823069e1948ead1f5601b62efea895205a111d7ad0a4f7b02db5997e3f9`  
		Last Modified: Fri, 04 May 2018 03:49:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0fd950cbf77aaf222c657fb7c003d5c1f1b2991cd0ab010635d044ba4732f02`  
		Last Modified: Fri, 04 May 2018 03:50:05 GMT  
		Size: 57.4 MB (57411028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c024c4d1cb65172388d9872f3ac7936c91338b8d5ab32b344abab964f24179`  
		Last Modified: Fri, 04 May 2018 03:49:23 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

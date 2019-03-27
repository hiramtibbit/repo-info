<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.17`](#arangodb3217)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.21`](#arangodb3321)
-	[`arangodb:3.4`](#arangodb34)
-	[`arangodb:3.4.4`](#arangodb344)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:ca49496831ddb08f8f35f6ac271ae54def7cbb2ea5ad6989679fe27af71206dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:5ffa62c8c2c55d4ba0f8bbc31c2fe344b66c945b746b7fe480b0a17da92b43e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115098121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b59d9fe28d76b5f2c6330e6e4c064c9569d3947d95bbf7684135262c88c680`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:54:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 27 Mar 2019 00:54:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Mar 2019 00:54:15 GMT
ENV ARCHITECTURE=amd64
# Wed, 27 Mar 2019 00:54:15 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 27 Mar 2019 00:54:16 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 27 Mar 2019 00:54:16 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 27 Mar 2019 00:54:17 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 27 Mar 2019 00:54:17 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 27 Mar 2019 00:56:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Mar 2019 00:56:45 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 27 Mar 2019 00:56:45 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 27 Mar 2019 00:56:45 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Wed, 27 Mar 2019 00:56:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 00:56:46 GMT
EXPOSE 8529
# Wed, 27 Mar 2019 00:56:46 GMT
USER arangodb
# Wed, 27 Mar 2019 00:56:47 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ce822642978a443d34d6a04a8671f3a2ab6540e6e331cd26cda441c2cd37a`  
		Last Modified: Wed, 27 Mar 2019 00:58:36 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed3847a26b8b45486661bf7e8124c7389289720eb36e103ef0b86af8cdad06e`  
		Last Modified: Wed, 27 Mar 2019 00:58:46 GMT  
		Size: 60.7 MB (60706537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660541f2a126d26a5b0509a57c1217ae4033f6fc6543223bece7bc3bcac7d811`  
		Last Modified: Wed, 27 Mar 2019 00:58:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65aff2f1a45daccb484f9a2eef63ee407bf321c2d0d6088b8f9de1850c777af5`  
		Last Modified: Wed, 27 Mar 2019 00:58:36 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:ca49496831ddb08f8f35f6ac271ae54def7cbb2ea5ad6989679fe27af71206dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:5ffa62c8c2c55d4ba0f8bbc31c2fe344b66c945b746b7fe480b0a17da92b43e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115098121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b59d9fe28d76b5f2c6330e6e4c064c9569d3947d95bbf7684135262c88c680`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:54:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 27 Mar 2019 00:54:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Mar 2019 00:54:15 GMT
ENV ARCHITECTURE=amd64
# Wed, 27 Mar 2019 00:54:15 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 27 Mar 2019 00:54:16 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 27 Mar 2019 00:54:16 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 27 Mar 2019 00:54:17 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 27 Mar 2019 00:54:17 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 27 Mar 2019 00:56:43 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Mar 2019 00:56:45 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 27 Mar 2019 00:56:45 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 27 Mar 2019 00:56:45 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Wed, 27 Mar 2019 00:56:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 00:56:46 GMT
EXPOSE 8529
# Wed, 27 Mar 2019 00:56:46 GMT
USER arangodb
# Wed, 27 Mar 2019 00:56:47 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ce822642978a443d34d6a04a8671f3a2ab6540e6e331cd26cda441c2cd37a`  
		Last Modified: Wed, 27 Mar 2019 00:58:36 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed3847a26b8b45486661bf7e8124c7389289720eb36e103ef0b86af8cdad06e`  
		Last Modified: Wed, 27 Mar 2019 00:58:46 GMT  
		Size: 60.7 MB (60706537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660541f2a126d26a5b0509a57c1217ae4033f6fc6543223bece7bc3bcac7d811`  
		Last Modified: Wed, 27 Mar 2019 00:58:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65aff2f1a45daccb484f9a2eef63ee407bf321c2d0d6088b8f9de1850c777af5`  
		Last Modified: Wed, 27 Mar 2019 00:58:36 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:4086b4ea02cbd1db4c6f2e385c09fbbf3fa1934b16d850edac0e90b8f20abc86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:8e1c93a0d9baaef1694720c547e6b639a235b59ce1976543d2862f16883a7574
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113502903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae0caacf11c0209d3df7ac5edd0c56e0a729cc3aaeeef4ed47ca18ef267aa6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:56:56 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 27 Mar 2019 00:56:57 GMT
ENV ARCHITECTURE=amd64
# Wed, 27 Mar 2019 00:56:57 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Mar 2019 00:56:58 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 27 Mar 2019 00:56:58 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 27 Mar 2019 00:56:59 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 27 Mar 2019 00:56:59 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 27 Mar 2019 00:56:59 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 27 Mar 2019 00:57:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:57:13 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Mar 2019 00:57:23 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:57:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 00:57:38 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Mar 2019 00:57:39 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Mar 2019 00:57:39 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 27 Mar 2019 00:57:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 00:57:39 GMT
EXPOSE 8529
# Wed, 27 Mar 2019 00:57:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a242a12a3c50570fa6e6b5bbf169f35a77235a975958a3af89a8f4e807da04a3`  
		Last Modified: Wed, 27 Mar 2019 00:58:51 GMT  
		Size: 6.6 MB (6565688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b046b862414ba27f672eafed56da6f20c0eb6b4a8ee2650725e0cebcf500dc94`  
		Last Modified: Wed, 27 Mar 2019 00:58:49 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026305c7a0d4efc2e83d98c90c0cf6b830107cc6d96d33cb5c97eb8ffa4e5ea8`  
		Last Modified: Wed, 27 Mar 2019 00:58:51 GMT  
		Size: 7.5 MB (7453739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e258d7d7121b0dcdb5b3b776a8c8e9769ff2c63c419b9126649c1cd1ec99663`  
		Last Modified: Wed, 27 Mar 2019 00:58:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104e340517b0d939865071ae91068050ee72273759d69c9977c9930799466400`  
		Last Modified: Wed, 27 Mar 2019 00:59:00 GMT  
		Size: 54.1 MB (54135373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530002f40240e5da3a21dfbc72f27693034db6eb3d1c7ab827ec812770edad5a`  
		Last Modified: Wed, 27 Mar 2019 00:58:49 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:4086b4ea02cbd1db4c6f2e385c09fbbf3fa1934b16d850edac0e90b8f20abc86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:8e1c93a0d9baaef1694720c547e6b639a235b59ce1976543d2862f16883a7574
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113502903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ae0caacf11c0209d3df7ac5edd0c56e0a729cc3aaeeef4ed47ca18ef267aa6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:56:56 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 27 Mar 2019 00:56:57 GMT
ENV ARCHITECTURE=amd64
# Wed, 27 Mar 2019 00:56:57 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Mar 2019 00:56:58 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 27 Mar 2019 00:56:58 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 27 Mar 2019 00:56:59 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 27 Mar 2019 00:56:59 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 27 Mar 2019 00:56:59 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 27 Mar 2019 00:57:06 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:57:13 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Mar 2019 00:57:23 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:57:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 00:57:38 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Mar 2019 00:57:39 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Mar 2019 00:57:39 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 27 Mar 2019 00:57:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 00:57:39 GMT
EXPOSE 8529
# Wed, 27 Mar 2019 00:57:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a242a12a3c50570fa6e6b5bbf169f35a77235a975958a3af89a8f4e807da04a3`  
		Last Modified: Wed, 27 Mar 2019 00:58:51 GMT  
		Size: 6.6 MB (6565688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b046b862414ba27f672eafed56da6f20c0eb6b4a8ee2650725e0cebcf500dc94`  
		Last Modified: Wed, 27 Mar 2019 00:58:49 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026305c7a0d4efc2e83d98c90c0cf6b830107cc6d96d33cb5c97eb8ffa4e5ea8`  
		Last Modified: Wed, 27 Mar 2019 00:58:51 GMT  
		Size: 7.5 MB (7453739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e258d7d7121b0dcdb5b3b776a8c8e9769ff2c63c419b9126649c1cd1ec99663`  
		Last Modified: Wed, 27 Mar 2019 00:58:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104e340517b0d939865071ae91068050ee72273759d69c9977c9930799466400`  
		Last Modified: Wed, 27 Mar 2019 00:59:00 GMT  
		Size: 54.1 MB (54135373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530002f40240e5da3a21dfbc72f27693034db6eb3d1c7ab827ec812770edad5a`  
		Last Modified: Wed, 27 Mar 2019 00:58:49 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:f57006fef249b720608ea79c3785bac2af659a84c6a7925778f732cc38bf8a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:fedf35037665f4abae91ac4e846c06b05bf5bdf797a30abc2323e5185b05af05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117769509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ee88eff37075f6c64b36c85d3ae9bb3499d11e6419e9d980c0078742db68be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:56:56 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 27 Mar 2019 00:56:57 GMT
ENV ARCHITECTURE=amd64
# Wed, 27 Mar 2019 00:56:57 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Mar 2019 00:57:43 GMT
ENV ARANGO_VERSION=3.3.21
# Wed, 27 Mar 2019 00:57:44 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 27 Mar 2019 00:57:44 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Wed, 27 Mar 2019 00:57:45 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Wed, 27 Mar 2019 00:57:45 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Wed, 27 Mar 2019 00:57:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:57:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Mar 2019 00:58:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:58:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 00:58:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Mar 2019 00:58:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Mar 2019 00:58:18 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 27 Mar 2019 00:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 00:58:19 GMT
EXPOSE 8529
# Wed, 27 Mar 2019 00:58:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7764ee20709630f13da1b6399aa1f7e43ba5eda5100410356817195556614046`  
		Last Modified: Wed, 27 Mar 2019 00:59:06 GMT  
		Size: 6.6 MB (6565702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3d14f527b5cb27aaf67444803a8c2610d08ae8bc5648cedcb9c4a5d6d29a7`  
		Last Modified: Wed, 27 Mar 2019 00:59:04 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21054969bde0d43fb6a2d55c61ada1d4703269c32245fe8d052a2813db181e99`  
		Last Modified: Wed, 27 Mar 2019 00:59:05 GMT  
		Size: 7.5 MB (7453706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaca6cd65071354fb8a714e77ab5375c42b3815042b683f687f4976aa3786177`  
		Last Modified: Wed, 27 Mar 2019 00:59:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ff7141cce793441c56dab8890fc1353b451c0230111c9a4c9f2567818393b`  
		Last Modified: Wed, 27 Mar 2019 00:59:16 GMT  
		Size: 58.4 MB (58402000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7395f75ec4603bcebf90cb0815e3c4506f99760bb18b48b31432da9644f86018`  
		Last Modified: Wed, 27 Mar 2019 00:59:04 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.21`

```console
$ docker pull arangodb@sha256:f57006fef249b720608ea79c3785bac2af659a84c6a7925778f732cc38bf8a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.21` - linux; amd64

```console
$ docker pull arangodb@sha256:fedf35037665f4abae91ac4e846c06b05bf5bdf797a30abc2323e5185b05af05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117769509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ee88eff37075f6c64b36c85d3ae9bb3499d11e6419e9d980c0078742db68be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:56:56 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 27 Mar 2019 00:56:57 GMT
ENV ARCHITECTURE=amd64
# Wed, 27 Mar 2019 00:56:57 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 27 Mar 2019 00:57:43 GMT
ENV ARANGO_VERSION=3.3.21
# Wed, 27 Mar 2019 00:57:44 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 27 Mar 2019 00:57:44 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Wed, 27 Mar 2019 00:57:45 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Wed, 27 Mar 2019 00:57:45 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Wed, 27 Mar 2019 00:57:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:57:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 27 Mar 2019 00:58:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:58:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 00:58:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 27 Mar 2019 00:58:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 27 Mar 2019 00:58:18 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 27 Mar 2019 00:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 00:58:19 GMT
EXPOSE 8529
# Wed, 27 Mar 2019 00:58:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7764ee20709630f13da1b6399aa1f7e43ba5eda5100410356817195556614046`  
		Last Modified: Wed, 27 Mar 2019 00:59:06 GMT  
		Size: 6.6 MB (6565702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3d14f527b5cb27aaf67444803a8c2610d08ae8bc5648cedcb9c4a5d6d29a7`  
		Last Modified: Wed, 27 Mar 2019 00:59:04 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21054969bde0d43fb6a2d55c61ada1d4703269c32245fe8d052a2813db181e99`  
		Last Modified: Wed, 27 Mar 2019 00:59:05 GMT  
		Size: 7.5 MB (7453706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaca6cd65071354fb8a714e77ab5375c42b3815042b683f687f4976aa3786177`  
		Last Modified: Wed, 27 Mar 2019 00:59:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ff7141cce793441c56dab8890fc1353b451c0230111c9a4c9f2567818393b`  
		Last Modified: Wed, 27 Mar 2019 00:59:16 GMT  
		Size: 58.4 MB (58402000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7395f75ec4603bcebf90cb0815e3c4506f99760bb18b48b31432da9644f86018`  
		Last Modified: Wed, 27 Mar 2019 00:59:04 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:1ebcf8777aa85ea94d75278a7aeae18a22798368fad222a07fb4e3e5b448c19b
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

## `arangodb:3.4.4`

```console
$ docker pull arangodb@sha256:1ebcf8777aa85ea94d75278a7aeae18a22798368fad222a07fb4e3e5b448c19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4.4` - linux; amd64

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

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:1ebcf8777aa85ea94d75278a7aeae18a22798368fad222a07fb4e3e5b448c19b
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

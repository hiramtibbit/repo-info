<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.15`](#arangodb3215)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.10`](#arangodb3310)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:9cb22e6cf94a263e166d58619dc076c93c2094cc0e0a37cbcea288af199d7add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:89d8f1e58da4aab6430a13c1ec816bce6de0742008df7eedf703d2e6d154a238
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115002230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ed9edfe265ae9f9f46a6c97417316f5f4402f4badf24f0687a63e03655f7ff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:51:17 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:51:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:51:18 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:51:18 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 06 Jun 2018 23:52:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:52:32 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 06 Jun 2018 23:52:33 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 06 Jun 2018 23:52:33 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:52:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:52:33 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:52:34 GMT
USER [arangodb]
# Wed, 06 Jun 2018 23:52:34 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecad42dba7c17a85507eaa13723b738c437ca5d1484eb7849a0ae828b8ec520`  
		Last Modified: Wed, 06 Jun 2018 23:54:51 GMT  
		Size: 7.4 KB (7413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c12fc5b4791c853139f56465ba40ce1124c8f0f97ab0d7b8bbbeb5a2b632e`  
		Last Modified: Wed, 06 Jun 2018 23:55:14 GMT  
		Size: 60.7 MB (60730989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac815aa8dfdca8fdae5aa11c6cf3b7466aa6420e0b14f47c08c414578c75c247`  
		Last Modified: Wed, 06 Jun 2018 23:54:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763ba5795b8fc189ef5ca375f63005f95f31ae95734b023544dc6a2da2678c6f`  
		Last Modified: Wed, 06 Jun 2018 23:54:51 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:9cb22e6cf94a263e166d58619dc076c93c2094cc0e0a37cbcea288af199d7add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:89d8f1e58da4aab6430a13c1ec816bce6de0742008df7eedf703d2e6d154a238
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115002230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ed9edfe265ae9f9f46a6c97417316f5f4402f4badf24f0687a63e03655f7ff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:51:17 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:51:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:51:18 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:51:18 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 06 Jun 2018 23:51:19 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 06 Jun 2018 23:52:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:52:32 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 06 Jun 2018 23:52:33 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 06 Jun 2018 23:52:33 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:52:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:52:33 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:52:34 GMT
USER [arangodb]
# Wed, 06 Jun 2018 23:52:34 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecad42dba7c17a85507eaa13723b738c437ca5d1484eb7849a0ae828b8ec520`  
		Last Modified: Wed, 06 Jun 2018 23:54:51 GMT  
		Size: 7.4 KB (7413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789c12fc5b4791c853139f56465ba40ce1124c8f0f97ab0d7b8bbbeb5a2b632e`  
		Last Modified: Wed, 06 Jun 2018 23:55:14 GMT  
		Size: 60.7 MB (60730989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac815aa8dfdca8fdae5aa11c6cf3b7466aa6420e0b14f47c08c414578c75c247`  
		Last Modified: Wed, 06 Jun 2018 23:54:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763ba5795b8fc189ef5ca375f63005f95f31ae95734b023544dc6a2da2678c6f`  
		Last Modified: Wed, 06 Jun 2018 23:54:51 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:66f27afbae36aa0874961ba164f6164cb0f3b22c49c6651ae29f9349d6639cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:1d5dc1540decf03d495af6d3b613c679af6c3e08cdf007068505d08c3e1ffdf9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112662163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bafeb53fdd33d2199f182bd14e879b739dbbc7c205c289f60372ec1b236ad3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:52:42 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:52:42 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARANGO_VERSION=3.2.15
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Wed, 06 Jun 2018 23:52:43 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Wed, 06 Jun 2018 23:52:43 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Wed, 06 Jun 2018 23:52:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:52:55 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:53:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:53:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 23:53:31 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:53:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Jun 2018 23:53:32 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:53:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:53:32 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:53:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ee5fc77227cf44f6f17f3b6a28b49c305e0e22403209219f064dd4723aa4e`  
		Last Modified: Wed, 06 Jun 2018 23:55:38 GMT  
		Size: 6.6 MB (6561201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4775a28212731df328803639f0c532be47a37d1cd6b150f5d14080fffbb8056f`  
		Last Modified: Wed, 06 Jun 2018 23:55:29 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f085940beaee9ebaf23d2baa07c83a1b74435f6359b626112f42c10ab2460c`  
		Last Modified: Wed, 06 Jun 2018 23:55:42 GMT  
		Size: 7.4 MB (7353474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f123ff1351fc604768792e49f278329499d0125468cd683f7c34c479e0669e46`  
		Last Modified: Wed, 06 Jun 2018 23:55:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a33b38042abe2538f1d2ec00efa0d08eed660bc3094a539b8981fcb93bdb2`  
		Last Modified: Wed, 06 Jun 2018 23:55:59 GMT  
		Size: 53.4 MB (53423906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2e9f59d54bf7f8dfb8757caaaec185dda4795ad7a05134ce3a6af1bbcef19d`  
		Last Modified: Wed, 06 Jun 2018 23:55:29 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.15`

```console
$ docker pull arangodb@sha256:66f27afbae36aa0874961ba164f6164cb0f3b22c49c6651ae29f9349d6639cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.15` - linux; amd64

```console
$ docker pull arangodb@sha256:1d5dc1540decf03d495af6d3b613c679af6c3e08cdf007068505d08c3e1ffdf9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112662163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bafeb53fdd33d2199f182bd14e879b739dbbc7c205c289f60372ec1b236ad3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:52:42 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:52:42 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARANGO_VERSION=3.2.15
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Wed, 06 Jun 2018 23:52:43 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Wed, 06 Jun 2018 23:52:43 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Wed, 06 Jun 2018 23:52:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:52:55 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:53:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:53:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 23:53:31 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:53:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Jun 2018 23:53:32 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:53:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:53:32 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:53:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ee5fc77227cf44f6f17f3b6a28b49c305e0e22403209219f064dd4723aa4e`  
		Last Modified: Wed, 06 Jun 2018 23:55:38 GMT  
		Size: 6.6 MB (6561201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4775a28212731df328803639f0c532be47a37d1cd6b150f5d14080fffbb8056f`  
		Last Modified: Wed, 06 Jun 2018 23:55:29 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f085940beaee9ebaf23d2baa07c83a1b74435f6359b626112f42c10ab2460c`  
		Last Modified: Wed, 06 Jun 2018 23:55:42 GMT  
		Size: 7.4 MB (7353474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f123ff1351fc604768792e49f278329499d0125468cd683f7c34c479e0669e46`  
		Last Modified: Wed, 06 Jun 2018 23:55:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a33b38042abe2538f1d2ec00efa0d08eed660bc3094a539b8981fcb93bdb2`  
		Last Modified: Wed, 06 Jun 2018 23:55:59 GMT  
		Size: 53.4 MB (53423906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2e9f59d54bf7f8dfb8757caaaec185dda4795ad7a05134ce3a6af1bbcef19d`  
		Last Modified: Wed, 06 Jun 2018 23:55:29 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:dce1a2e4ca65f3426a984328d258da47817153c88624ef59e1f79ea60c703d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:18f209e8619fb6d36f63717318ac85310881ff98b8f64f1091ec57b7bc8ad9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116742025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb5e993d586ea6f63429a9c655be42d0d558e4e8bf652a709f3ab2ff51702d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:52:42 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:52:42 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Jun 2018 23:53:41 GMT
ENV ARANGO_VERSION=3.3.10
# Wed, 06 Jun 2018 23:53:41 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.10-1_amd64.deb
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb.asc
# Wed, 06 Jun 2018 23:53:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:53:58 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:54:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:54:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 23:54:32 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:54:33 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Jun 2018 23:54:33 GMT
COPY file:f1d7a2da62ae377ee32c18cf950d6507b5184b50e05c06ad6f35243591159860 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:54:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:54:34 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:54:34 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b6541914308bd8af18e9854fa4bfd4800daaf960ed37cdfb0134101888844`  
		Last Modified: Wed, 06 Jun 2018 23:56:21 GMT  
		Size: 6.6 MB (6561185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dbc410a746359cb024a86bce8433fca3c951e61b3885535d82b9e2cfe8650a`  
		Last Modified: Wed, 06 Jun 2018 23:56:14 GMT  
		Size: 3.5 KB (3465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d7ea1c15378047fd850773a135a268408d66cc6eeb633c2492187c63ef680`  
		Last Modified: Wed, 06 Jun 2018 23:56:18 GMT  
		Size: 7.4 MB (7353480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ef043b241e0a0d1f29db72bbc6009fa1399dac1c6fe3f9c8caea4306b21b16`  
		Last Modified: Wed, 06 Jun 2018 23:56:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b65f50ed0255ecf4865a6659c28ee9ad917ccf00c0b6d4cc81b8b53fd2c78`  
		Last Modified: Wed, 06 Jun 2018 23:56:40 GMT  
		Size: 57.5 MB (57503849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eaa57a94846a9f60a7ce8895135de19247e74a800a924cf72af1b8eace63f2`  
		Last Modified: Wed, 06 Jun 2018 23:56:14 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.10`

```console
$ docker pull arangodb@sha256:dce1a2e4ca65f3426a984328d258da47817153c88624ef59e1f79ea60c703d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.10` - linux; amd64

```console
$ docker pull arangodb@sha256:18f209e8619fb6d36f63717318ac85310881ff98b8f64f1091ec57b7bc8ad9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116742025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb5e993d586ea6f63429a9c655be42d0d558e4e8bf652a709f3ab2ff51702d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:52:42 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:52:42 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Jun 2018 23:53:41 GMT
ENV ARANGO_VERSION=3.3.10
# Wed, 06 Jun 2018 23:53:41 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.10-1_amd64.deb
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb.asc
# Wed, 06 Jun 2018 23:53:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:53:58 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:54:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:54:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 23:54:32 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:54:33 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Jun 2018 23:54:33 GMT
COPY file:f1d7a2da62ae377ee32c18cf950d6507b5184b50e05c06ad6f35243591159860 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:54:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:54:34 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:54:34 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b6541914308bd8af18e9854fa4bfd4800daaf960ed37cdfb0134101888844`  
		Last Modified: Wed, 06 Jun 2018 23:56:21 GMT  
		Size: 6.6 MB (6561185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dbc410a746359cb024a86bce8433fca3c951e61b3885535d82b9e2cfe8650a`  
		Last Modified: Wed, 06 Jun 2018 23:56:14 GMT  
		Size: 3.5 KB (3465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d7ea1c15378047fd850773a135a268408d66cc6eeb633c2492187c63ef680`  
		Last Modified: Wed, 06 Jun 2018 23:56:18 GMT  
		Size: 7.4 MB (7353480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ef043b241e0a0d1f29db72bbc6009fa1399dac1c6fe3f9c8caea4306b21b16`  
		Last Modified: Wed, 06 Jun 2018 23:56:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b65f50ed0255ecf4865a6659c28ee9ad917ccf00c0b6d4cc81b8b53fd2c78`  
		Last Modified: Wed, 06 Jun 2018 23:56:40 GMT  
		Size: 57.5 MB (57503849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eaa57a94846a9f60a7ce8895135de19247e74a800a924cf72af1b8eace63f2`  
		Last Modified: Wed, 06 Jun 2018 23:56:14 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:dce1a2e4ca65f3426a984328d258da47817153c88624ef59e1f79ea60c703d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:18f209e8619fb6d36f63717318ac85310881ff98b8f64f1091ec57b7bc8ad9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116742025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb5e993d586ea6f63429a9c655be42d0d558e4e8bf652a709f3ab2ff51702d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:52:42 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Jun 2018 23:52:42 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Jun 2018 23:52:42 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Jun 2018 23:53:41 GMT
ENV ARANGO_VERSION=3.3.10
# Wed, 06 Jun 2018 23:53:41 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.10-1_amd64.deb
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb
# Wed, 06 Jun 2018 23:53:42 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb.asc
# Wed, 06 Jun 2018 23:53:50 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:53:58 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Jun 2018 23:54:12 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 23:54:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 23:54:32 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Jun 2018 23:54:33 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Jun 2018 23:54:33 GMT
COPY file:f1d7a2da62ae377ee32c18cf950d6507b5184b50e05c06ad6f35243591159860 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:54:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:54:34 GMT
EXPOSE 8529/tcp
# Wed, 06 Jun 2018 23:54:34 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b6541914308bd8af18e9854fa4bfd4800daaf960ed37cdfb0134101888844`  
		Last Modified: Wed, 06 Jun 2018 23:56:21 GMT  
		Size: 6.6 MB (6561185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dbc410a746359cb024a86bce8433fca3c951e61b3885535d82b9e2cfe8650a`  
		Last Modified: Wed, 06 Jun 2018 23:56:14 GMT  
		Size: 3.5 KB (3465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d7ea1c15378047fd850773a135a268408d66cc6eeb633c2492187c63ef680`  
		Last Modified: Wed, 06 Jun 2018 23:56:18 GMT  
		Size: 7.4 MB (7353480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ef043b241e0a0d1f29db72bbc6009fa1399dac1c6fe3f9c8caea4306b21b16`  
		Last Modified: Wed, 06 Jun 2018 23:56:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b65f50ed0255ecf4865a6659c28ee9ad917ccf00c0b6d4cc81b8b53fd2c78`  
		Last Modified: Wed, 06 Jun 2018 23:56:40 GMT  
		Size: 57.5 MB (57503849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eaa57a94846a9f60a7ce8895135de19247e74a800a924cf72af1b8eace63f2`  
		Last Modified: Wed, 06 Jun 2018 23:56:14 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

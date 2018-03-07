<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.4`](#arangodb334)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:ae9c772cf06ecf403a45e30a7e59a88d83dfe112ca1cd7d21dadf1d713328c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:280cc598df5eeff1b0cf3c3e3eaf65ed9a91813163d47d68750346a7d2bf9a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113344742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d332a46b06a5558797071293022c038b3499e913bb80729de32ee236981fc508`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:39:51 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 17 Feb 2018 06:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 17 Feb 2018 06:40:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:40:26 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 17 Feb 2018 06:40:27 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 17 Feb 2018 06:40:28 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Sat, 17 Feb 2018 06:40:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:40:28 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:40:29 GMT
USER [arangodb]
# Sat, 17 Feb 2018 06:40:29 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a72b24deea382c26b120fe283d5420729104ee2889f8e752ebdc4a08daa290`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26f946b63cdb81927006625783459f7894e729eb467db44f989464f964cbe75`  
		Last Modified: Sat, 17 Feb 2018 06:55:38 GMT  
		Size: 60.7 MB (60727780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008fe6c052d4e0ab8b45f02929a8512fc0b24599240fb1fd71d6b75fc0d5c52b`  
		Last Modified: Sat, 17 Feb 2018 06:55:22 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dc3491a2304624a5a2763ce9650434228e817b61aea94a0ee63bb939c34130`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:ae9c772cf06ecf403a45e30a7e59a88d83dfe112ca1cd7d21dadf1d713328c4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:280cc598df5eeff1b0cf3c3e3eaf65ed9a91813163d47d68750346a7d2bf9a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113344742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d332a46b06a5558797071293022c038b3499e913bb80729de32ee236981fc508`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:39:51 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 17 Feb 2018 06:39:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARCHITECTURE=amd64
# Sat, 17 Feb 2018 06:39:53 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 17 Feb 2018 06:39:54 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 17 Feb 2018 06:39:55 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 17 Feb 2018 06:40:25 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 17 Feb 2018 06:40:26 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 17 Feb 2018 06:40:27 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 17 Feb 2018 06:40:28 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Sat, 17 Feb 2018 06:40:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 06:40:28 GMT
EXPOSE 8529/tcp
# Sat, 17 Feb 2018 06:40:29 GMT
USER [arangodb]
# Sat, 17 Feb 2018 06:40:29 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a72b24deea382c26b120fe283d5420729104ee2889f8e752ebdc4a08daa290`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26f946b63cdb81927006625783459f7894e729eb467db44f989464f964cbe75`  
		Last Modified: Sat, 17 Feb 2018 06:55:38 GMT  
		Size: 60.7 MB (60727780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008fe6c052d4e0ab8b45f02929a8512fc0b24599240fb1fd71d6b75fc0d5c52b`  
		Last Modified: Sat, 17 Feb 2018 06:55:22 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20dc3491a2304624a5a2763ce9650434228e817b61aea94a0ee63bb939c34130`  
		Last Modified: Sat, 17 Feb 2018 06:55:21 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:46f96d309b971db66059488e2d447f453a2f4aa836802c127ed2b1f27ec6e246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:9e9becfc6a3a275a280fa2b6ae4679fc0164195193824c7c18a69534a1ed8c19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115785317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1deb9169b998227167ec77664d9330d038b9802835feb973a9715b97a9c24e`
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
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_VERSION=3.3.4
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.4-1_amd64.deb
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb
# Wed, 07 Mar 2018 18:22:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb.asc
# Wed, 07 Mar 2018 18:22:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 18:22:21 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 07 Mar 2018 18:22:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 18:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 07 Mar 2018 18:22:42 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 07 Mar 2018 18:22:42 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 07 Mar 2018 18:22:43 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Wed, 07 Mar 2018 18:22:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 18:22:43 GMT
EXPOSE 8529/tcp
# Wed, 07 Mar 2018 18:22:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb47a9ede9067726808229c5b7dfc8edb770ed6a1b3058da1cbe0a1757cbc793`  
		Last Modified: Wed, 07 Mar 2018 18:23:09 GMT  
		Size: 6.9 MB (6921102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad019e3d497ddad796cf6026a9bfcb7bcf153c072926cddc677c67e9007acd`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 3.5 KB (3464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9cc4c017ee3b6ba75569c5dd1301a91ebb48ea43f35bdfa0f9f429b6ef850f`  
		Last Modified: Wed, 07 Mar 2018 18:23:07 GMT  
		Size: 7.4 MB (7351555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d54fc7262f16f292ef393455d8913f17f4ec3068ab45bffdeec6b63a68e514`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca76c1514cff5cd962a2302d08360bec97f15e78123e293a1dd374591e639e0`  
		Last Modified: Wed, 07 Mar 2018 18:23:15 GMT  
		Size: 56.4 MB (56374619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bccf91e937eeb99a4510fe933371c90aa1d30eea39261465bfcea66d638a115`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.4`

```console
$ docker pull arangodb@sha256:46f96d309b971db66059488e2d447f453a2f4aa836802c127ed2b1f27ec6e246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:9e9becfc6a3a275a280fa2b6ae4679fc0164195193824c7c18a69534a1ed8c19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115785317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1deb9169b998227167ec77664d9330d038b9802835feb973a9715b97a9c24e`
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
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_VERSION=3.3.4
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.4-1_amd64.deb
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb
# Wed, 07 Mar 2018 18:22:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb.asc
# Wed, 07 Mar 2018 18:22:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 18:22:21 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 07 Mar 2018 18:22:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 18:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 07 Mar 2018 18:22:42 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 07 Mar 2018 18:22:42 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 07 Mar 2018 18:22:43 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Wed, 07 Mar 2018 18:22:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 18:22:43 GMT
EXPOSE 8529/tcp
# Wed, 07 Mar 2018 18:22:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb47a9ede9067726808229c5b7dfc8edb770ed6a1b3058da1cbe0a1757cbc793`  
		Last Modified: Wed, 07 Mar 2018 18:23:09 GMT  
		Size: 6.9 MB (6921102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad019e3d497ddad796cf6026a9bfcb7bcf153c072926cddc677c67e9007acd`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 3.5 KB (3464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9cc4c017ee3b6ba75569c5dd1301a91ebb48ea43f35bdfa0f9f429b6ef850f`  
		Last Modified: Wed, 07 Mar 2018 18:23:07 GMT  
		Size: 7.4 MB (7351555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d54fc7262f16f292ef393455d8913f17f4ec3068ab45bffdeec6b63a68e514`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca76c1514cff5cd962a2302d08360bec97f15e78123e293a1dd374591e639e0`  
		Last Modified: Wed, 07 Mar 2018 18:23:15 GMT  
		Size: 56.4 MB (56374619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bccf91e937eeb99a4510fe933371c90aa1d30eea39261465bfcea66d638a115`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:46f96d309b971db66059488e2d447f453a2f4aa836802c127ed2b1f27ec6e246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:9e9becfc6a3a275a280fa2b6ae4679fc0164195193824c7c18a69534a1ed8c19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115785317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1deb9169b998227167ec77664d9330d038b9802835feb973a9715b97a9c24e`
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
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_VERSION=3.3.4
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.4-1_amd64.deb
# Wed, 07 Mar 2018 18:22:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb
# Wed, 07 Mar 2018 18:22:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb.asc
# Wed, 07 Mar 2018 18:22:17 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 18:22:21 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 07 Mar 2018 18:22:28 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 18:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 07 Mar 2018 18:22:42 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 07 Mar 2018 18:22:42 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 07 Mar 2018 18:22:43 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Wed, 07 Mar 2018 18:22:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Mar 2018 18:22:43 GMT
EXPOSE 8529/tcp
# Wed, 07 Mar 2018 18:22:44 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb47a9ede9067726808229c5b7dfc8edb770ed6a1b3058da1cbe0a1757cbc793`  
		Last Modified: Wed, 07 Mar 2018 18:23:09 GMT  
		Size: 6.9 MB (6921102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad019e3d497ddad796cf6026a9bfcb7bcf153c072926cddc677c67e9007acd`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 3.5 KB (3464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9cc4c017ee3b6ba75569c5dd1301a91ebb48ea43f35bdfa0f9f429b6ef850f`  
		Last Modified: Wed, 07 Mar 2018 18:23:07 GMT  
		Size: 7.4 MB (7351555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d54fc7262f16f292ef393455d8913f17f4ec3068ab45bffdeec6b63a68e514`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca76c1514cff5cd962a2302d08360bec97f15e78123e293a1dd374591e639e0`  
		Last Modified: Wed, 07 Mar 2018 18:23:15 GMT  
		Size: 56.4 MB (56374619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bccf91e937eeb99a4510fe933371c90aa1d30eea39261465bfcea66d638a115`  
		Last Modified: Wed, 07 Mar 2018 18:23:06 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

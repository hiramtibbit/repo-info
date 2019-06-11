<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.17`](#arangodb3217)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.23`](#arangodb3323)
-	[`arangodb:3.4`](#arangodb34)
-	[`arangodb:3.4.6`](#arangodb346)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:27031b9a5bcbb6e2bd6d1f6a3b34490de453a2902091c10f130ee914746a794d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:5576d7892184cfc137b9bdeccd4ad6cabe38cf583d6f8b3d9ab461a82655cab4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115102358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13300c40545631b61214a518d59aa82fefc79f852d0f8d739fc20d8fb4dffa80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:27:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 11 Jun 2019 02:27:29 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARCHITECTURE=amd64
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 11 Jun 2019 02:27:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 11 Jun 2019 02:27:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 11 Jun 2019 02:30:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 11 Jun 2019 02:30:16 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 11 Jun 2019 02:30:17 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 11 Jun 2019 02:30:17 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Tue, 11 Jun 2019 02:30:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 02:30:17 GMT
EXPOSE 8529
# Tue, 11 Jun 2019 02:30:17 GMT
USER arangodb
# Tue, 11 Jun 2019 02:30:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654f2b30a4561174919c34350441b5a57eab181f1ea320388e592348cc0c809`  
		Last Modified: Tue, 11 Jun 2019 02:32:45 GMT  
		Size: 8.6 KB (8595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c21f24f335b04c40440be482a61ce427db45eb3997aa9d12378e497b1261070`  
		Last Modified: Tue, 11 Jun 2019 02:33:03 GMT  
		Size: 60.7 MB (60706667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aece742f66ca38a3bad0d12a65abfc806a0113146186c5288add13e9120dd94a`  
		Last Modified: Tue, 11 Jun 2019 02:32:45 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a201c036372aeba42cb1a9871004a392c50a59cd9e17cff11dc970883663aa9`  
		Last Modified: Tue, 11 Jun 2019 02:32:45 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:27031b9a5bcbb6e2bd6d1f6a3b34490de453a2902091c10f130ee914746a794d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:5576d7892184cfc137b9bdeccd4ad6cabe38cf583d6f8b3d9ab461a82655cab4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115102358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13300c40545631b61214a518d59aa82fefc79f852d0f8d739fc20d8fb4dffa80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:27:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 11 Jun 2019 02:27:29 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARCHITECTURE=amd64
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 11 Jun 2019 02:27:29 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 11 Jun 2019 02:27:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 11 Jun 2019 02:27:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 11 Jun 2019 02:30:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 11 Jun 2019 02:30:16 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 11 Jun 2019 02:30:17 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 11 Jun 2019 02:30:17 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Tue, 11 Jun 2019 02:30:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 02:30:17 GMT
EXPOSE 8529
# Tue, 11 Jun 2019 02:30:17 GMT
USER arangodb
# Tue, 11 Jun 2019 02:30:17 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654f2b30a4561174919c34350441b5a57eab181f1ea320388e592348cc0c809`  
		Last Modified: Tue, 11 Jun 2019 02:32:45 GMT  
		Size: 8.6 KB (8595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c21f24f335b04c40440be482a61ce427db45eb3997aa9d12378e497b1261070`  
		Last Modified: Tue, 11 Jun 2019 02:33:03 GMT  
		Size: 60.7 MB (60706667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aece742f66ca38a3bad0d12a65abfc806a0113146186c5288add13e9120dd94a`  
		Last Modified: Tue, 11 Jun 2019 02:32:45 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a201c036372aeba42cb1a9871004a392c50a59cd9e17cff11dc970883663aa9`  
		Last Modified: Tue, 11 Jun 2019 02:32:45 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:c324f5c98a6c89c1a771e866f3eca25c923febb2bdd18dc875c576b50ad938ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:b905dc4998ac67bacfae95c2674540e4a9c8c62fd7067ce0e15679103c5fd11f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113502581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddff0647d8ed7883a8157d195b4bd1a3a03c5bcc2a5fe756d4c29d6a364b2151`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:30:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARCHITECTURE=amd64
# Tue, 11 Jun 2019 02:30:27 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARANGO_VERSION=3.2.17
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 11 Jun 2019 02:30:28 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Tue, 11 Jun 2019 02:30:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Tue, 11 Jun 2019 02:30:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Tue, 11 Jun 2019 02:30:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:30:41 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 11 Jun 2019 02:30:59 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:31:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 02:31:23 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 11 Jun 2019 02:31:23 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 11 Jun 2019 02:31:24 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 11 Jun 2019 02:31:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 02:31:24 GMT
EXPOSE 8529
# Tue, 11 Jun 2019 02:31:24 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8a00dc1ea3d55423a1ebe7db63a03e483752006032ad27aece0390f0be45e3`  
		Last Modified: Tue, 11 Jun 2019 02:33:10 GMT  
		Size: 6.6 MB (6565753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742d62e42692a6a0d2a4b41e3f2f127ab40b0f921e5a619b400ed6b73c36729`  
		Last Modified: Tue, 11 Jun 2019 02:33:07 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478120da3b6e4f0e951032e0a19ffcf9f61afa3e093438c14999857a0bb4a02`  
		Last Modified: Tue, 11 Jun 2019 02:33:10 GMT  
		Size: 7.5 MB (7455298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08d918313e78f5b97ac11ccba78faeeb1e31a2106c4d9a54a305d36ecda09d7`  
		Last Modified: Tue, 11 Jun 2019 02:33:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7382fa162bdc0935a9ff77dfc79ca9bc3f72c686b6a1f57767f679cde284fe8`  
		Last Modified: Tue, 11 Jun 2019 02:33:24 GMT  
		Size: 54.1 MB (54135579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2094d01019959ecafcc4a8a0b21a74d15ec91f57db4cfd03536740705e3294`  
		Last Modified: Tue, 11 Jun 2019 02:33:07 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:c324f5c98a6c89c1a771e866f3eca25c923febb2bdd18dc875c576b50ad938ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:b905dc4998ac67bacfae95c2674540e4a9c8c62fd7067ce0e15679103c5fd11f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113502581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddff0647d8ed7883a8157d195b4bd1a3a03c5bcc2a5fe756d4c29d6a364b2151`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:30:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARCHITECTURE=amd64
# Tue, 11 Jun 2019 02:30:27 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARANGO_VERSION=3.2.17
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 11 Jun 2019 02:30:28 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Tue, 11 Jun 2019 02:30:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Tue, 11 Jun 2019 02:30:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Tue, 11 Jun 2019 02:30:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:30:41 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 11 Jun 2019 02:30:59 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:31:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 02:31:23 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 11 Jun 2019 02:31:23 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 11 Jun 2019 02:31:24 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 11 Jun 2019 02:31:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 02:31:24 GMT
EXPOSE 8529
# Tue, 11 Jun 2019 02:31:24 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8a00dc1ea3d55423a1ebe7db63a03e483752006032ad27aece0390f0be45e3`  
		Last Modified: Tue, 11 Jun 2019 02:33:10 GMT  
		Size: 6.6 MB (6565753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742d62e42692a6a0d2a4b41e3f2f127ab40b0f921e5a619b400ed6b73c36729`  
		Last Modified: Tue, 11 Jun 2019 02:33:07 GMT  
		Size: 4.4 KB (4449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478120da3b6e4f0e951032e0a19ffcf9f61afa3e093438c14999857a0bb4a02`  
		Last Modified: Tue, 11 Jun 2019 02:33:10 GMT  
		Size: 7.5 MB (7455298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08d918313e78f5b97ac11ccba78faeeb1e31a2106c4d9a54a305d36ecda09d7`  
		Last Modified: Tue, 11 Jun 2019 02:33:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7382fa162bdc0935a9ff77dfc79ca9bc3f72c686b6a1f57767f679cde284fe8`  
		Last Modified: Tue, 11 Jun 2019 02:33:24 GMT  
		Size: 54.1 MB (54135579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2094d01019959ecafcc4a8a0b21a74d15ec91f57db4cfd03536740705e3294`  
		Last Modified: Tue, 11 Jun 2019 02:33:07 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:ce02129667d70011d340fddf349f499c1466c9d687ef3ee7d09f5193b530f476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:5d52e4cdcf05920f3b808b2699e9be7cf306bab276bd859171b2ead430089474
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114267230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad63d379ffc226b3e1b4b538a931a40b8a1279c8540a67bccf7515a1c4d4a04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:30:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARCHITECTURE=amd64
# Tue, 11 Jun 2019 02:30:27 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 11 Jun 2019 02:31:30 GMT
ENV ARANGO_VERSION=3.3.23
# Tue, 11 Jun 2019 02:31:30 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 11 Jun 2019 02:31:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.23-1_amd64.deb
# Tue, 11 Jun 2019 02:31:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb
# Tue, 11 Jun 2019 02:31:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb.asc
# Tue, 11 Jun 2019 02:31:41 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:31:45 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 11 Jun 2019 02:32:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:32:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 02:32:27 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 11 Jun 2019 02:32:27 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 11 Jun 2019 02:32:28 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 11 Jun 2019 02:32:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 02:32:28 GMT
EXPOSE 8529
# Tue, 11 Jun 2019 02:32:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2519b9ce64017fa20d184f8463768365c40f09aa589445043691e4c82fb346`  
		Last Modified: Tue, 11 Jun 2019 02:33:31 GMT  
		Size: 6.6 MB (6565840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865318ad33fdc25247cfde0e97b1d6fdfb2c5281ce3163c43ab700ae38631fac`  
		Last Modified: Tue, 11 Jun 2019 02:33:29 GMT  
		Size: 4.4 KB (4447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98dd2a787eb7569744917333cbe67b1864c14a7c802ebc17e4ea1ebe16342b`  
		Last Modified: Tue, 11 Jun 2019 02:33:30 GMT  
		Size: 7.5 MB (7455329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641cc465019ad7cb41651b5dbbc8ba8245ec1f1bd65413b7bdd79f83bfb0b896`  
		Last Modified: Tue, 11 Jun 2019 02:33:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7298d9d31622d8e0b9e98275937154d0d69a82bf75c8e1f67b575c6b61a30c41`  
		Last Modified: Tue, 11 Jun 2019 02:33:44 GMT  
		Size: 54.9 MB (54900112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbce0bee8a3b3a701084d7ad8f760e96cbc54dbd15c3078e6e900a74a612c835`  
		Last Modified: Tue, 11 Jun 2019 02:33:29 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.23`

```console
$ docker pull arangodb@sha256:ce02129667d70011d340fddf349f499c1466c9d687ef3ee7d09f5193b530f476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.23` - linux; amd64

```console
$ docker pull arangodb@sha256:5d52e4cdcf05920f3b808b2699e9be7cf306bab276bd859171b2ead430089474
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114267230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad63d379ffc226b3e1b4b538a931a40b8a1279c8540a67bccf7515a1c4d4a04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:30:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 11 Jun 2019 02:30:27 GMT
ENV ARCHITECTURE=amd64
# Tue, 11 Jun 2019 02:30:27 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 11 Jun 2019 02:31:30 GMT
ENV ARANGO_VERSION=3.3.23
# Tue, 11 Jun 2019 02:31:30 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 11 Jun 2019 02:31:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.23-1_amd64.deb
# Tue, 11 Jun 2019 02:31:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb
# Tue, 11 Jun 2019 02:31:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.23-1_amd64.deb.asc
# Tue, 11 Jun 2019 02:31:41 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:31:45 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 11 Jun 2019 02:32:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:32:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 02:32:27 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 11 Jun 2019 02:32:27 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 11 Jun 2019 02:32:28 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 11 Jun 2019 02:32:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 02:32:28 GMT
EXPOSE 8529
# Tue, 11 Jun 2019 02:32:28 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2519b9ce64017fa20d184f8463768365c40f09aa589445043691e4c82fb346`  
		Last Modified: Tue, 11 Jun 2019 02:33:31 GMT  
		Size: 6.6 MB (6565840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865318ad33fdc25247cfde0e97b1d6fdfb2c5281ce3163c43ab700ae38631fac`  
		Last Modified: Tue, 11 Jun 2019 02:33:29 GMT  
		Size: 4.4 KB (4447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98dd2a787eb7569744917333cbe67b1864c14a7c802ebc17e4ea1ebe16342b`  
		Last Modified: Tue, 11 Jun 2019 02:33:30 GMT  
		Size: 7.5 MB (7455329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641cc465019ad7cb41651b5dbbc8ba8245ec1f1bd65413b7bdd79f83bfb0b896`  
		Last Modified: Tue, 11 Jun 2019 02:33:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7298d9d31622d8e0b9e98275937154d0d69a82bf75c8e1f67b575c6b61a30c41`  
		Last Modified: Tue, 11 Jun 2019 02:33:44 GMT  
		Size: 54.9 MB (54900112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbce0bee8a3b3a701084d7ad8f760e96cbc54dbd15c3078e6e900a74a612c835`  
		Last Modified: Tue, 11 Jun 2019 02:33:29 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:123bf1670e02548aab562e4c97c698608584d31ebeff367bea77a5cd486df083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:d4c485a700714b8ce45ad465c26069d956932092dc35e3e7007a3408909a0670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb08e29190e3bf0e5e049e4dcbed1176a56f15b401ffed1e5903d2ab242809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_VERSION=3.4.6.1
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb.asc
# Fri, 07 Jun 2019 20:19:54 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 07 Jun 2019 20:19:58 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 07 Jun 2019 20:19:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 07 Jun 2019 20:20:08 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Fri, 07 Jun 2019 20:20:08 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 07 Jun 2019 20:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Jun 2019 20:20:09 GMT
EXPOSE 8529
# Fri, 07 Jun 2019 20:20:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede70f46f5387f1febe02568db89ec9b291ffb6f953f558d7bf8264226c26e16`  
		Last Modified: Fri, 07 Jun 2019 20:20:29 GMT  
		Size: 30.1 MB (30135887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de26343cbd400d5577f638dc348447c1f72d67fb7182e800f22f5d1ebe88ea4`  
		Last Modified: Fri, 07 Jun 2019 20:20:20 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfe26b2b904b4cf4257f050fcc72ca8298abd4807ed36791604f5990dfdba1b`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2180c84652efcbc4e3f393732b89f0799a5c52aac19a6bcaeec6a2afb12ea666`  
		Last Modified: Fri, 07 Jun 2019 20:20:33 GMT  
		Size: 75.3 MB (75319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be69770319ba5b959546efdf88a1db326c6a70914e3cf4bca411a3cb9353c220`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de62ef26ea49369450b412d3b62078319890de02d85c92065357e78adf25f09`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.6`

```console
$ docker pull arangodb@sha256:123bf1670e02548aab562e4c97c698608584d31ebeff367bea77a5cd486df083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4.6` - linux; amd64

```console
$ docker pull arangodb@sha256:d4c485a700714b8ce45ad465c26069d956932092dc35e3e7007a3408909a0670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb08e29190e3bf0e5e049e4dcbed1176a56f15b401ffed1e5903d2ab242809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_VERSION=3.4.6.1
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb.asc
# Fri, 07 Jun 2019 20:19:54 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 07 Jun 2019 20:19:58 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 07 Jun 2019 20:19:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 07 Jun 2019 20:20:08 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Fri, 07 Jun 2019 20:20:08 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 07 Jun 2019 20:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Jun 2019 20:20:09 GMT
EXPOSE 8529
# Fri, 07 Jun 2019 20:20:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede70f46f5387f1febe02568db89ec9b291ffb6f953f558d7bf8264226c26e16`  
		Last Modified: Fri, 07 Jun 2019 20:20:29 GMT  
		Size: 30.1 MB (30135887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de26343cbd400d5577f638dc348447c1f72d67fb7182e800f22f5d1ebe88ea4`  
		Last Modified: Fri, 07 Jun 2019 20:20:20 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfe26b2b904b4cf4257f050fcc72ca8298abd4807ed36791604f5990dfdba1b`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2180c84652efcbc4e3f393732b89f0799a5c52aac19a6bcaeec6a2afb12ea666`  
		Last Modified: Fri, 07 Jun 2019 20:20:33 GMT  
		Size: 75.3 MB (75319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be69770319ba5b959546efdf88a1db326c6a70914e3cf4bca411a3cb9353c220`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de62ef26ea49369450b412d3b62078319890de02d85c92065357e78adf25f09`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:123bf1670e02548aab562e4c97c698608584d31ebeff367bea77a5cd486df083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:d4c485a700714b8ce45ad465c26069d956932092dc35e3e7007a3408909a0670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb08e29190e3bf0e5e049e4dcbed1176a56f15b401ffed1e5903d2ab242809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_VERSION=3.4.6.1
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb.asc
# Fri, 07 Jun 2019 20:19:54 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 07 Jun 2019 20:19:58 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 07 Jun 2019 20:19:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 07 Jun 2019 20:20:08 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Fri, 07 Jun 2019 20:20:08 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 07 Jun 2019 20:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Jun 2019 20:20:09 GMT
EXPOSE 8529
# Fri, 07 Jun 2019 20:20:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede70f46f5387f1febe02568db89ec9b291ffb6f953f558d7bf8264226c26e16`  
		Last Modified: Fri, 07 Jun 2019 20:20:29 GMT  
		Size: 30.1 MB (30135887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de26343cbd400d5577f638dc348447c1f72d67fb7182e800f22f5d1ebe88ea4`  
		Last Modified: Fri, 07 Jun 2019 20:20:20 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfe26b2b904b4cf4257f050fcc72ca8298abd4807ed36791604f5990dfdba1b`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2180c84652efcbc4e3f393732b89f0799a5c52aac19a6bcaeec6a2afb12ea666`  
		Last Modified: Fri, 07 Jun 2019 20:20:33 GMT  
		Size: 75.3 MB (75319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be69770319ba5b959546efdf88a1db326c6a70914e3cf4bca411a3cb9353c220`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de62ef26ea49369450b412d3b62078319890de02d85c92065357e78adf25f09`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

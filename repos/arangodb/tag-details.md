<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.17`](#arangodb3217)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.21`](#arangodb3321)
-	[`arangodb:3.4`](#arangodb34)
-	[`arangodb:3.4.1`](#arangodb341)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:33987a00ba5a270750dd4d6c8b5944ce49f5950ad1522229e97fefd36a908dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:034c325593746ad5b78ba193a61a304e676bf62bf9dfc7c5749dcc9fd9883352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115101402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400022d7696395d7b0e71a1a19710aa6060241deba2b57d98679d75b56f0f03e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:07 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 29 Dec 2018 01:38:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARCHITECTURE=amd64
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 29 Dec 2018 01:38:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 29 Dec 2018 01:40:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 29 Dec 2018 01:40:36 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 29 Dec 2018 01:40:36 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 29 Dec 2018 01:40:37 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Sat, 29 Dec 2018 01:40:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 01:40:37 GMT
EXPOSE 8529
# Sat, 29 Dec 2018 01:40:37 GMT
USER arangodb
# Sat, 29 Dec 2018 01:40:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c8fcc8d45dba8c8566d26ce3266b4f2bf481a89d39aea1f09b6aae48f9221`  
		Last Modified: Sat, 29 Dec 2018 01:42:01 GMT  
		Size: 7.4 KB (7411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1041f20bfefc3d9d2a8d676d758906310616ae909d716e32a7c8e8fb204460`  
		Last Modified: Sat, 29 Dec 2018 01:42:12 GMT  
		Size: 60.7 MB (60705612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e99549084ff60fb82ffab3ca7b7555c87d23ec2319912c8665348e5588d630`  
		Last Modified: Sat, 29 Dec 2018 01:42:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1674935d7060b75311abbaeeb96c41f85c2cba433c9631d6d20ae3c1e27c3b2`  
		Last Modified: Sat, 29 Dec 2018 01:42:02 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:33987a00ba5a270750dd4d6c8b5944ce49f5950ad1522229e97fefd36a908dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:034c325593746ad5b78ba193a61a304e676bf62bf9dfc7c5749dcc9fd9883352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115101402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400022d7696395d7b0e71a1a19710aa6060241deba2b57d98679d75b56f0f03e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:38:07 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 29 Dec 2018 01:38:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARCHITECTURE=amd64
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_VERSION=2.8.11
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Sat, 29 Dec 2018 01:38:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Sat, 29 Dec 2018 01:38:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Sat, 29 Dec 2018 01:40:35 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 29 Dec 2018 01:40:36 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Sat, 29 Dec 2018 01:40:36 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Sat, 29 Dec 2018 01:40:37 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Sat, 29 Dec 2018 01:40:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 01:40:37 GMT
EXPOSE 8529
# Sat, 29 Dec 2018 01:40:37 GMT
USER arangodb
# Sat, 29 Dec 2018 01:40:37 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c8fcc8d45dba8c8566d26ce3266b4f2bf481a89d39aea1f09b6aae48f9221`  
		Last Modified: Sat, 29 Dec 2018 01:42:01 GMT  
		Size: 7.4 KB (7411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1041f20bfefc3d9d2a8d676d758906310616ae909d716e32a7c8e8fb204460`  
		Last Modified: Sat, 29 Dec 2018 01:42:12 GMT  
		Size: 60.7 MB (60705612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e99549084ff60fb82ffab3ca7b7555c87d23ec2319912c8665348e5588d630`  
		Last Modified: Sat, 29 Dec 2018 01:42:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1674935d7060b75311abbaeeb96c41f85c2cba433c9631d6d20ae3c1e27c3b2`  
		Last Modified: Sat, 29 Dec 2018 01:42:02 GMT  
		Size: 1.1 KB (1094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:57f4ccacaa1a826f03850564a95e7201d2fefecc5693a167f547c490741446b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:4715e351ccf66774a09d7f47b8caf2faccc3c5288db198266f9aaf5cefda0959
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113482961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96abfd2fcb287b57512973e0ff9b37e1f208fff304d8d8e615688e5d37928081`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:40:50 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 29 Dec 2018 01:40:50 GMT
ENV ARCHITECTURE=amd64
# Sat, 29 Dec 2018 01:40:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_VERSION=3.2.17
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Sat, 29 Dec 2018 01:40:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:41:01 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 29 Dec 2018 01:41:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:41:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:41:26 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 29 Dec 2018 01:41:26 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 29 Dec 2018 01:41:26 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Sat, 29 Dec 2018 01:41:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 01:41:27 GMT
EXPOSE 8529
# Sat, 29 Dec 2018 01:41:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5792f5454514f110221e95a44144b71a92d47534ca46866a439815a1e32ac19f`  
		Last Modified: Sat, 29 Dec 2018 01:42:22 GMT  
		Size: 6.6 MB (6565454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352614ee1d6a8d238130d0907856fda8b19adde729ba80705392db40858f203d`  
		Last Modified: Sat, 29 Dec 2018 01:42:16 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe891de7ccf1bd987924c59319fc861219abca1756c7a603e72221b42dfef5`  
		Last Modified: Sat, 29 Dec 2018 01:42:21 GMT  
		Size: 7.5 MB (7452873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e2151e37e633ae6e00b42e656a952c4a614723f629b9e99cc7827fdec2b6`  
		Last Modified: Sat, 29 Dec 2018 01:42:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41071a38a2506232c33b107c36bccdb5bcfe65a44773750076508bf9c053e2d3`  
		Last Modified: Sat, 29 Dec 2018 01:42:28 GMT  
		Size: 54.1 MB (54135340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af32d061d44229179dd3f74f7c594b7e34541b2bc87d6198e45c38872f5cc9`  
		Last Modified: Sat, 29 Dec 2018 01:42:17 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:57f4ccacaa1a826f03850564a95e7201d2fefecc5693a167f547c490741446b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:4715e351ccf66774a09d7f47b8caf2faccc3c5288db198266f9aaf5cefda0959
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113482961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96abfd2fcb287b57512973e0ff9b37e1f208fff304d8d8e615688e5d37928081`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:40:50 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 29 Dec 2018 01:40:50 GMT
ENV ARCHITECTURE=amd64
# Sat, 29 Dec 2018 01:40:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_VERSION=3.2.17
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Sat, 29 Dec 2018 01:40:51 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Sat, 29 Dec 2018 01:40:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:41:01 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Sat, 29 Dec 2018 01:41:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:41:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 01:41:26 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Sat, 29 Dec 2018 01:41:26 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Sat, 29 Dec 2018 01:41:26 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Sat, 29 Dec 2018 01:41:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 01:41:27 GMT
EXPOSE 8529
# Sat, 29 Dec 2018 01:41:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5792f5454514f110221e95a44144b71a92d47534ca46866a439815a1e32ac19f`  
		Last Modified: Sat, 29 Dec 2018 01:42:22 GMT  
		Size: 6.6 MB (6565454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352614ee1d6a8d238130d0907856fda8b19adde729ba80705392db40858f203d`  
		Last Modified: Sat, 29 Dec 2018 01:42:16 GMT  
		Size: 3.4 KB (3350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe891de7ccf1bd987924c59319fc861219abca1756c7a603e72221b42dfef5`  
		Last Modified: Sat, 29 Dec 2018 01:42:21 GMT  
		Size: 7.5 MB (7452873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e2151e37e633ae6e00b42e656a952c4a614723f629b9e99cc7827fdec2b6`  
		Last Modified: Sat, 29 Dec 2018 01:42:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41071a38a2506232c33b107c36bccdb5bcfe65a44773750076508bf9c053e2d3`  
		Last Modified: Sat, 29 Dec 2018 01:42:28 GMT  
		Size: 54.1 MB (54135340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af32d061d44229179dd3f74f7c594b7e34541b2bc87d6198e45c38872f5cc9`  
		Last Modified: Sat, 29 Dec 2018 01:42:17 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:90b3d700089b9b10381ce4c9694af52ec0f69cd5b0a088f4fb3caf66f0ef7447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:b06069fda12ef3d278d1181d4ed22c8166ecaf629e503d0f4d7dd7eae1d17c2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117749751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f219f4170aaf8389c8a8e9178ad34f1190b93350154642f76e782a00956e5124`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:40:50 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 29 Dec 2018 01:40:50 GMT
ENV ARCHITECTURE=amd64
# Sat, 29 Dec 2018 01:40:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 10 Jan 2019 00:19:30 GMT
ENV ARANGO_VERSION=3.3.21
# Thu, 10 Jan 2019 00:19:30 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 10 Jan 2019 00:19:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Thu, 10 Jan 2019 00:19:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Thu, 10 Jan 2019 00:19:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Thu, 10 Jan 2019 00:19:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Thu, 10 Jan 2019 00:19:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 10 Jan 2019 00:20:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Thu, 10 Jan 2019 00:20:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 10 Jan 2019 00:20:21 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 10 Jan 2019 00:20:21 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 10 Jan 2019 00:20:22 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Thu, 10 Jan 2019 00:20:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 00:20:22 GMT
EXPOSE 8529
# Thu, 10 Jan 2019 00:20:22 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba3e944a56592267ce62e248871c4b215e1cddeca286d1d3e25235abcf4613`  
		Last Modified: Thu, 10 Jan 2019 00:20:40 GMT  
		Size: 6.6 MB (6565489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c464168e38fa01f567483cef7db64159aa3b1417b1a1339a229499838538412`  
		Last Modified: Thu, 10 Jan 2019 00:20:38 GMT  
		Size: 3.3 KB (3346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3e6f038a9c6a561a5d355cda96a0d4e55abe7a597aed933680947ed0d94c0`  
		Last Modified: Thu, 10 Jan 2019 00:20:40 GMT  
		Size: 7.5 MB (7452930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7593de7cca6603229ccfc233858847b390227c6b82e09b06f84b46410115df59`  
		Last Modified: Thu, 10 Jan 2019 00:20:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd4d774fa4566f27b3d97537de1dfd2e069b1a0b1f71d69504624aaa4b37adc`  
		Last Modified: Thu, 10 Jan 2019 00:20:51 GMT  
		Size: 58.4 MB (58402041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af9fba67d51ca9abef59ac3188d26b45131b7e38726dc5552cfd63f47ba0200`  
		Last Modified: Thu, 10 Jan 2019 00:20:38 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.21`

```console
$ docker pull arangodb@sha256:90b3d700089b9b10381ce4c9694af52ec0f69cd5b0a088f4fb3caf66f0ef7447
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.21` - linux; amd64

```console
$ docker pull arangodb@sha256:b06069fda12ef3d278d1181d4ed22c8166ecaf629e503d0f4d7dd7eae1d17c2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117749751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f219f4170aaf8389c8a8e9178ad34f1190b93350154642f76e782a00956e5124`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:40:50 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Sat, 29 Dec 2018 01:40:50 GMT
ENV ARCHITECTURE=amd64
# Sat, 29 Dec 2018 01:40:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 10 Jan 2019 00:19:30 GMT
ENV ARANGO_VERSION=3.3.21
# Thu, 10 Jan 2019 00:19:30 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 10 Jan 2019 00:19:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Thu, 10 Jan 2019 00:19:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Thu, 10 Jan 2019 00:19:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Thu, 10 Jan 2019 00:19:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Thu, 10 Jan 2019 00:19:54 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 10 Jan 2019 00:20:07 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Thu, 10 Jan 2019 00:20:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 10 Jan 2019 00:20:21 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 10 Jan 2019 00:20:21 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 10 Jan 2019 00:20:22 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Thu, 10 Jan 2019 00:20:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 00:20:22 GMT
EXPOSE 8529
# Thu, 10 Jan 2019 00:20:22 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ba3e944a56592267ce62e248871c4b215e1cddeca286d1d3e25235abcf4613`  
		Last Modified: Thu, 10 Jan 2019 00:20:40 GMT  
		Size: 6.6 MB (6565489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c464168e38fa01f567483cef7db64159aa3b1417b1a1339a229499838538412`  
		Last Modified: Thu, 10 Jan 2019 00:20:38 GMT  
		Size: 3.3 KB (3346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3e6f038a9c6a561a5d355cda96a0d4e55abe7a597aed933680947ed0d94c0`  
		Last Modified: Thu, 10 Jan 2019 00:20:40 GMT  
		Size: 7.5 MB (7452930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7593de7cca6603229ccfc233858847b390227c6b82e09b06f84b46410115df59`  
		Last Modified: Thu, 10 Jan 2019 00:20:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd4d774fa4566f27b3d97537de1dfd2e069b1a0b1f71d69504624aaa4b37adc`  
		Last Modified: Thu, 10 Jan 2019 00:20:51 GMT  
		Size: 58.4 MB (58402041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af9fba67d51ca9abef59ac3188d26b45131b7e38726dc5552cfd63f47ba0200`  
		Last Modified: Thu, 10 Jan 2019 00:20:38 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:7462b2d5221d1e5d568e93d2af801da62a93110f2e1d1920854e22f8930f9fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:e1a6a81012726f98af37e057231d176cb9d47693dc6f948f6be8496800102dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101531933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3563c12baa03c063ce806d4c9a3d0fc421e3578f03af7fcd897295570de2bb04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:48:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_VERSION=3.4.1
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.1-1_amd64.deb
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb.asc
# Wed, 26 Dec 2018 23:19:46 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 26 Dec 2018 23:19:50 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 26 Dec 2018 23:19:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Dec 2018 23:19:59 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Wed, 26 Dec 2018 23:19:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 26 Dec 2018 23:19:59 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Wed, 26 Dec 2018 23:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 23:20:00 GMT
EXPOSE 8529
# Wed, 26 Dec 2018 23:20:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff444af98a49d901b747c21219548ab8655cff59779eae570627ac5a8884ab59`  
		Last Modified: Wed, 26 Dec 2018 23:20:22 GMT  
		Size: 30.0 MB (29963607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6517390a905bfe0a1a79b57fc97107fea97fb4f0b1b3e767306d02757df8ac`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d997e0eb579f92127b846fc51df7a41204d78791255d6180eb227edd09c9efa`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0673aee9c1d4bbaae55952d96d175765b7f0c0f69bb5b582f70b97b44a09e5b`  
		Last Modified: Wed, 26 Dec 2018 23:20:27 GMT  
		Size: 69.4 MB (69355812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c82b5de1b9558eb0e4ec87a72c3267e71335191f5f98c10189b2fe6f601e484`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 2.0 KB (1968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.1`

```console
$ docker pull arangodb@sha256:7462b2d5221d1e5d568e93d2af801da62a93110f2e1d1920854e22f8930f9fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4.1` - linux; amd64

```console
$ docker pull arangodb@sha256:e1a6a81012726f98af37e057231d176cb9d47693dc6f948f6be8496800102dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101531933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3563c12baa03c063ce806d4c9a3d0fc421e3578f03af7fcd897295570de2bb04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:48:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_VERSION=3.4.1
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.1-1_amd64.deb
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb.asc
# Wed, 26 Dec 2018 23:19:46 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 26 Dec 2018 23:19:50 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 26 Dec 2018 23:19:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Dec 2018 23:19:59 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Wed, 26 Dec 2018 23:19:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 26 Dec 2018 23:19:59 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Wed, 26 Dec 2018 23:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 23:20:00 GMT
EXPOSE 8529
# Wed, 26 Dec 2018 23:20:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff444af98a49d901b747c21219548ab8655cff59779eae570627ac5a8884ab59`  
		Last Modified: Wed, 26 Dec 2018 23:20:22 GMT  
		Size: 30.0 MB (29963607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6517390a905bfe0a1a79b57fc97107fea97fb4f0b1b3e767306d02757df8ac`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d997e0eb579f92127b846fc51df7a41204d78791255d6180eb227edd09c9efa`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0673aee9c1d4bbaae55952d96d175765b7f0c0f69bb5b582f70b97b44a09e5b`  
		Last Modified: Wed, 26 Dec 2018 23:20:27 GMT  
		Size: 69.4 MB (69355812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c82b5de1b9558eb0e4ec87a72c3267e71335191f5f98c10189b2fe6f601e484`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 2.0 KB (1968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:7462b2d5221d1e5d568e93d2af801da62a93110f2e1d1920854e22f8930f9fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:e1a6a81012726f98af37e057231d176cb9d47693dc6f948f6be8496800102dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101531933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3563c12baa03c063ce806d4c9a3d0fc421e3578f03af7fcd897295570de2bb04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:48:13 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_VERSION=3.4.1
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.1-1_amd64.deb
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb
# Wed, 26 Dec 2018 23:19:29 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb.asc
# Wed, 26 Dec 2018 23:19:46 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 26 Dec 2018 23:19:50 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 26 Dec 2018 23:19:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Dec 2018 23:19:59 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Wed, 26 Dec 2018 23:19:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 26 Dec 2018 23:19:59 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Wed, 26 Dec 2018 23:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Dec 2018 23:20:00 GMT
EXPOSE 8529
# Wed, 26 Dec 2018 23:20:00 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff444af98a49d901b747c21219548ab8655cff59779eae570627ac5a8884ab59`  
		Last Modified: Wed, 26 Dec 2018 23:20:22 GMT  
		Size: 30.0 MB (29963607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6517390a905bfe0a1a79b57fc97107fea97fb4f0b1b3e767306d02757df8ac`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d997e0eb579f92127b846fc51df7a41204d78791255d6180eb227edd09c9efa`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0673aee9c1d4bbaae55952d96d175765b7f0c0f69bb5b582f70b97b44a09e5b`  
		Last Modified: Wed, 26 Dec 2018 23:20:27 GMT  
		Size: 69.4 MB (69355812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c82b5de1b9558eb0e4ec87a72c3267e71335191f5f98c10189b2fe6f601e484`  
		Last Modified: Wed, 26 Dec 2018 23:20:13 GMT  
		Size: 2.0 KB (1968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

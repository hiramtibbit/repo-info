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
$ docker pull arangodb@sha256:bfdaa5b52fd5da8af79c0e5732a295791d0d95f099532e276475626a96d5142a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:0d8a0a0fba0ef2ed85b3a2bb97e64f4d9f6b1d21bba0f0d5d101719ae2406e7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115096913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1431be3920063820610c16f3fae780daf73634324bfe09c729b933142e4ed39c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:53:47 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 05 Mar 2019 03:53:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARCHITECTURE=amd64
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 05 Mar 2019 03:53:49 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 05 Mar 2019 03:56:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 05 Mar 2019 03:56:17 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 05 Mar 2019 03:56:17 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 05 Mar 2019 03:56:17 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Tue, 05 Mar 2019 03:56:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:17 GMT
EXPOSE 8529
# Tue, 05 Mar 2019 03:56:18 GMT
USER arangodb
# Tue, 05 Mar 2019 03:56:18 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42a6e54ca0686d8ae7ee4d56f7d6d1dac3d2661ec15906750a4bdf88c3989d9`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5ff325faf296bf931b3a6d4b54cafdfd4129d701324d9e18e0741fe4772f4`  
		Last Modified: Tue, 05 Mar 2019 03:58:19 GMT  
		Size: 60.7 MB (60706585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1429cab84efa55bd4a49eadbddcc15a89cdcd3b1188b27e91d49becc36cecf81`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4168c8a10d4176e72f92d55277f4ea49afeef9afd11fc7fa064dd304e062fd3a`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:bfdaa5b52fd5da8af79c0e5732a295791d0d95f099532e276475626a96d5142a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:0d8a0a0fba0ef2ed85b3a2bb97e64f4d9f6b1d21bba0f0d5d101719ae2406e7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115096913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1431be3920063820610c16f3fae780daf73634324bfe09c729b933142e4ed39c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:53:47 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 05 Mar 2019 03:53:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARCHITECTURE=amd64
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 05 Mar 2019 03:53:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 05 Mar 2019 03:53:49 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 05 Mar 2019 03:56:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 05 Mar 2019 03:56:17 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 05 Mar 2019 03:56:17 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 05 Mar 2019 03:56:17 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Tue, 05 Mar 2019 03:56:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:56:17 GMT
EXPOSE 8529
# Tue, 05 Mar 2019 03:56:18 GMT
USER arangodb
# Tue, 05 Mar 2019 03:56:18 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42a6e54ca0686d8ae7ee4d56f7d6d1dac3d2661ec15906750a4bdf88c3989d9`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5ff325faf296bf931b3a6d4b54cafdfd4129d701324d9e18e0741fe4772f4`  
		Last Modified: Tue, 05 Mar 2019 03:58:19 GMT  
		Size: 60.7 MB (60706585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1429cab84efa55bd4a49eadbddcc15a89cdcd3b1188b27e91d49becc36cecf81`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4168c8a10d4176e72f92d55277f4ea49afeef9afd11fc7fa064dd304e062fd3a`  
		Last Modified: Tue, 05 Mar 2019 03:58:08 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:405dce1f92dc08cde95e042c8058de5dc838439d54cc15c3645ba2a52a0c8a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:9fa8a405fc33e6a233bbb95b267eedeb3ae580aa544171654a793c35359ca7a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113502995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d01d15b609527766c74005e3c3f3afa398207062755cf8d67c483bf1e40d866`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:56:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARCHITECTURE=amd64
# Tue, 05 Mar 2019 03:56:32 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARANGO_VERSION=3.2.17
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Tue, 05 Mar 2019 03:56:33 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Tue, 05 Mar 2019 03:56:33 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Tue, 05 Mar 2019 03:56:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:56:43 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 05 Mar 2019 03:56:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:56:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:57:07 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 05 Mar 2019 03:57:07 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 05 Mar 2019 03:57:08 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:57:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:57:08 GMT
EXPOSE 8529
# Tue, 05 Mar 2019 03:57:08 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8b96afe51fe42bf159f0d65ae308082bff867ab9bbf325c3bc4832792bd588`  
		Last Modified: Tue, 05 Mar 2019 03:58:25 GMT  
		Size: 6.6 MB (6565787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be04cf93627ab90a3d69fc21a52fd958d6494587b23b820d944f95823a91be92`  
		Last Modified: Tue, 05 Mar 2019 03:58:24 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d0cbe62088a4bd45c73531ba3e5b3e9db79bdf059868804543405cb7b1f02e`  
		Last Modified: Tue, 05 Mar 2019 03:58:25 GMT  
		Size: 7.5 MB (7453734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a711c86da8008cac67afb7d5b874292d03362ee967a4aa6ad7e153e829c6a12`  
		Last Modified: Tue, 05 Mar 2019 03:58:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffd6210f352c81155ac29091a6c62ec7515b7d54621cfc280586b6238e4d347`  
		Last Modified: Tue, 05 Mar 2019 03:58:33 GMT  
		Size: 54.1 MB (54135445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52f2380b51af714125567ed9e6db6239a81cdaeeb430e5341112e4b0da84e7d`  
		Last Modified: Tue, 05 Mar 2019 03:58:23 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:405dce1f92dc08cde95e042c8058de5dc838439d54cc15c3645ba2a52a0c8a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:9fa8a405fc33e6a233bbb95b267eedeb3ae580aa544171654a793c35359ca7a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113502995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d01d15b609527766c74005e3c3f3afa398207062755cf8d67c483bf1e40d866`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:56:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARCHITECTURE=amd64
# Tue, 05 Mar 2019 03:56:32 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARANGO_VERSION=3.2.17
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Tue, 05 Mar 2019 03:56:33 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Tue, 05 Mar 2019 03:56:33 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Tue, 05 Mar 2019 03:56:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:56:43 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 05 Mar 2019 03:56:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:56:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:57:07 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 05 Mar 2019 03:57:07 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 05 Mar 2019 03:57:08 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:57:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:57:08 GMT
EXPOSE 8529
# Tue, 05 Mar 2019 03:57:08 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8b96afe51fe42bf159f0d65ae308082bff867ab9bbf325c3bc4832792bd588`  
		Last Modified: Tue, 05 Mar 2019 03:58:25 GMT  
		Size: 6.6 MB (6565787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be04cf93627ab90a3d69fc21a52fd958d6494587b23b820d944f95823a91be92`  
		Last Modified: Tue, 05 Mar 2019 03:58:24 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d0cbe62088a4bd45c73531ba3e5b3e9db79bdf059868804543405cb7b1f02e`  
		Last Modified: Tue, 05 Mar 2019 03:58:25 GMT  
		Size: 7.5 MB (7453734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a711c86da8008cac67afb7d5b874292d03362ee967a4aa6ad7e153e829c6a12`  
		Last Modified: Tue, 05 Mar 2019 03:58:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffd6210f352c81155ac29091a6c62ec7515b7d54621cfc280586b6238e4d347`  
		Last Modified: Tue, 05 Mar 2019 03:58:33 GMT  
		Size: 54.1 MB (54135445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52f2380b51af714125567ed9e6db6239a81cdaeeb430e5341112e4b0da84e7d`  
		Last Modified: Tue, 05 Mar 2019 03:58:23 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:ef38d88e031fb98dc46e176f2bf8f9e4b16d9f9f5cc9b812f9d00163aab5e60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:919970ebb0224de1cff70e845163963aa536cbe9f5e7b6d4591c8588f967ba93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117769322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035c63a99c073cbd867f9bdb740370aeeb1b21436a447c76554cfe336d2e2e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:56:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARCHITECTURE=amd64
# Tue, 05 Mar 2019 03:56:32 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 05 Mar 2019 03:57:15 GMT
ENV ARANGO_VERSION=3.3.21
# Tue, 05 Mar 2019 03:57:15 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 05 Mar 2019 03:57:16 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Tue, 05 Mar 2019 03:57:16 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Tue, 05 Mar 2019 03:57:16 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Tue, 05 Mar 2019 03:57:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:57:26 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 05 Mar 2019 03:57:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:57:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:57:50 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 05 Mar 2019 03:57:50 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 05 Mar 2019 03:57:50 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:57:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:57:51 GMT
EXPOSE 8529
# Tue, 05 Mar 2019 03:57:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a0e4bbb7cc2b35fbb52e2eb5a6399878ee5795d0563a9752a40460c1ba61d0`  
		Last Modified: Tue, 05 Mar 2019 03:58:39 GMT  
		Size: 6.6 MB (6565702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b756c3ea1ba204ba8eac7b899eff854987b102b34514b7fd0c0d8dc38aac75b0`  
		Last Modified: Tue, 05 Mar 2019 03:58:38 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcc38b4ca7c00b38923f3bf1d9d66a5ca84bc91f601c16f059ca182a8f966a7`  
		Last Modified: Tue, 05 Mar 2019 03:58:38 GMT  
		Size: 7.5 MB (7453721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d3d60b01b4acbd7629932e0cac0e4f49802b777abf7fe17d70b40681baa89`  
		Last Modified: Tue, 05 Mar 2019 03:58:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ec7e7d57ea81c5fa5eb0a13412e77c6ee4ee1d039d38311ba9d0a68449ba97`  
		Last Modified: Tue, 05 Mar 2019 03:58:49 GMT  
		Size: 58.4 MB (58401872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f799e70e7109428ca6e9026b83b4188baf4481d9e9e4789384f08e10dc2188c`  
		Last Modified: Tue, 05 Mar 2019 03:58:37 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.21`

```console
$ docker pull arangodb@sha256:ef38d88e031fb98dc46e176f2bf8f9e4b16d9f9f5cc9b812f9d00163aab5e60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.21` - linux; amd64

```console
$ docker pull arangodb@sha256:919970ebb0224de1cff70e845163963aa536cbe9f5e7b6d4591c8588f967ba93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117769322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3035c63a99c073cbd867f9bdb740370aeeb1b21436a447c76554cfe336d2e2e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:56:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 05 Mar 2019 03:56:32 GMT
ENV ARCHITECTURE=amd64
# Tue, 05 Mar 2019 03:56:32 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 05 Mar 2019 03:57:15 GMT
ENV ARANGO_VERSION=3.3.21
# Tue, 05 Mar 2019 03:57:15 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 05 Mar 2019 03:57:16 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Tue, 05 Mar 2019 03:57:16 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Tue, 05 Mar 2019 03:57:16 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Tue, 05 Mar 2019 03:57:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:57:26 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 05 Mar 2019 03:57:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:57:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:57:50 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 05 Mar 2019 03:57:50 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 05 Mar 2019 03:57:50 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:57:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:57:51 GMT
EXPOSE 8529
# Tue, 05 Mar 2019 03:57:51 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a0e4bbb7cc2b35fbb52e2eb5a6399878ee5795d0563a9752a40460c1ba61d0`  
		Last Modified: Tue, 05 Mar 2019 03:58:39 GMT  
		Size: 6.6 MB (6565702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b756c3ea1ba204ba8eac7b899eff854987b102b34514b7fd0c0d8dc38aac75b0`  
		Last Modified: Tue, 05 Mar 2019 03:58:38 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcc38b4ca7c00b38923f3bf1d9d66a5ca84bc91f601c16f059ca182a8f966a7`  
		Last Modified: Tue, 05 Mar 2019 03:58:38 GMT  
		Size: 7.5 MB (7453721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d3d60b01b4acbd7629932e0cac0e4f49802b777abf7fe17d70b40681baa89`  
		Last Modified: Tue, 05 Mar 2019 03:58:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ec7e7d57ea81c5fa5eb0a13412e77c6ee4ee1d039d38311ba9d0a68449ba97`  
		Last Modified: Tue, 05 Mar 2019 03:58:49 GMT  
		Size: 58.4 MB (58401872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f799e70e7109428ca6e9026b83b4188baf4481d9e9e4789384f08e10dc2188c`  
		Last Modified: Tue, 05 Mar 2019 03:58:37 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:27e621241672495cadf61452c865b8feca37d46b3ee81dd3c1a6ba48204e8135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:c056a2baceddec8ec0630bbf6fb6e0b7967773dc46346d3deb53d8016fb3d0dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1c1669aeaf7e58a3f6b536d74fb43780c753cdaeca5e2649b990a25d6fa426`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 08 Mar 2019 03:24:25 GMT
ENV ARANGO_VERSION=3.4.3
# Fri, 08 Mar 2019 03:24:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.3-1_amd64.deb
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.3-1_amd64.deb
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.3-1_amd64.deb.asc
# Fri, 08 Mar 2019 03:24:42 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 08 Mar 2019 03:24:46 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 08 Mar 2019 03:24:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 03:24:54 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Fri, 08 Mar 2019 03:24:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 08 Mar 2019 03:24:55 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Fri, 08 Mar 2019 03:24:55 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 08 Mar 2019 03:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 03:24:55 GMT
EXPOSE 8529
# Fri, 08 Mar 2019 03:24:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acf802cf278bde326cfbeb957e1a8fa10b84a9a017b30ff059a07101219329f`  
		Last Modified: Fri, 08 Mar 2019 03:25:21 GMT  
		Size: 30.0 MB (30017334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347a5f3ddc33b5fe5ee6b247854cec9f33fbebff95c587dd7c6ae98c9700643`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeb28796ae58dfd768ec7b5d4476c59c3cc5acbbf36da2cb915d2db2d6e1b9a`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236029a90ca9424b099b939da7768c2fee638b46c564ea750615fdae80ea50b`  
		Last Modified: Fri, 08 Mar 2019 03:25:23 GMT  
		Size: 70.9 MB (70900596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9c53e47d901fdd51bbd19bf61143ea0888c6f3b9b22c30b85f4bc2db5301d`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7681e9043ddcbceb01e13c653609f2b3723acd01ec70f3de1ffc84d019796dc7`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.4`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:27e621241672495cadf61452c865b8feca37d46b3ee81dd3c1a6ba48204e8135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:c056a2baceddec8ec0630bbf6fb6e0b7967773dc46346d3deb53d8016fb3d0dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1c1669aeaf7e58a3f6b536d74fb43780c753cdaeca5e2649b990a25d6fa426`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 08 Mar 2019 03:24:25 GMT
ENV ARANGO_VERSION=3.4.3
# Fri, 08 Mar 2019 03:24:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.3-1_amd64.deb
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.3-1_amd64.deb
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.3-1_amd64.deb.asc
# Fri, 08 Mar 2019 03:24:42 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 08 Mar 2019 03:24:46 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 08 Mar 2019 03:24:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 03:24:54 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Fri, 08 Mar 2019 03:24:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 08 Mar 2019 03:24:55 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Fri, 08 Mar 2019 03:24:55 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 08 Mar 2019 03:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 03:24:55 GMT
EXPOSE 8529
# Fri, 08 Mar 2019 03:24:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acf802cf278bde326cfbeb957e1a8fa10b84a9a017b30ff059a07101219329f`  
		Last Modified: Fri, 08 Mar 2019 03:25:21 GMT  
		Size: 30.0 MB (30017334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347a5f3ddc33b5fe5ee6b247854cec9f33fbebff95c587dd7c6ae98c9700643`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeb28796ae58dfd768ec7b5d4476c59c3cc5acbbf36da2cb915d2db2d6e1b9a`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236029a90ca9424b099b939da7768c2fee638b46c564ea750615fdae80ea50b`  
		Last Modified: Fri, 08 Mar 2019 03:25:23 GMT  
		Size: 70.9 MB (70900596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9c53e47d901fdd51bbd19bf61143ea0888c6f3b9b22c30b85f4bc2db5301d`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7681e9043ddcbceb01e13c653609f2b3723acd01ec70f3de1ffc84d019796dc7`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

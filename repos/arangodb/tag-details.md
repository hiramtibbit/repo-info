<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.17`](#arangodb3217)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.21`](#arangodb3321)
-	[`arangodb:3.4`](#arangodb34)
-	[`arangodb:3.4.2`](#arangodb342)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:11f270d7ee9987f0d756c7d768d12b02036c4dbd24f851097250c1c531eefaf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:ca833e3202629ec82d384745fb0f120b5ded52569fe6f3734523fc459de81fd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115100187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821a381611c862566beff4a3c3c02cfff66087d13b8f69118361be88d0504d3f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:15:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 22 Jan 2019 20:15:21 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARCHITECTURE=amd64
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 22 Jan 2019 20:15:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 22 Jan 2019 20:15:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 22 Jan 2019 20:17:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 22 Jan 2019 20:17:51 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 22 Jan 2019 20:17:51 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 22 Jan 2019 20:17:52 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Tue, 22 Jan 2019 20:17:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 20:17:52 GMT
EXPOSE 8529
# Tue, 22 Jan 2019 20:17:53 GMT
USER arangodb
# Tue, 22 Jan 2019 20:17:53 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814041267b455c4d09b92a412c8c9aba95ea6caad239d32e53ea5a92ca323533`  
		Last Modified: Tue, 22 Jan 2019 20:19:19 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf47a476ae39593686c2077d3317024d5d676bb503b37ae4a199893eeabcf69`  
		Last Modified: Tue, 22 Jan 2019 20:19:30 GMT  
		Size: 60.7 MB (60705751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3c2fd3cd7cd78477f603a7b95704a6c5b3434df315ad95e8dc8281b9ffc75`  
		Last Modified: Tue, 22 Jan 2019 20:19:19 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78983a12d3c9ea3364e76d2b20ea3000d25ea12a3fbc216b71b051b74649a81`  
		Last Modified: Tue, 22 Jan 2019 20:19:19 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:11f270d7ee9987f0d756c7d768d12b02036c4dbd24f851097250c1c531eefaf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:ca833e3202629ec82d384745fb0f120b5ded52569fe6f3734523fc459de81fd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115100187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821a381611c862566beff4a3c3c02cfff66087d13b8f69118361be88d0504d3f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:15:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 22 Jan 2019 20:15:21 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARCHITECTURE=amd64
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 22 Jan 2019 20:15:21 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 22 Jan 2019 20:15:22 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 22 Jan 2019 20:15:22 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 22 Jan 2019 20:17:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 22 Jan 2019 20:17:51 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 22 Jan 2019 20:17:51 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 22 Jan 2019 20:17:52 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Tue, 22 Jan 2019 20:17:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 20:17:52 GMT
EXPOSE 8529
# Tue, 22 Jan 2019 20:17:53 GMT
USER arangodb
# Tue, 22 Jan 2019 20:17:53 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814041267b455c4d09b92a412c8c9aba95ea6caad239d32e53ea5a92ca323533`  
		Last Modified: Tue, 22 Jan 2019 20:19:19 GMT  
		Size: 7.4 KB (7409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf47a476ae39593686c2077d3317024d5d676bb503b37ae4a199893eeabcf69`  
		Last Modified: Tue, 22 Jan 2019 20:19:30 GMT  
		Size: 60.7 MB (60705751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3c2fd3cd7cd78477f603a7b95704a6c5b3434df315ad95e8dc8281b9ffc75`  
		Last Modified: Tue, 22 Jan 2019 20:19:19 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78983a12d3c9ea3364e76d2b20ea3000d25ea12a3fbc216b71b051b74649a81`  
		Last Modified: Tue, 22 Jan 2019 20:19:19 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:e59ef7b9bb2f213053019c1b0276de7ce1a544b8fbd499d670caf0488272701c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:f31c7d2a208ea34029584e47b4debf83d709ddfcce1f9eb77b45d5ac630c2913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113504480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50af577d9a4ff1fe755b07da4560f222389e3ebede720e7b7f6838cf79792acb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:18:04 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 22 Jan 2019 20:18:05 GMT
ENV ARCHITECTURE=amd64
# Tue, 22 Jan 2019 20:18:05 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 30 Jan 2019 23:16:07 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 30 Jan 2019 23:16:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 30 Jan 2019 23:16:25 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 30 Jan 2019 23:16:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 30 Jan 2019 23:16:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 30 Jan 2019 23:17:09 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 30 Jan 2019 23:17:10 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 30 Jan 2019 23:17:10 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:17:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:17:10 GMT
EXPOSE 8529
# Wed, 30 Jan 2019 23:17:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c649ccb7778c27ed5ea5fed18c1846cad9c39b0a1edfe5ea29b7cab9877f86`  
		Last Modified: Wed, 30 Jan 2019 23:18:33 GMT  
		Size: 6.6 MB (6565610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54af31e358f998708f1661fb82507ed716f9a6d5affca06cf9d2d1153ce26b7`  
		Last Modified: Wed, 30 Jan 2019 23:18:30 GMT  
		Size: 3.3 KB (3349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f395df40a5b72ec969d06a2ccd3cb08cf2d1339d8ff9674667e5732246819852`  
		Last Modified: Wed, 30 Jan 2019 23:18:33 GMT  
		Size: 7.5 MB (7453194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651fd848494a02790f991c80af9b085586de54ac095d0617d38e192dbf3587c8`  
		Last Modified: Wed, 30 Jan 2019 23:18:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd4247ff7c8174f9b36039060346142285eb085813348caf427575a5d06abdd`  
		Last Modified: Wed, 30 Jan 2019 23:18:46 GMT  
		Size: 54.1 MB (54135426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64eccf756579a243d7138133707d0ac12853173fe82d61734d68dfe064a949f`  
		Last Modified: Wed, 30 Jan 2019 23:18:31 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:e59ef7b9bb2f213053019c1b0276de7ce1a544b8fbd499d670caf0488272701c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:f31c7d2a208ea34029584e47b4debf83d709ddfcce1f9eb77b45d5ac630c2913
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113504480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50af577d9a4ff1fe755b07da4560f222389e3ebede720e7b7f6838cf79792acb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:18:04 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 22 Jan 2019 20:18:05 GMT
ENV ARCHITECTURE=amd64
# Tue, 22 Jan 2019 20:18:05 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 30 Jan 2019 23:16:07 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 30 Jan 2019 23:16:08 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 30 Jan 2019 23:16:22 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 30 Jan 2019 23:16:25 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 30 Jan 2019 23:16:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 30 Jan 2019 23:16:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 30 Jan 2019 23:17:09 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 30 Jan 2019 23:17:10 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 30 Jan 2019 23:17:10 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:17:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:17:10 GMT
EXPOSE 8529
# Wed, 30 Jan 2019 23:17:11 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c649ccb7778c27ed5ea5fed18c1846cad9c39b0a1edfe5ea29b7cab9877f86`  
		Last Modified: Wed, 30 Jan 2019 23:18:33 GMT  
		Size: 6.6 MB (6565610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54af31e358f998708f1661fb82507ed716f9a6d5affca06cf9d2d1153ce26b7`  
		Last Modified: Wed, 30 Jan 2019 23:18:30 GMT  
		Size: 3.3 KB (3349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f395df40a5b72ec969d06a2ccd3cb08cf2d1339d8ff9674667e5732246819852`  
		Last Modified: Wed, 30 Jan 2019 23:18:33 GMT  
		Size: 7.5 MB (7453194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651fd848494a02790f991c80af9b085586de54ac095d0617d38e192dbf3587c8`  
		Last Modified: Wed, 30 Jan 2019 23:18:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd4247ff7c8174f9b36039060346142285eb085813348caf427575a5d06abdd`  
		Last Modified: Wed, 30 Jan 2019 23:18:46 GMT  
		Size: 54.1 MB (54135426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64eccf756579a243d7138133707d0ac12853173fe82d61734d68dfe064a949f`  
		Last Modified: Wed, 30 Jan 2019 23:18:31 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:aff4c134c2dfb84c69ab3d5a80401f7c4119860f96f704c4b11f856ddb8dd08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:675a3a78f967dafb8881d9590ce283e8b447e60989e1ef6e7783cc2fb0fe9836
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117770464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91aa3e3c775d84a60fea4a58b56409c91267b76ed6ac8cdd30a763f101d82a88`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:18:04 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 22 Jan 2019 20:18:05 GMT
ENV ARCHITECTURE=amd64
# Tue, 22 Jan 2019 20:18:05 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 22 Jan 2019 20:18:25 GMT
ENV ARANGO_VERSION=3.3.21
# Tue, 22 Jan 2019 20:18:26 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 22 Jan 2019 20:18:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Tue, 22 Jan 2019 20:18:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Tue, 22 Jan 2019 20:18:27 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Tue, 22 Jan 2019 20:18:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:18:37 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 22 Jan 2019 20:18:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:18:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 22 Jan 2019 20:19:03 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 22 Jan 2019 20:19:04 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 22 Jan 2019 20:19:04 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 22 Jan 2019 20:19:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 20:19:04 GMT
EXPOSE 8529
# Tue, 22 Jan 2019 20:19:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982a26490ccaa9feb14402bee0a32b37bb61ec128f24bb7de2829d8cc43cb350`  
		Last Modified: Tue, 22 Jan 2019 20:19:39 GMT  
		Size: 6.6 MB (6565512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a283fa00ea4ff311cdeb6976c657837d991838d7eaae667566a5150963d38212`  
		Last Modified: Tue, 22 Jan 2019 20:19:37 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7541b508847563b5a3211033f3d26421d1e97a1f42d43e66404b674fedfb70c`  
		Last Modified: Tue, 22 Jan 2019 20:19:40 GMT  
		Size: 7.5 MB (7452907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb87048374418e90cb6940303be85dfe1d14f0016e80d11770ef134172eccbe5`  
		Last Modified: Tue, 22 Jan 2019 20:19:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6974f22efe2365482c5a1adcb4e7d2995b309e90871852499ed0d2ef99d008cd`  
		Last Modified: Tue, 22 Jan 2019 20:19:49 GMT  
		Size: 58.4 MB (58401795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18038c90b22f88dc7f296d29a6fe163a9e70933901df8298bfd199eab2c1f8`  
		Last Modified: Tue, 22 Jan 2019 20:19:37 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.21`

```console
$ docker pull arangodb@sha256:aff4c134c2dfb84c69ab3d5a80401f7c4119860f96f704c4b11f856ddb8dd08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.21` - linux; amd64

```console
$ docker pull arangodb@sha256:675a3a78f967dafb8881d9590ce283e8b447e60989e1ef6e7783cc2fb0fe9836
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117770464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91aa3e3c775d84a60fea4a58b56409c91267b76ed6ac8cdd30a763f101d82a88`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:18:04 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 22 Jan 2019 20:18:05 GMT
ENV ARCHITECTURE=amd64
# Tue, 22 Jan 2019 20:18:05 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 22 Jan 2019 20:18:25 GMT
ENV ARANGO_VERSION=3.3.21
# Tue, 22 Jan 2019 20:18:26 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 22 Jan 2019 20:18:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Tue, 22 Jan 2019 20:18:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Tue, 22 Jan 2019 20:18:27 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Tue, 22 Jan 2019 20:18:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:18:37 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 22 Jan 2019 20:18:48 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:18:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 22 Jan 2019 20:19:03 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 22 Jan 2019 20:19:04 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 22 Jan 2019 20:19:04 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Tue, 22 Jan 2019 20:19:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 20:19:04 GMT
EXPOSE 8529
# Tue, 22 Jan 2019 20:19:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982a26490ccaa9feb14402bee0a32b37bb61ec128f24bb7de2829d8cc43cb350`  
		Last Modified: Tue, 22 Jan 2019 20:19:39 GMT  
		Size: 6.6 MB (6565512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a283fa00ea4ff311cdeb6976c657837d991838d7eaae667566a5150963d38212`  
		Last Modified: Tue, 22 Jan 2019 20:19:37 GMT  
		Size: 3.3 KB (3348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7541b508847563b5a3211033f3d26421d1e97a1f42d43e66404b674fedfb70c`  
		Last Modified: Tue, 22 Jan 2019 20:19:40 GMT  
		Size: 7.5 MB (7452907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb87048374418e90cb6940303be85dfe1d14f0016e80d11770ef134172eccbe5`  
		Last Modified: Tue, 22 Jan 2019 20:19:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6974f22efe2365482c5a1adcb4e7d2995b309e90871852499ed0d2ef99d008cd`  
		Last Modified: Tue, 22 Jan 2019 20:19:49 GMT  
		Size: 58.4 MB (58401795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18038c90b22f88dc7f296d29a6fe163a9e70933901df8298bfd199eab2c1f8`  
		Last Modified: Tue, 22 Jan 2019 20:19:37 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:3194583da9b8186b964de735adeaed35353ba2c1796d1a63c9d2dfd156af3734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:31684be814f8122d254422922dfa2387532b182517df40ed97a3a92e1b2290d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101568315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0186a05a317fdd737d3109b3f23ed6604ba8befe34b81bce84a62efb56b941d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:17:26 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 30 Jan 2019 23:17:26 GMT
ENV ARANGO_VERSION=3.4.1
# Wed, 30 Jan 2019 23:17:26 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 30 Jan 2019 23:17:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.1-1_amd64.deb
# Wed, 30 Jan 2019 23:17:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb
# Wed, 30 Jan 2019 23:17:27 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb.asc
# Wed, 30 Jan 2019 23:17:54 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 30 Jan 2019 23:17:58 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 30 Jan 2019 23:17:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 30 Jan 2019 23:18:11 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Wed, 30 Jan 2019 23:18:12 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 30 Jan 2019 23:18:12 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:18:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:18:13 GMT
EXPOSE 8529
# Wed, 30 Jan 2019 23:18:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51537f5db9d4ab5216cc2965fb2356a89b4124152b669ec2858feba9f62248fe`  
		Last Modified: Wed, 30 Jan 2019 23:19:02 GMT  
		Size: 30.0 MB (29999867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c34cdff7d703495b63facea84f36e08a6734040c9cc5ed95dc8ad9cfaf76ac`  
		Last Modified: Wed, 30 Jan 2019 23:18:52 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfdf8cc12ad6f81299bea0d2f65e5e6b04aa07489b891c3931cb35c44f7d824`  
		Last Modified: Wed, 30 Jan 2019 23:18:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8269b5e74a043ba645540646091c88da2395257e0995a99ddd246efd4ff272`  
		Last Modified: Wed, 30 Jan 2019 23:19:10 GMT  
		Size: 69.4 MB (69355925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb48c6ac3070b1369f923d1bccbf82c4c0d018f66d99d236ef5913da49170b7`  
		Last Modified: Wed, 30 Jan 2019 23:18:51 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.2`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:3194583da9b8186b964de735adeaed35353ba2c1796d1a63c9d2dfd156af3734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:31684be814f8122d254422922dfa2387532b182517df40ed97a3a92e1b2290d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101568315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0186a05a317fdd737d3109b3f23ed6604ba8befe34b81bce84a62efb56b941d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:17:26 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 30 Jan 2019 23:17:26 GMT
ENV ARANGO_VERSION=3.4.1
# Wed, 30 Jan 2019 23:17:26 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 30 Jan 2019 23:17:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.1-1_amd64.deb
# Wed, 30 Jan 2019 23:17:27 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb
# Wed, 30 Jan 2019 23:17:27 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.1-1_amd64.deb.asc
# Wed, 30 Jan 2019 23:17:54 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 30 Jan 2019 23:17:58 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 30 Jan 2019 23:17:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 30 Jan 2019 23:18:11 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Wed, 30 Jan 2019 23:18:12 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 30 Jan 2019 23:18:12 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:18:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:18:13 GMT
EXPOSE 8529
# Wed, 30 Jan 2019 23:18:13 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51537f5db9d4ab5216cc2965fb2356a89b4124152b669ec2858feba9f62248fe`  
		Last Modified: Wed, 30 Jan 2019 23:19:02 GMT  
		Size: 30.0 MB (29999867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c34cdff7d703495b63facea84f36e08a6734040c9cc5ed95dc8ad9cfaf76ac`  
		Last Modified: Wed, 30 Jan 2019 23:18:52 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfdf8cc12ad6f81299bea0d2f65e5e6b04aa07489b891c3931cb35c44f7d824`  
		Last Modified: Wed, 30 Jan 2019 23:18:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8269b5e74a043ba645540646091c88da2395257e0995a99ddd246efd4ff272`  
		Last Modified: Wed, 30 Jan 2019 23:19:10 GMT  
		Size: 69.4 MB (69355925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb48c6ac3070b1369f923d1bccbf82c4c0d018f66d99d236ef5913da49170b7`  
		Last Modified: Wed, 30 Jan 2019 23:18:51 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.16`](#arangodb3216)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.16`](#arangodb3316)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:8f6ced47146fcbd4e6285fe5259ef7d3971d425fd268f996d702cfb3b11b2a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:1892674cbde951d1a83e8a39506b8316652aa0a92493515a2fa08ad37afc1925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acbd15bff1e6941cce0a5e31ed2b7fd78bc7ad714b692a04a3f4ed94e6bfd9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:07 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 04 Sep 2018 22:57:08 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:08 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 04 Sep 2018 22:57:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 04 Sep 2018 22:57:09 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 04 Sep 2018 22:57:09 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 04 Sep 2018 22:57:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 04 Sep 2018 22:57:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 04 Sep 2018 22:57:47 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 04 Sep 2018 22:57:47 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 04 Sep 2018 22:57:47 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 04 Sep 2018 22:57:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 22:57:48 GMT
EXPOSE 8529/tcp
# Tue, 04 Sep 2018 22:57:48 GMT
USER [arangodb]
# Tue, 04 Sep 2018 22:57:48 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e88ffe874860a609df4b44af0be8694cba4c964d9175497963d7056c6dfa8`  
		Last Modified: Tue, 04 Sep 2018 22:59:21 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7442d647c7137b3cdb1b77310141e74ccd23de4dc1095ad58b57dcdefd4a0b22`  
		Last Modified: Tue, 04 Sep 2018 22:59:34 GMT  
		Size: 60.7 MB (60731109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baef6cdcc2f6b3e55389c58d9447632eabfbdb46dd13d070c853195789c19828`  
		Last Modified: Tue, 04 Sep 2018 22:59:20 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e329807fce4c5e97c62ee15eb191fd65bf0e0c86ad07f30eda004fc1a12fb120`  
		Last Modified: Tue, 04 Sep 2018 22:59:21 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:8f6ced47146fcbd4e6285fe5259ef7d3971d425fd268f996d702cfb3b11b2a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:1892674cbde951d1a83e8a39506b8316652aa0a92493515a2fa08ad37afc1925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acbd15bff1e6941cce0a5e31ed2b7fd78bc7ad714b692a04a3f4ed94e6bfd9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:07 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 04 Sep 2018 22:57:08 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:08 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 04 Sep 2018 22:57:08 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 04 Sep 2018 22:57:09 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 04 Sep 2018 22:57:09 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 04 Sep 2018 22:57:09 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 04 Sep 2018 22:57:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 04 Sep 2018 22:57:47 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 04 Sep 2018 22:57:47 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 04 Sep 2018 22:57:47 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 04 Sep 2018 22:57:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 22:57:48 GMT
EXPOSE 8529/tcp
# Tue, 04 Sep 2018 22:57:48 GMT
USER [arangodb]
# Tue, 04 Sep 2018 22:57:48 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e88ffe874860a609df4b44af0be8694cba4c964d9175497963d7056c6dfa8`  
		Last Modified: Tue, 04 Sep 2018 22:59:21 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7442d647c7137b3cdb1b77310141e74ccd23de4dc1095ad58b57dcdefd4a0b22`  
		Last Modified: Tue, 04 Sep 2018 22:59:34 GMT  
		Size: 60.7 MB (60731109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baef6cdcc2f6b3e55389c58d9447632eabfbdb46dd13d070c853195789c19828`  
		Last Modified: Tue, 04 Sep 2018 22:59:20 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e329807fce4c5e97c62ee15eb191fd65bf0e0c86ad07f30eda004fc1a12fb120`  
		Last Modified: Tue, 04 Sep 2018 22:59:21 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:4fbe117c8f84b268432c8b7ab46a6dc956744150b701418ac1860d476bb825dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:32102596cbfaf4171935ab10d3aedaf44cf961f8a62501d642892fe749f40c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112791188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc2650b0c31526e58d2b66c82ac4835fad25649efe6a866a9d86f0b424f2efd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARANGO_VERSION=3.2.16
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.16-1_amd64.deb
# Tue, 04 Sep 2018 22:57:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb
# Tue, 04 Sep 2018 22:57:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb.asc
# Tue, 04 Sep 2018 22:58:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:58:05 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 04 Sep 2018 22:58:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:58:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Sep 2018 22:58:29 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 04 Sep 2018 22:58:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 04 Sep 2018 22:58:30 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 04 Sep 2018 22:58:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 22:58:31 GMT
EXPOSE 8529/tcp
# Tue, 04 Sep 2018 22:58:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4c781bfa105a738a081140412955f1c49974f491386e9c32e9eb55ebff0048`  
		Last Modified: Tue, 04 Sep 2018 22:59:42 GMT  
		Size: 6.6 MB (6561869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693a222e5f1d4e3ada331cc49564d2b5d5a412aa236ad1ac8ecf620ea8622bc8`  
		Last Modified: Tue, 04 Sep 2018 22:59:40 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a9ccde40c484c4001625db4ed9da55365f55b9a86e925d161a130c9ab9896a`  
		Last Modified: Tue, 04 Sep 2018 22:59:41 GMT  
		Size: 7.3 MB (7320788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3230fe5632b8ee85597631d3e145d873882e6b8684a29e7c744a9ed2e41eb8`  
		Last Modified: Tue, 04 Sep 2018 22:59:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa2e8eee6fa6e14d5cd6bc369e11d3c41f63e9802a9494b8c50235b975d1b53`  
		Last Modified: Tue, 04 Sep 2018 22:59:51 GMT  
		Size: 53.6 MB (53593085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96272612b25a7d2039c5ed7e9a0035294f52c0712f213f005e87656e794c9faa`  
		Last Modified: Tue, 04 Sep 2018 22:59:40 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.16`

```console
$ docker pull arangodb@sha256:4fbe117c8f84b268432c8b7ab46a6dc956744150b701418ac1860d476bb825dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.16` - linux; amd64

```console
$ docker pull arangodb@sha256:32102596cbfaf4171935ab10d3aedaf44cf961f8a62501d642892fe749f40c7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112791188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc2650b0c31526e58d2b66c82ac4835fad25649efe6a866a9d86f0b424f2efd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARANGO_VERSION=3.2.16
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.16-1_amd64.deb
# Tue, 04 Sep 2018 22:57:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb
# Tue, 04 Sep 2018 22:57:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb.asc
# Tue, 04 Sep 2018 22:58:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:58:05 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 04 Sep 2018 22:58:13 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:58:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Sep 2018 22:58:29 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 04 Sep 2018 22:58:30 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 04 Sep 2018 22:58:30 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 04 Sep 2018 22:58:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 22:58:31 GMT
EXPOSE 8529/tcp
# Tue, 04 Sep 2018 22:58:31 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4c781bfa105a738a081140412955f1c49974f491386e9c32e9eb55ebff0048`  
		Last Modified: Tue, 04 Sep 2018 22:59:42 GMT  
		Size: 6.6 MB (6561869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693a222e5f1d4e3ada331cc49564d2b5d5a412aa236ad1ac8ecf620ea8622bc8`  
		Last Modified: Tue, 04 Sep 2018 22:59:40 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a9ccde40c484c4001625db4ed9da55365f55b9a86e925d161a130c9ab9896a`  
		Last Modified: Tue, 04 Sep 2018 22:59:41 GMT  
		Size: 7.3 MB (7320788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3230fe5632b8ee85597631d3e145d873882e6b8684a29e7c744a9ed2e41eb8`  
		Last Modified: Tue, 04 Sep 2018 22:59:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa2e8eee6fa6e14d5cd6bc369e11d3c41f63e9802a9494b8c50235b975d1b53`  
		Last Modified: Tue, 04 Sep 2018 22:59:51 GMT  
		Size: 53.6 MB (53593085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96272612b25a7d2039c5ed7e9a0035294f52c0712f213f005e87656e794c9faa`  
		Last Modified: Tue, 04 Sep 2018 22:59:40 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:50b1319a30a940e0c9deb4654cdfa3b8fd47105e6ee2ee349d956eb80ac2b9ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:d5fb902b2b91c123da60d0d348d9e7df3f19236b1fc2f36e26a47793fb906ab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117471188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a795c7b1864465ffd3a40b055642d90b0d1539d4b7871f92a8b7ec9c4a86746`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_VERSION=3.3.16
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.16-1_amd64.deb
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb.asc
# Mon, 24 Sep 2018 20:20:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:20:18 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Sep 2018 20:20:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:20:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Sep 2018 20:22:54 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Sep 2018 20:22:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 24 Sep 2018 20:22:55 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Mon, 24 Sep 2018 20:22:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:23:25 GMT
EXPOSE 8529/tcp
# Mon, 24 Sep 2018 20:23:26 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b42a69e2cfb3a2f77669e80f3cbbb781215fb45cbaac1bcc68139540cbecd61`  
		Last Modified: Mon, 24 Sep 2018 20:23:56 GMT  
		Size: 6.6 MB (6561876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c682c9222586c9210e2e7c13b9ecf07674041c2cf74d0f44fa638aba94a32bc`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0b0035dac0de8cef00a9b17b66b08f633e42c2858a13d2ab03f6f37f5ea8d`  
		Last Modified: Mon, 24 Sep 2018 20:23:55 GMT  
		Size: 7.3 MB (7320846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bf2a13990213023cc8bbd0187f8bc0928f7569ec38d018ce50c48b5d75dca6`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e1a9477b28903b89a28b0c12f18894c3b87fc76db6b1ad565dab2769858413`  
		Last Modified: Mon, 24 Sep 2018 20:24:06 GMT  
		Size: 58.3 MB (58273023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826092b2045f68248158ea7ba174da0c5b80457058fe44822e50f86cc65c10c2`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.16`

```console
$ docker pull arangodb@sha256:50b1319a30a940e0c9deb4654cdfa3b8fd47105e6ee2ee349d956eb80ac2b9ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.16` - linux; amd64

```console
$ docker pull arangodb@sha256:d5fb902b2b91c123da60d0d348d9e7df3f19236b1fc2f36e26a47793fb906ab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117471188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a795c7b1864465ffd3a40b055642d90b0d1539d4b7871f92a8b7ec9c4a86746`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_VERSION=3.3.16
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.16-1_amd64.deb
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb.asc
# Mon, 24 Sep 2018 20:20:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:20:18 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Sep 2018 20:20:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:20:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Sep 2018 20:22:54 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Sep 2018 20:22:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 24 Sep 2018 20:22:55 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Mon, 24 Sep 2018 20:22:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:23:25 GMT
EXPOSE 8529/tcp
# Mon, 24 Sep 2018 20:23:26 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b42a69e2cfb3a2f77669e80f3cbbb781215fb45cbaac1bcc68139540cbecd61`  
		Last Modified: Mon, 24 Sep 2018 20:23:56 GMT  
		Size: 6.6 MB (6561876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c682c9222586c9210e2e7c13b9ecf07674041c2cf74d0f44fa638aba94a32bc`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0b0035dac0de8cef00a9b17b66b08f633e42c2858a13d2ab03f6f37f5ea8d`  
		Last Modified: Mon, 24 Sep 2018 20:23:55 GMT  
		Size: 7.3 MB (7320846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bf2a13990213023cc8bbd0187f8bc0928f7569ec38d018ce50c48b5d75dca6`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e1a9477b28903b89a28b0c12f18894c3b87fc76db6b1ad565dab2769858413`  
		Last Modified: Mon, 24 Sep 2018 20:24:06 GMT  
		Size: 58.3 MB (58273023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826092b2045f68248158ea7ba174da0c5b80457058fe44822e50f86cc65c10c2`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:50b1319a30a940e0c9deb4654cdfa3b8fd47105e6ee2ee349d956eb80ac2b9ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:d5fb902b2b91c123da60d0d348d9e7df3f19236b1fc2f36e26a47793fb906ab9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117471188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a795c7b1864465ffd3a40b055642d90b0d1539d4b7871f92a8b7ec9c4a86746`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:57:53 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 04 Sep 2018 22:57:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 04 Sep 2018 22:57:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_VERSION=3.3.16
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.16-1_amd64.deb
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb
# Mon, 24 Sep 2018 20:20:00 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb.asc
# Mon, 24 Sep 2018 20:20:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:20:18 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 24 Sep 2018 20:20:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 20:20:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 24 Sep 2018 20:22:54 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 24 Sep 2018 20:22:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 24 Sep 2018 20:22:55 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Mon, 24 Sep 2018 20:22:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:23:25 GMT
EXPOSE 8529/tcp
# Mon, 24 Sep 2018 20:23:26 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b42a69e2cfb3a2f77669e80f3cbbb781215fb45cbaac1bcc68139540cbecd61`  
		Last Modified: Mon, 24 Sep 2018 20:23:56 GMT  
		Size: 6.6 MB (6561876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c682c9222586c9210e2e7c13b9ecf07674041c2cf74d0f44fa638aba94a32bc`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0b0035dac0de8cef00a9b17b66b08f633e42c2858a13d2ab03f6f37f5ea8d`  
		Last Modified: Mon, 24 Sep 2018 20:23:55 GMT  
		Size: 7.3 MB (7320846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bf2a13990213023cc8bbd0187f8bc0928f7569ec38d018ce50c48b5d75dca6`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e1a9477b28903b89a28b0c12f18894c3b87fc76db6b1ad565dab2769858413`  
		Last Modified: Mon, 24 Sep 2018 20:24:06 GMT  
		Size: 58.3 MB (58273023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826092b2045f68248158ea7ba174da0c5b80457058fe44822e50f86cc65c10c2`  
		Last Modified: Mon, 24 Sep 2018 20:23:53 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

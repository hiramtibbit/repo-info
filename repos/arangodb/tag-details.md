<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.16`](#arangodb3216)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.19`](#arangodb3319)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:906a08afb4fc2d3d03da0e0b16b52a715660c437ed8463b255dc407e931751d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:395d62fa0e1c370533c99a184b4a445536aff8380a932f49d1cd42f63fa3038a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d05dfcc499326e382343a01232e734df58ee610af9b37dd7944192ff24447f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:29:59 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 16 Oct 2018 00:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 Oct 2018 00:30:00 GMT
ENV ARCHITECTURE=amd64
# Tue, 16 Oct 2018 00:30:01 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 16 Oct 2018 00:30:01 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 16 Oct 2018 00:30:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 16 Oct 2018 00:30:02 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 16 Oct 2018 00:30:02 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 16 Oct 2018 00:30:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 Oct 2018 00:30:40 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 16 Oct 2018 00:30:41 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 16 Oct 2018 00:30:41 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 16 Oct 2018 00:30:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 00:30:42 GMT
EXPOSE 8529/tcp
# Tue, 16 Oct 2018 00:30:42 GMT
USER [arangodb]
# Tue, 16 Oct 2018 00:30:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b7f0b53bd01bb207039d72e1d1788d499bd4eb3ef64c9a701bd64ea6ed976b`  
		Last Modified: Tue, 16 Oct 2018 00:32:44 GMT  
		Size: 7.4 KB (7407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fde5b672179da7ecd706493fc2d1518877857e50eebe2ff9adf2b2482102fb`  
		Last Modified: Tue, 16 Oct 2018 00:33:25 GMT  
		Size: 60.7 MB (60730998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f786b6d11a091aa3c00f3f76f79d8a06838bd6d595d38486ba1e9438d77e`  
		Last Modified: Tue, 16 Oct 2018 00:32:44 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e895cb567a5197a6bf901ec44bb8bfffdaa42fdc791874ba9850c3ba48f818ff`  
		Last Modified: Tue, 16 Oct 2018 00:32:45 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:906a08afb4fc2d3d03da0e0b16b52a715660c437ed8463b255dc407e931751d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:395d62fa0e1c370533c99a184b4a445536aff8380a932f49d1cd42f63fa3038a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d05dfcc499326e382343a01232e734df58ee610af9b37dd7944192ff24447f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:29:59 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 16 Oct 2018 00:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 Oct 2018 00:30:00 GMT
ENV ARCHITECTURE=amd64
# Tue, 16 Oct 2018 00:30:01 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 16 Oct 2018 00:30:01 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 16 Oct 2018 00:30:01 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 16 Oct 2018 00:30:02 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 16 Oct 2018 00:30:02 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 16 Oct 2018 00:30:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 Oct 2018 00:30:40 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 16 Oct 2018 00:30:41 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 16 Oct 2018 00:30:41 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 16 Oct 2018 00:30:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 00:30:42 GMT
EXPOSE 8529/tcp
# Tue, 16 Oct 2018 00:30:42 GMT
USER [arangodb]
# Tue, 16 Oct 2018 00:30:43 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b7f0b53bd01bb207039d72e1d1788d499bd4eb3ef64c9a701bd64ea6ed976b`  
		Last Modified: Tue, 16 Oct 2018 00:32:44 GMT  
		Size: 7.4 KB (7407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fde5b672179da7ecd706493fc2d1518877857e50eebe2ff9adf2b2482102fb`  
		Last Modified: Tue, 16 Oct 2018 00:33:25 GMT  
		Size: 60.7 MB (60730998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0110f786b6d11a091aa3c00f3f76f79d8a06838bd6d595d38486ba1e9438d77e`  
		Last Modified: Tue, 16 Oct 2018 00:32:44 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e895cb567a5197a6bf901ec44bb8bfffdaa42fdc791874ba9850c3ba48f818ff`  
		Last Modified: Tue, 16 Oct 2018 00:32:45 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:f4783d28bd5b1c848b3f2d7ffa1471ba73dae63f267cc795df4ca112396bf252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:ca15861abacd74e054be446ec9e6423c9f5df5dc840eb3e1226d79542794b735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112791262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eae9956ee86eb0c6352fb0f0ea67d748126f6f1d067ac2dde219384e380f1a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:30:52 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 16 Oct 2018 00:30:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARANGO_VERSION=3.2.16
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.16-1_amd64.deb
# Tue, 16 Oct 2018 00:30:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb
# Tue, 16 Oct 2018 00:30:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb.asc
# Tue, 16 Oct 2018 00:31:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:31:04 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 Oct 2018 00:31:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:31:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 00:31:33 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 Oct 2018 00:31:33 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 16 Oct 2018 00:31:34 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 16 Oct 2018 00:31:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 00:31:35 GMT
EXPOSE 8529/tcp
# Tue, 16 Oct 2018 00:31:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fe95200af02d5c1d10f252db52dec1af89ca788cc68323666ec4c6f7130360`  
		Last Modified: Tue, 16 Oct 2018 00:33:58 GMT  
		Size: 6.6 MB (6561825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a061af260f770f6ccc431f291a521bacbf98119721604a2958a4e52f737612`  
		Last Modified: Tue, 16 Oct 2018 00:33:55 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9045d3ad2085907cb64353860f88d88c28309e0799423f46f9e59fdf9308f876`  
		Last Modified: Tue, 16 Oct 2018 00:33:57 GMT  
		Size: 7.3 MB (7320808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be1c8e9550e9a73d8b112661e223ff044cec6ea4e52226d36cf53d47f6f7570`  
		Last Modified: Tue, 16 Oct 2018 00:33:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296310615fa3015bd0acbc0aba8ab2425299bea841fa25e03a43b8dd4b88521c`  
		Last Modified: Tue, 16 Oct 2018 00:34:10 GMT  
		Size: 53.6 MB (53593311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885e0e7cf49c0a121807d0c467af2c222f76a932992085661f69c399a5b0f333`  
		Last Modified: Tue, 16 Oct 2018 00:33:56 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.16`

```console
$ docker pull arangodb@sha256:f4783d28bd5b1c848b3f2d7ffa1471ba73dae63f267cc795df4ca112396bf252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.16` - linux; amd64

```console
$ docker pull arangodb@sha256:ca15861abacd74e054be446ec9e6423c9f5df5dc840eb3e1226d79542794b735
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112791262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eae9956ee86eb0c6352fb0f0ea67d748126f6f1d067ac2dde219384e380f1a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:30:52 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 16 Oct 2018 00:30:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARANGO_VERSION=3.2.16
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.16-1_amd64.deb
# Tue, 16 Oct 2018 00:30:54 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb
# Tue, 16 Oct 2018 00:30:54 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.16-1_amd64.deb.asc
# Tue, 16 Oct 2018 00:31:00 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:31:04 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 Oct 2018 00:31:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:31:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 00:31:33 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 Oct 2018 00:31:33 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 16 Oct 2018 00:31:34 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 16 Oct 2018 00:31:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 00:31:35 GMT
EXPOSE 8529/tcp
# Tue, 16 Oct 2018 00:31:35 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fe95200af02d5c1d10f252db52dec1af89ca788cc68323666ec4c6f7130360`  
		Last Modified: Tue, 16 Oct 2018 00:33:58 GMT  
		Size: 6.6 MB (6561825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a061af260f770f6ccc431f291a521bacbf98119721604a2958a4e52f737612`  
		Last Modified: Tue, 16 Oct 2018 00:33:55 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9045d3ad2085907cb64353860f88d88c28309e0799423f46f9e59fdf9308f876`  
		Last Modified: Tue, 16 Oct 2018 00:33:57 GMT  
		Size: 7.3 MB (7320808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be1c8e9550e9a73d8b112661e223ff044cec6ea4e52226d36cf53d47f6f7570`  
		Last Modified: Tue, 16 Oct 2018 00:33:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296310615fa3015bd0acbc0aba8ab2425299bea841fa25e03a43b8dd4b88521c`  
		Last Modified: Tue, 16 Oct 2018 00:34:10 GMT  
		Size: 53.6 MB (53593311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885e0e7cf49c0a121807d0c467af2c222f76a932992085661f69c399a5b0f333`  
		Last Modified: Tue, 16 Oct 2018 00:33:56 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:c4c21b71200c76b4b00e2e9289dbd97098e7e1ef957fad84bc981726cf1f98e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:929de99a790a44f802d3e7d9518e268bebfc0338818eb1602a88b5615978d660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117470937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2103c51be1059e0735a31f76b2f4a9788b4b3ed745596b49d58d5060106768f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:30:52 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 16 Oct 2018 00:30:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_VERSION=3.3.16
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.16-1_amd64.deb
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb.asc
# Tue, 16 Oct 2018 00:31:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:31:55 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 Oct 2018 00:32:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:32:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 00:32:21 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 Oct 2018 00:32:21 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 16 Oct 2018 00:32:22 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 16 Oct 2018 00:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 00:32:23 GMT
EXPOSE 8529/tcp
# Tue, 16 Oct 2018 00:32:23 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a189416052c7542df048f341dbf0cf6cde89d3e09f884b8dfc37d1db1f6aa214`  
		Last Modified: Tue, 16 Oct 2018 00:34:44 GMT  
		Size: 6.6 MB (6561829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e467529bb05e9ae83426e4a2438970b760720c7f9bc787f03ca58473b5e2b`  
		Last Modified: Tue, 16 Oct 2018 00:34:41 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4755e7e98b5ed83b719629e464d117cb3c9a87711170db58ed1f3469c25d43`  
		Last Modified: Tue, 16 Oct 2018 00:34:43 GMT  
		Size: 7.3 MB (7320870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32195604838b821341c88d9d001ce70774bf77d7e521d7eb87f9fbdbabd1f97`  
		Last Modified: Tue, 16 Oct 2018 00:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb949ed5c4758d716c34ba90eaffe001c3f27fdecf3031de37024c3371b26809`  
		Last Modified: Tue, 16 Oct 2018 00:34:58 GMT  
		Size: 58.3 MB (58272921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0644f9d5dd9d8b912e8eb9bf8844ad4e52f6121f0d9056689ef911732308edb9`  
		Last Modified: Tue, 16 Oct 2018 00:34:41 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.19`

**does not exist** (yet?)

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c4c21b71200c76b4b00e2e9289dbd97098e7e1ef957fad84bc981726cf1f98e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:929de99a790a44f802d3e7d9518e268bebfc0338818eb1602a88b5615978d660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117470937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2103c51be1059e0735a31f76b2f4a9788b4b3ed745596b49d58d5060106768f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:30:52 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 16 Oct 2018 00:30:53 GMT
ENV ARCHITECTURE=amd64
# Tue, 16 Oct 2018 00:30:53 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_VERSION=3.3.16
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.16-1_amd64.deb
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb
# Tue, 16 Oct 2018 00:31:45 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.16-1_amd64.deb.asc
# Tue, 16 Oct 2018 00:31:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:31:55 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 16 Oct 2018 00:32:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:32:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 00:32:21 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 16 Oct 2018 00:32:21 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 16 Oct 2018 00:32:22 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 16 Oct 2018 00:32:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 00:32:23 GMT
EXPOSE 8529/tcp
# Tue, 16 Oct 2018 00:32:23 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a189416052c7542df048f341dbf0cf6cde89d3e09f884b8dfc37d1db1f6aa214`  
		Last Modified: Tue, 16 Oct 2018 00:34:44 GMT  
		Size: 6.6 MB (6561829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e467529bb05e9ae83426e4a2438970b760720c7f9bc787f03ca58473b5e2b`  
		Last Modified: Tue, 16 Oct 2018 00:34:41 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4755e7e98b5ed83b719629e464d117cb3c9a87711170db58ed1f3469c25d43`  
		Last Modified: Tue, 16 Oct 2018 00:34:43 GMT  
		Size: 7.3 MB (7320870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32195604838b821341c88d9d001ce70774bf77d7e521d7eb87f9fbdbabd1f97`  
		Last Modified: Tue, 16 Oct 2018 00:34:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb949ed5c4758d716c34ba90eaffe001c3f27fdecf3031de37024c3371b26809`  
		Last Modified: Tue, 16 Oct 2018 00:34:58 GMT  
		Size: 58.3 MB (58272921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0644f9d5dd9d8b912e8eb9bf8844ad4e52f6121f0d9056689ef911732308edb9`  
		Last Modified: Tue, 16 Oct 2018 00:34:41 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

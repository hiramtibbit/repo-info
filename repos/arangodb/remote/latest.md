## `arangodb:latest`

```console
$ docker pull arangodb@sha256:760764143e71cd491a1b8bd3d33f6a3a750db6aa5766615f21f648ec4b714f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:3293b9174730289776197dfb4915bd82a3cccc6d71f07f31f2a89958d774b4f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116743471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cd669749f0482073e121d61b0c6fc81f70d3c5e7ba58263626499b0b92c774`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:59:54 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARCHITECTURE=amd64
# Tue, 26 Jun 2018 21:59:55 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 26 Jun 2018 22:01:38 GMT
ENV ARANGO_VERSION=3.3.10
# Tue, 26 Jun 2018 22:01:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 26 Jun 2018 22:01:39 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.10-1_amd64.deb
# Tue, 26 Jun 2018 22:01:39 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb
# Tue, 26 Jun 2018 22:01:39 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.10-1_amd64.deb.asc
# Tue, 26 Jun 2018 22:01:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:01:52 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 26 Jun 2018 22:02:05 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:02:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:02:24 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 26 Jun 2018 22:02:25 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 26 Jun 2018 22:02:25 GMT
COPY file:f1d7a2da62ae377ee32c18cf950d6507b5184b50e05c06ad6f35243591159860 in /entrypoint.sh 
# Tue, 26 Jun 2018 22:02:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 22:02:26 GMT
EXPOSE 8529/tcp
# Tue, 26 Jun 2018 22:02:26 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9545c9fddc9559d9d9f5bd0519bfe99e9f79cc0a82f9570cbdbd75bf49f8d02b`  
		Last Modified: Tue, 26 Jun 2018 22:04:29 GMT  
		Size: 6.6 MB (6561580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de425c53de33971624d746d22d3af07a67ff29c0fe89eaf5c69e2cdeee8daf0`  
		Last Modified: Tue, 26 Jun 2018 22:04:23 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec390865fe3a9120e284f8175fd7245853a569590339aaec4552ef55742854d`  
		Last Modified: Tue, 26 Jun 2018 22:04:25 GMT  
		Size: 7.4 MB (7353399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac925cabddd91957f986a32d1fee339212aa5a14dc3e8dfd577254c050f250cc`  
		Last Modified: Tue, 26 Jun 2018 22:04:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27122a47182df80fdc52c421d7a6804286318327267083676cdf1a6b69e2b6fe`  
		Last Modified: Tue, 26 Jun 2018 22:04:43 GMT  
		Size: 57.5 MB (57503911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e7181dd8f5e85bdf2360476387ca1a7ad2a1ab3f02e1badc5b862c39dacaca`  
		Last Modified: Tue, 26 Jun 2018 22:04:23 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

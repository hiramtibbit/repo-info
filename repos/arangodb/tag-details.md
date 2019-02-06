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
$ docker pull arangodb@sha256:6f187fbd3dc2d0fe788c967243102d845a5772101273ec14f1315ddc6a05d80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:5b26ceb6e30455915f8562e964f947bcb57e95ec07d5a438be0b4cbd6b0dbc23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115099306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd873f4800ccbbfe63757eb3b784009844010bbf46d11b685df03c8e7d4e0e6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:19:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Feb 2019 05:19:15 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Feb 2019 05:19:15 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Feb 2019 05:19:15 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 06 Feb 2019 05:22:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Feb 2019 05:22:12 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 06 Feb 2019 05:22:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 06 Feb 2019 05:22:13 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Wed, 06 Feb 2019 05:22:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:22:13 GMT
EXPOSE 8529
# Wed, 06 Feb 2019 05:22:13 GMT
USER arangodb
# Wed, 06 Feb 2019 05:22:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e2a6908505a1d0ea5dfb543100730ba4579d441a72e3a100a7a903d2ed5af`  
		Last Modified: Wed, 06 Feb 2019 05:24:14 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d6adcbd221a19c8205205c0287c16d433f7c7701a954cc52131ebb8e7ce01e`  
		Last Modified: Wed, 06 Feb 2019 05:24:24 GMT  
		Size: 60.7 MB (60705983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be96de9c61deb5ac3a64c065ced2ac3e731b7f572f28b9a26b1870a4001adb8`  
		Last Modified: Wed, 06 Feb 2019 05:24:13 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc78d39a5ffea94d164323fce37dd556a2fe0a38ef3558cde3d389f72316c57`  
		Last Modified: Wed, 06 Feb 2019 05:24:14 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:6f187fbd3dc2d0fe788c967243102d845a5772101273ec14f1315ddc6a05d80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:5b26ceb6e30455915f8562e964f947bcb57e95ec07d5a438be0b4cbd6b0dbc23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115099306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd873f4800ccbbfe63757eb3b784009844010bbf46d11b685df03c8e7d4e0e6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:19:14 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Feb 2019 05:19:15 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Feb 2019 05:19:15 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Feb 2019 05:19:15 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 06 Feb 2019 05:19:16 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 06 Feb 2019 05:22:11 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Feb 2019 05:22:12 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 06 Feb 2019 05:22:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 06 Feb 2019 05:22:13 GMT
COPY file:9a5bd6b5ab4e3a7842ac5f3e59bb9907920e9e2dc31d297c3676110b569a9d7e in /entrypoint.sh 
# Wed, 06 Feb 2019 05:22:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:22:13 GMT
EXPOSE 8529
# Wed, 06 Feb 2019 05:22:13 GMT
USER arangodb
# Wed, 06 Feb 2019 05:22:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e2a6908505a1d0ea5dfb543100730ba4579d441a72e3a100a7a903d2ed5af`  
		Last Modified: Wed, 06 Feb 2019 05:24:14 GMT  
		Size: 7.4 KB (7410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d6adcbd221a19c8205205c0287c16d433f7c7701a954cc52131ebb8e7ce01e`  
		Last Modified: Wed, 06 Feb 2019 05:24:24 GMT  
		Size: 60.7 MB (60705983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be96de9c61deb5ac3a64c065ced2ac3e731b7f572f28b9a26b1870a4001adb8`  
		Last Modified: Wed, 06 Feb 2019 05:24:13 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc78d39a5ffea94d164323fce37dd556a2fe0a38ef3558cde3d389f72316c57`  
		Last Modified: Wed, 06 Feb 2019 05:24:14 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:bacc33507d4b16610b12a4f72dd23d3326deb6492f5940b3660009bde25e6dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:e0fea8f921dada2ad2ada0d6247d4f92a3e4d4196e3deca772657e0bd5841081
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113504028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b91e3faabe63daeb2ef642c820ccafd8be4892ded6d237ff039408cd968662e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:22:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Feb 2019 05:22:29 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Feb 2019 05:22:29 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Feb 2019 05:22:29 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 06 Feb 2019 05:22:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:22:47 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Feb 2019 05:23:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:23:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 05:23:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Feb 2019 05:23:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Feb 2019 05:23:19 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:23:19 GMT
EXPOSE 8529
# Wed, 06 Feb 2019 05:23:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd585f958a912171ee56aa44ab05a93184d97a803e4c146801ad37c41aeadf16`  
		Last Modified: Wed, 06 Feb 2019 05:24:30 GMT  
		Size: 6.6 MB (6565549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aa749a925f1daf5c913546090ab7adb6970ba322db2d3187e93ff255bd2ef3`  
		Last Modified: Wed, 06 Feb 2019 05:24:28 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c6a8b2a3a1d10e2b23135e7807b238d45bc62427f8daaf2dcb91fdc6465d5b`  
		Last Modified: Wed, 06 Feb 2019 05:24:29 GMT  
		Size: 7.5 MB (7453118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcf412d6cbe2e1a275b2b32d0439973a4e0e4c3616ea7be22678bdaac8b380b`  
		Last Modified: Wed, 06 Feb 2019 05:24:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf737cf330840f3fc66115b515f96d20592642f2de6cefb9dcaa377a53df10e`  
		Last Modified: Wed, 06 Feb 2019 05:24:39 GMT  
		Size: 54.1 MB (54135568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d96dc3b579a3c759d292a6a2091e5763fb5307298f22b4d9d9ed89ed889caa`  
		Last Modified: Wed, 06 Feb 2019 05:24:28 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.17`

```console
$ docker pull arangodb@sha256:bacc33507d4b16610b12a4f72dd23d3326deb6492f5940b3660009bde25e6dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.17` - linux; amd64

```console
$ docker pull arangodb@sha256:e0fea8f921dada2ad2ada0d6247d4f92a3e4d4196e3deca772657e0bd5841081
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113504028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b91e3faabe63daeb2ef642c820ccafd8be4892ded6d237ff039408cd968662e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:22:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Feb 2019 05:22:29 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Feb 2019 05:22:29 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Feb 2019 05:22:29 GMT
ENV ARANGO_VERSION=3.2.17
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.17-1_amd64.deb
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb
# Wed, 06 Feb 2019 05:22:30 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.17-1_amd64.deb.asc
# Wed, 06 Feb 2019 05:22:40 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:22:47 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Feb 2019 05:23:04 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:23:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 05:23:18 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Feb 2019 05:23:18 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Feb 2019 05:23:19 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:23:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:23:19 GMT
EXPOSE 8529
# Wed, 06 Feb 2019 05:23:19 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd585f958a912171ee56aa44ab05a93184d97a803e4c146801ad37c41aeadf16`  
		Last Modified: Wed, 06 Feb 2019 05:24:30 GMT  
		Size: 6.6 MB (6565549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7aa749a925f1daf5c913546090ab7adb6970ba322db2d3187e93ff255bd2ef3`  
		Last Modified: Wed, 06 Feb 2019 05:24:28 GMT  
		Size: 3.3 KB (3347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c6a8b2a3a1d10e2b23135e7807b238d45bc62427f8daaf2dcb91fdc6465d5b`  
		Last Modified: Wed, 06 Feb 2019 05:24:29 GMT  
		Size: 7.5 MB (7453118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcf412d6cbe2e1a275b2b32d0439973a4e0e4c3616ea7be22678bdaac8b380b`  
		Last Modified: Wed, 06 Feb 2019 05:24:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf737cf330840f3fc66115b515f96d20592642f2de6cefb9dcaa377a53df10e`  
		Last Modified: Wed, 06 Feb 2019 05:24:39 GMT  
		Size: 54.1 MB (54135568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d96dc3b579a3c759d292a6a2091e5763fb5307298f22b4d9d9ed89ed889caa`  
		Last Modified: Wed, 06 Feb 2019 05:24:28 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:644dff2efe327d7ae8434ec31d3034db3621984a8fce85373c67d3bfb8432bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:563d621f3312d627ee00e14623ebecc1c3dcfe0f8217b3bb90db535119beff3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117770323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619026a6018c4b7aea603fa9389b56089cdf54471a0b77384ad7f2f0bcdfaf59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:22:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Feb 2019 05:22:29 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Feb 2019 05:22:29 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_VERSION=3.3.21
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Wed, 06 Feb 2019 05:23:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:23:38 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Feb 2019 05:23:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:23:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 05:24:01 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Feb 2019 05:24:01 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Feb 2019 05:24:02 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:24:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:24:02 GMT
EXPOSE 8529
# Wed, 06 Feb 2019 05:24:02 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e7d5b1d7c6968b1b2839a329c0ebac90b2a011f9e40b93b6118647f2d42035`  
		Last Modified: Wed, 06 Feb 2019 05:24:45 GMT  
		Size: 6.6 MB (6565553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40064283d35e1ac33265516a7d0c507566da220a2d3c5adad3dc918ec2eddced`  
		Last Modified: Wed, 06 Feb 2019 05:24:43 GMT  
		Size: 3.3 KB (3345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fa0de9e1d7b64364a462e1be4cf241e2c5ac9041a2b4ebfec3ecc9a51ea9a3`  
		Last Modified: Wed, 06 Feb 2019 05:24:45 GMT  
		Size: 7.5 MB (7452955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf30d9ea38748ad539d7047769002632ac8435db1c61d75984e87ddcc4e170c`  
		Last Modified: Wed, 06 Feb 2019 05:24:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deebdac4ec2a82239a19f36260d9f08502016afadfcb88ef1f9fff325290628`  
		Last Modified: Wed, 06 Feb 2019 05:24:55 GMT  
		Size: 58.4 MB (58402025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a15fee23ef885ac5b69468b0af7328875f75121e09cbc1ac56d1b3f9030a8d`  
		Last Modified: Wed, 06 Feb 2019 05:24:43 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.21`

```console
$ docker pull arangodb@sha256:644dff2efe327d7ae8434ec31d3034db3621984a8fce85373c67d3bfb8432bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.21` - linux; amd64

```console
$ docker pull arangodb@sha256:563d621f3312d627ee00e14623ebecc1c3dcfe0f8217b3bb90db535119beff3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117770323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619026a6018c4b7aea603fa9389b56089cdf54471a0b77384ad7f2f0bcdfaf59`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:22:29 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 06 Feb 2019 05:22:29 GMT
ENV ARCHITECTURE=amd64
# Wed, 06 Feb 2019 05:22:29 GMT
ENV DEB_PACKAGE_VERSION=1
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_VERSION=3.3.21
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.21-1_amd64.deb
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb
# Wed, 06 Feb 2019 05:23:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.21-1_amd64.deb.asc
# Wed, 06 Feb 2019 05:23:34 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         dirmngr         gpg     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:23:38 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 06 Feb 2019 05:23:47 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         curl         curl         libjemalloc1         libtasn1-6         numactl         openssl         pwgen         sensible-utils     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:23:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 05:24:01 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 06 Feb 2019 05:24:01 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 06 Feb 2019 05:24:02 GMT
COPY file:01bdd453b032c9d383e66c7e6332049490bb7877724d3bb90d185f11336934d2 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:24:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:24:02 GMT
EXPOSE 8529
# Wed, 06 Feb 2019 05:24:02 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e7d5b1d7c6968b1b2839a329c0ebac90b2a011f9e40b93b6118647f2d42035`  
		Last Modified: Wed, 06 Feb 2019 05:24:45 GMT  
		Size: 6.6 MB (6565553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40064283d35e1ac33265516a7d0c507566da220a2d3c5adad3dc918ec2eddced`  
		Last Modified: Wed, 06 Feb 2019 05:24:43 GMT  
		Size: 3.3 KB (3345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fa0de9e1d7b64364a462e1be4cf241e2c5ac9041a2b4ebfec3ecc9a51ea9a3`  
		Last Modified: Wed, 06 Feb 2019 05:24:45 GMT  
		Size: 7.5 MB (7452955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf30d9ea38748ad539d7047769002632ac8435db1c61d75984e87ddcc4e170c`  
		Last Modified: Wed, 06 Feb 2019 05:24:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deebdac4ec2a82239a19f36260d9f08502016afadfcb88ef1f9fff325290628`  
		Last Modified: Wed, 06 Feb 2019 05:24:55 GMT  
		Size: 58.4 MB (58402025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a15fee23ef885ac5b69468b0af7328875f75121e09cbc1ac56d1b3f9030a8d`  
		Last Modified: Wed, 06 Feb 2019 05:24:43 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4`

```console
$ docker pull arangodb@sha256:bb1dfe4eade438322045fd1a31dd8df09858ffabf1bf49fce2f58c4b9f842b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4` - linux; amd64

```console
$ docker pull arangodb@sha256:cfdd6dd56b33a7a8a8e1ec37984a4bff0d005d9c20a1ac2d134e1fb7de22a44b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101735625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41deeeb6f1189a07e3e567bd104c82b53350b67eaadbe044fae9c1158cd8c1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:17:26 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 04 Feb 2019 22:19:31 GMT
ENV ARANGO_VERSION=3.4.2.1
# Mon, 04 Feb 2019 22:19:31 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.2.1-1_amd64.deb
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.2.1-1_amd64.deb
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.2.1-1_amd64.deb.asc
# Mon, 04 Feb 2019 22:19:51 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Mon, 04 Feb 2019 22:19:55 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 04 Feb 2019 22:19:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Feb 2019 22:20:04 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Mon, 04 Feb 2019 22:20:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 04 Feb 2019 22:20:17 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Mon, 04 Feb 2019 22:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 04 Feb 2019 22:20:17 GMT
EXPOSE 8529
# Mon, 04 Feb 2019 22:20:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6993a8cc23238ade1a5e5f98751bbf7212db4a8c4ff059126a2fc2ea83d390b3`  
		Last Modified: Mon, 04 Feb 2019 22:20:39 GMT  
		Size: 30.0 MB (30005332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f244a1dc8cf8b7d8c387c385363bcd0c9cdc162c5c2c45752e6877ad96753a3`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde320cdbb909782031b455d0da61743d5f5e96c0ca72d177c01817355d2b28a`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb23f435e05a18dfee17fdf43b454f86f48cf15028d7760378755887515de5f`  
		Last Modified: Mon, 04 Feb 2019 22:21:01 GMT  
		Size: 69.5 MB (69517764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493fdf87e1b75c6bdbdffe7bb7a9c36925745ea9c25c3b8235fe8f4a213ba50f`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.4.2`

```console
$ docker pull arangodb@sha256:bb1dfe4eade438322045fd1a31dd8df09858ffabf1bf49fce2f58c4b9f842b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.4.2` - linux; amd64

```console
$ docker pull arangodb@sha256:cfdd6dd56b33a7a8a8e1ec37984a4bff0d005d9c20a1ac2d134e1fb7de22a44b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101735625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41deeeb6f1189a07e3e567bd104c82b53350b67eaadbe044fae9c1158cd8c1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:17:26 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 04 Feb 2019 22:19:31 GMT
ENV ARANGO_VERSION=3.4.2.1
# Mon, 04 Feb 2019 22:19:31 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.2.1-1_amd64.deb
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.2.1-1_amd64.deb
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.2.1-1_amd64.deb.asc
# Mon, 04 Feb 2019 22:19:51 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Mon, 04 Feb 2019 22:19:55 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 04 Feb 2019 22:19:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Feb 2019 22:20:04 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Mon, 04 Feb 2019 22:20:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 04 Feb 2019 22:20:17 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Mon, 04 Feb 2019 22:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 04 Feb 2019 22:20:17 GMT
EXPOSE 8529
# Mon, 04 Feb 2019 22:20:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6993a8cc23238ade1a5e5f98751bbf7212db4a8c4ff059126a2fc2ea83d390b3`  
		Last Modified: Mon, 04 Feb 2019 22:20:39 GMT  
		Size: 30.0 MB (30005332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f244a1dc8cf8b7d8c387c385363bcd0c9cdc162c5c2c45752e6877ad96753a3`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde320cdbb909782031b455d0da61743d5f5e96c0ca72d177c01817355d2b28a`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb23f435e05a18dfee17fdf43b454f86f48cf15028d7760378755887515de5f`  
		Last Modified: Mon, 04 Feb 2019 22:21:01 GMT  
		Size: 69.5 MB (69517764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493fdf87e1b75c6bdbdffe7bb7a9c36925745ea9c25c3b8235fe8f4a213ba50f`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:bb1dfe4eade438322045fd1a31dd8df09858ffabf1bf49fce2f58c4b9f842b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:cfdd6dd56b33a7a8a8e1ec37984a4bff0d005d9c20a1ac2d134e1fb7de22a44b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101735625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41deeeb6f1189a07e3e567bd104c82b53350b67eaadbe044fae9c1158cd8c1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:17:26 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Mon, 04 Feb 2019 22:19:31 GMT
ENV ARANGO_VERSION=3.4.2.1
# Mon, 04 Feb 2019 22:19:31 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.2.1-1_amd64.deb
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.2.1-1_amd64.deb
# Mon, 04 Feb 2019 22:19:32 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.2.1-1_amd64.deb.asc
# Mon, 04 Feb 2019 22:19:51 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Mon, 04 Feb 2019 22:19:55 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 04 Feb 2019 22:19:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 04 Feb 2019 22:20:04 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Mon, 04 Feb 2019 22:20:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 04 Feb 2019 22:20:17 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Mon, 04 Feb 2019 22:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 04 Feb 2019 22:20:17 GMT
EXPOSE 8529
# Mon, 04 Feb 2019 22:20:20 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6993a8cc23238ade1a5e5f98751bbf7212db4a8c4ff059126a2fc2ea83d390b3`  
		Last Modified: Mon, 04 Feb 2019 22:20:39 GMT  
		Size: 30.0 MB (30005332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f244a1dc8cf8b7d8c387c385363bcd0c9cdc162c5c2c45752e6877ad96753a3`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde320cdbb909782031b455d0da61743d5f5e96c0ca72d177c01817355d2b28a`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb23f435e05a18dfee17fdf43b454f86f48cf15028d7760378755887515de5f`  
		Last Modified: Mon, 04 Feb 2019 22:21:01 GMT  
		Size: 69.5 MB (69517764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493fdf87e1b75c6bdbdffe7bb7a9c36925745ea9c25c3b8235fe8f4a213ba50f`  
		Last Modified: Mon, 04 Feb 2019 22:20:30 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

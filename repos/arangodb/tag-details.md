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

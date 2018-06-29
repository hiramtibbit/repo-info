<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.15`](#arangodb3215)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.11`](#arangodb3311)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:0fb13324c13ff4f746174fd57e4e15b76b0abdbb98dd5f72a8da8d5e34290c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:302dc3b6d1c8a349dc816bb8c03d49b513c7515abe032864993341eb9402eb43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c980f2a6babbe34c3051424dbb09e0559cb75b156deb4fc45d6539ac083468ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:58:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 26 Jun 2018 21:58:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 26 Jun 2018 21:58:33 GMT
ENV ARCHITECTURE=amd64
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 26 Jun 2018 21:59:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 26 Jun 2018 21:59:40 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 26 Jun 2018 21:59:40 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 26 Jun 2018 21:59:41 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 26 Jun 2018 21:59:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 21:59:41 GMT
EXPOSE 8529/tcp
# Tue, 26 Jun 2018 21:59:42 GMT
USER [arangodb]
# Tue, 26 Jun 2018 21:59:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1992bdac224818357d6aaac440abb53d8f46a8851d4a8e18b3f1293836e6cf`  
		Last Modified: Tue, 26 Jun 2018 22:02:48 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d989ddc5ddefdfc8dd66e09522cc9c8858e44d5067bbab1171d8bdd03a549835`  
		Last Modified: Tue, 26 Jun 2018 22:03:08 GMT  
		Size: 60.7 MB (60731074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8d3029b9f11df1322e2029d30da5872a590d7a91c3c2b792acb3a269222537`  
		Last Modified: Tue, 26 Jun 2018 22:02:49 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649a9dc344b0d6b7516cdfc9244c16f92d4df5755c61d26247725bbcc4b50768`  
		Last Modified: Tue, 26 Jun 2018 22:02:48 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:0fb13324c13ff4f746174fd57e4e15b76b0abdbb98dd5f72a8da8d5e34290c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:302dc3b6d1c8a349dc816bb8c03d49b513c7515abe032864993341eb9402eb43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114991787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c980f2a6babbe34c3051424dbb09e0559cb75b156deb4fc45d6539ac083468ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:58:32 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 26 Jun 2018 21:58:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 26 Jun 2018 21:58:33 GMT
ENV ARCHITECTURE=amd64
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_VERSION=2.8.11
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Tue, 26 Jun 2018 21:58:34 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Tue, 26 Jun 2018 21:59:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 26 Jun 2018 21:59:40 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Tue, 26 Jun 2018 21:59:40 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Tue, 26 Jun 2018 21:59:41 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Tue, 26 Jun 2018 21:59:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 21:59:41 GMT
EXPOSE 8529/tcp
# Tue, 26 Jun 2018 21:59:42 GMT
USER [arangodb]
# Tue, 26 Jun 2018 21:59:42 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1992bdac224818357d6aaac440abb53d8f46a8851d4a8e18b3f1293836e6cf`  
		Last Modified: Tue, 26 Jun 2018 22:02:48 GMT  
		Size: 7.4 KB (7417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d989ddc5ddefdfc8dd66e09522cc9c8858e44d5067bbab1171d8bdd03a549835`  
		Last Modified: Tue, 26 Jun 2018 22:03:08 GMT  
		Size: 60.7 MB (60731074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8d3029b9f11df1322e2029d30da5872a590d7a91c3c2b792acb3a269222537`  
		Last Modified: Tue, 26 Jun 2018 22:02:49 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649a9dc344b0d6b7516cdfc9244c16f92d4df5755c61d26247725bbcc4b50768`  
		Last Modified: Tue, 26 Jun 2018 22:02:48 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:6bfa081ce5ff185354ce30e3ed20311ad7ecb2849154cb3c3a4c7dec1d9df55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:530258f3ec4e59de5020d57b8ac6f2b05524fc52597ac09a5a2a73fd72d61776
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112663748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0a9cc03a7979bd72da593f914aeea75337ccde4b238be846ec5edd16dfbd55`
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
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARANGO_VERSION=3.2.15
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Tue, 26 Jun 2018 21:59:56 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Tue, 26 Jun 2018 21:59:56 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Tue, 26 Jun 2018 22:00:41 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:00:45 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 26 Jun 2018 22:01:01 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:01:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:01:19 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 26 Jun 2018 22:01:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 26 Jun 2018 22:01:20 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Tue, 26 Jun 2018 22:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 22:01:21 GMT
EXPOSE 8529/tcp
# Tue, 26 Jun 2018 22:01:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5fd3803bc2ede35c64d918e0ca0748c573aa4b04332bbc0d36247af9f55317`  
		Last Modified: Tue, 26 Jun 2018 22:03:38 GMT  
		Size: 6.6 MB (6561588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93b4332f0961132189f13911a22304a4b0aeac052699b5e8265a9f17abe72f9`  
		Last Modified: Tue, 26 Jun 2018 22:03:33 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1576d91cf7464fb02df3709873ca257ce48d927aeb43952ed2c769c0c3412471`  
		Last Modified: Tue, 26 Jun 2018 22:03:36 GMT  
		Size: 7.4 MB (7353462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75fd303be1fef90ae356a759db32f6881949742b6f5ad527e837d97e8baadb9`  
		Last Modified: Tue, 26 Jun 2018 22:03:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37776225f7baacccf1fe2e9c71937bba9e8bb200c921679f6e2acd871d841ac1`  
		Last Modified: Tue, 26 Jun 2018 22:03:54 GMT  
		Size: 53.4 MB (53424051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f1fbe53c7badefa2757d449798b97e224c04385acaacd385c0facb0fdf21d0`  
		Last Modified: Tue, 26 Jun 2018 22:03:34 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.15`

```console
$ docker pull arangodb@sha256:6bfa081ce5ff185354ce30e3ed20311ad7ecb2849154cb3c3a4c7dec1d9df55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2.15` - linux; amd64

```console
$ docker pull arangodb@sha256:530258f3ec4e59de5020d57b8ac6f2b05524fc52597ac09a5a2a73fd72d61776
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112663748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0a9cc03a7979bd72da593f914aeea75337ccde4b238be846ec5edd16dfbd55`
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
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARANGO_VERSION=3.2.15
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 26 Jun 2018 21:59:55 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.15-1_amd64.deb
# Tue, 26 Jun 2018 21:59:56 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb
# Tue, 26 Jun 2018 21:59:56 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.15-1_amd64.deb.asc
# Tue, 26 Jun 2018 22:00:41 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:00:45 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 26 Jun 2018 22:01:01 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:01:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:01:19 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 26 Jun 2018 22:01:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 26 Jun 2018 22:01:20 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Tue, 26 Jun 2018 22:01:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 22:01:21 GMT
EXPOSE 8529/tcp
# Tue, 26 Jun 2018 22:01:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5fd3803bc2ede35c64d918e0ca0748c573aa4b04332bbc0d36247af9f55317`  
		Last Modified: Tue, 26 Jun 2018 22:03:38 GMT  
		Size: 6.6 MB (6561588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93b4332f0961132189f13911a22304a4b0aeac052699b5e8265a9f17abe72f9`  
		Last Modified: Tue, 26 Jun 2018 22:03:33 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1576d91cf7464fb02df3709873ca257ce48d927aeb43952ed2c769c0c3412471`  
		Last Modified: Tue, 26 Jun 2018 22:03:36 GMT  
		Size: 7.4 MB (7353462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75fd303be1fef90ae356a759db32f6881949742b6f5ad527e837d97e8baadb9`  
		Last Modified: Tue, 26 Jun 2018 22:03:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37776225f7baacccf1fe2e9c71937bba9e8bb200c921679f6e2acd871d841ac1`  
		Last Modified: Tue, 26 Jun 2018 22:03:54 GMT  
		Size: 53.4 MB (53424051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f1fbe53c7badefa2757d449798b97e224c04385acaacd385c0facb0fdf21d0`  
		Last Modified: Tue, 26 Jun 2018 22:03:34 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:760764143e71cd491a1b8bd3d33f6a3a750db6aa5766615f21f648ec4b714f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

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

## `arangodb:3.3.11`

```console
$ docker pull arangodb@sha256:760764143e71cd491a1b8bd3d33f6a3a750db6aa5766615f21f648ec4b714f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.11` - linux; amd64

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

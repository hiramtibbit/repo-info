## `arangodb:latest`

```console
$ docker pull arangodb@sha256:01c99317ba03dd83cff9d1674af7b5630fda7a308efa48ce2d4996b0ea95f13e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:91c043cc487e3a3e0c16e5729598471862290153d4ea077c855df93c58e5c94f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116836717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e554afc44da0a640eabae08ee8c8245ac9999191ad06d54d92077ddb9eb0ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 01:47:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 17 Jul 2018 01:47:22 GMT
ENV ARCHITECTURE=amd64
# Tue, 17 Jul 2018 01:47:22 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_VERSION=3.3.12
# Tue, 17 Jul 2018 01:48:39 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:49 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb
# Tue, 17 Jul 2018 01:48:50 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.12-1_amd64.deb.asc
# Tue, 17 Jul 2018 01:48:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:24 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 17 Jul 2018 01:49:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:49:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 01:50:06 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 17 Jul 2018 01:50:16 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 17 Jul 2018 01:50:17 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Tue, 17 Jul 2018 01:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 01:50:18 GMT
EXPOSE 8529/tcp
# Tue, 17 Jul 2018 01:50:18 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57766d9e96c5558e16749f54fc70685985861cef2e4a28a3b88e2a632c687fd8`  
		Last Modified: Tue, 17 Jul 2018 01:51:57 GMT  
		Size: 6.6 MB (6561834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a0fc72fc7bf2c5a526dd5e2fb1401c4185cd1f09598cf89b487c655153486`  
		Last Modified: Tue, 17 Jul 2018 01:51:52 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624afc3c4d0d2e84b6e4d1a68d7f5d82ae272db58e6067c282646fe99dc4e0ef`  
		Last Modified: Tue, 17 Jul 2018 01:51:55 GMT  
		Size: 7.3 MB (7320904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b179f955dfa997ddf82f1058c2d86d376ff37bf572d47b09987ab2603d02a5`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070c94aba6cf414b786393b5254bd09f192f07b4de544f33ca08ae748edf307e`  
		Last Modified: Tue, 17 Jul 2018 01:52:14 GMT  
		Size: 57.6 MB (57638552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d10465459b135a4b2d7270ce0333addcd0191b77c31d1b7842b5f68867fc33`  
		Last Modified: Tue, 17 Jul 2018 01:51:53 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:19e54f128c19b350f23bcdeb8557f55df7975f99977a498d08bf9447cc62c54f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:a58f5ec9fe82f188466c5dd29a9d8ae947ae49780e5c9757c383deddd28853be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117606306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9daf3358dd6ff7da0a7208ce18d7a61f67f92a587835718876015194b1547a`
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
# Thu, 25 Oct 2018 01:03:47 GMT
ENV ARANGO_VERSION=3.3.19
# Thu, 25 Oct 2018 01:03:48 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 25 Oct 2018 01:03:48 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.19-1_amd64.deb
# Thu, 25 Oct 2018 01:03:48 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.19-1_amd64.deb
# Thu, 25 Oct 2018 01:03:48 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.19-1_amd64.deb.asc
# Thu, 25 Oct 2018 01:03:55 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 01:04:06 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 25 Oct 2018 01:04:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 01:04:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 25 Oct 2018 01:04:31 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 25 Oct 2018 01:04:31 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 25 Oct 2018 01:04:32 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Thu, 25 Oct 2018 01:04:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Oct 2018 01:04:33 GMT
EXPOSE 8529/tcp
# Thu, 25 Oct 2018 01:04:33 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71184a3ad0a62e6a0836cacfb7ed719eb80b078a8af322639a2eeb254716e8d`  
		Last Modified: Thu, 25 Oct 2018 01:04:51 GMT  
		Size: 6.6 MB (6561805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b945b03376b5f727a2cd22d863cc3384e2bc6869286435ee664e2d46c37e10a9`  
		Last Modified: Thu, 25 Oct 2018 01:04:48 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16e480ad8188adf4b5c4decfd09aa5df2e344cd3677fd43f66eabd4dbd6c79b`  
		Last Modified: Thu, 25 Oct 2018 01:04:50 GMT  
		Size: 7.4 MB (7408565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f21ba9c3c432b9da243ee547b6e9feb69dababf7915e870e58c4efb20eb7eff`  
		Last Modified: Thu, 25 Oct 2018 01:04:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e161ba20857c41402c0b316e35c96f7025293a99a63bc328ee1418e9e429299`  
		Last Modified: Thu, 25 Oct 2018 01:05:04 GMT  
		Size: 58.3 MB (58320383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035794471fbe9b7c45c0a75270abf42741542d8e2d863d330870b431235e6e57`  
		Last Modified: Thu, 25 Oct 2018 01:04:49 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

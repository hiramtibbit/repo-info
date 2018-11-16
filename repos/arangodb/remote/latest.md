## `arangodb:latest`

```console
$ docker pull arangodb@sha256:8ba2b9d8e67869bf8c39065a2db7b0c077b0008a9beb08baddfc328cdcbe9a83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:73c79c2950686241e82cecfc411f93f9cd8b860ed2a992f962cf5a41fbfd4b91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117620626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd28f3d79deaac846fb8869a6349278a92cda4cc1f04ad72390e6d74c5e90e35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:53:49 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 16 Nov 2018 10:53:49 GMT
ENV ARCHITECTURE=amd64
# Fri, 16 Nov 2018 10:53:50 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 16 Nov 2018 10:53:50 GMT
ENV ARANGO_VERSION=3.3.19
# Fri, 16 Nov 2018 10:53:50 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 16 Nov 2018 10:53:50 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.19-1_amd64.deb
# Fri, 16 Nov 2018 10:53:51 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.19-1_amd64.deb
# Fri, 16 Nov 2018 10:53:51 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.19-1_amd64.deb.asc
# Fri, 16 Nov 2018 10:53:58 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:54:48 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 16 Nov 2018 10:55:08 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 10:55:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 10:55:26 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 16 Nov 2018 10:55:27 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 16 Nov 2018 10:55:28 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Fri, 16 Nov 2018 10:55:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 10:55:41 GMT
EXPOSE 8529/tcp
# Fri, 16 Nov 2018 10:55:41 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcdb0d9835cd8a8c309e9a8c91ba7419a49c598a1b5521c9d94ef3508038bf7`  
		Last Modified: Fri, 16 Nov 2018 10:59:30 GMT  
		Size: 6.6 MB (6565475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f888914c506d27fbdf52443daa4cbffc89111c57a642a204f0b55056e8b2f8`  
		Last Modified: Fri, 16 Nov 2018 10:59:28 GMT  
		Size: 3.5 KB (3470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef9cb0e57ed6384eb8ff51b190aa0657490a30843707fdc42454c95a0ac75f1`  
		Last Modified: Fri, 16 Nov 2018 10:59:29 GMT  
		Size: 7.4 MB (7408777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6a514897da7ab8e6aa69f8f9e65c3748ddbeecd803c7aa5c1ab2e98e47e160`  
		Last Modified: Fri, 16 Nov 2018 10:59:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbdb2e2af3b4df5945ada29988167c8caa12b0b689e87e446e5012d6c58379`  
		Last Modified: Fri, 16 Nov 2018 10:59:40 GMT  
		Size: 58.3 MB (58320494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdb5fe9a71a551ebd299e865357fbc15562b86072d74a4f55a7c3a27dd67fa1`  
		Last Modified: Fri, 16 Nov 2018 10:59:28 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

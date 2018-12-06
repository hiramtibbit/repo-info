## `arangodb:latest`

```console
$ docker pull arangodb@sha256:a190a8a97837d05d604ea35d5eec76fea8a27bc65428804efa5bbf0e5dade011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:48794daf40f373953eb2bdb0105a95e866fe807921adde4f3e4003e319fb43fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117742057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b429b4e02f5a56b93c5fe629a0d1247a48f884fb23b21e2ae6be2f33fb2cc5b4`
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
# Thu, 06 Dec 2018 21:19:42 GMT
ENV ARANGO_VERSION=3.3.20
# Thu, 06 Dec 2018 21:19:42 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.20-1_amd64.deb
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.20-1_amd64.deb
# Thu, 06 Dec 2018 21:19:43 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.20-1_amd64.deb.asc
# Thu, 06 Dec 2018 21:19:51 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:27 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 06 Dec 2018 21:20:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl         numactl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 06 Dec 2018 21:20:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 06 Dec 2018 21:20:59 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 06 Dec 2018 21:20:59 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 06 Dec 2018 21:22:02 GMT
COPY file:4bcca9ee8e4681827859c9d14dae31394f6111804a202c9e25898fd8dcc5c8d4 in /entrypoint.sh 
# Thu, 06 Dec 2018 21:22:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Dec 2018 21:22:03 GMT
EXPOSE 8529/tcp
# Thu, 06 Dec 2018 21:22:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e06c49b6e230235dee0c052222eabaf71a0bcfdd7330c0d707fd23963c9fd5`  
		Last Modified: Thu, 06 Dec 2018 21:22:32 GMT  
		Size: 6.6 MB (6565456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b9556ab05c91ff56911db1f31629d22f00f658a592ca401f5e4f151150aba`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8995ca3689ceafd138316f3fb53ff433c1ed7a1c7ca7ce1a9221be3e615ccf`  
		Last Modified: Thu, 06 Dec 2018 21:22:31 GMT  
		Size: 7.4 MB (7444716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40a131d837aa5ee6d60d499f4fdeb5fe49ccc3012bf167d857caabf06c6aa5`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da918fc0b83cfcc1bba8fe5983ccc9c5a084a9df1eb8f595c5065fbdbc7b6ba6`  
		Last Modified: Thu, 06 Dec 2018 21:22:42 GMT  
		Size: 58.4 MB (58406010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6008219d46e7e2a61fd6340691ddcd786c7001c2be88383a2fc50e5dbc702f58`  
		Last Modified: Thu, 06 Dec 2018 21:22:30 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

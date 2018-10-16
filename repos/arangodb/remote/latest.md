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

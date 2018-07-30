## `arangodb:latest`

```console
$ docker pull arangodb@sha256:4cbf9590e3ee15cdc30061e7831501c4818b5eff5b3c7f9f9da401754beb332c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:dd523f9636025e6d931aa1dd4b71b2948b242932e98f5d9a2ba82afdde5816c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116897271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82cc95eaa5f204e4b824fa7f456ab61dc0eb76b09ed7dcfd7ac1f51f5059004`
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
# Mon, 30 Jul 2018 16:21:05 GMT
ENV ARANGO_VERSION=3.3.13
# Mon, 30 Jul 2018 16:21:05 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Mon, 30 Jul 2018 16:21:05 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.13-1_amd64.deb
# Mon, 30 Jul 2018 16:21:05 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.13-1_amd64.deb
# Mon, 30 Jul 2018 16:21:05 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.13-1_amd64.deb.asc
# Mon, 30 Jul 2018 16:21:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Jul 2018 16:21:28 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Mon, 30 Jul 2018 16:21:57 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Jul 2018 16:22:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Jul 2018 16:22:19 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Mon, 30 Jul 2018 16:22:19 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Mon, 30 Jul 2018 16:22:20 GMT
COPY file:a1c9828bd2bbf6262810c7ebdad273e47b19b1e40fb23c533431934c89329a8f in /entrypoint.sh 
# Mon, 30 Jul 2018 16:22:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 30 Jul 2018 16:22:21 GMT
EXPOSE 8529/tcp
# Mon, 30 Jul 2018 16:22:21 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345708f0abf9ff20ae9dbf360ca9ed5b6b91ff3045ccd1d5e9a7533f0441137e`  
		Last Modified: Mon, 30 Jul 2018 16:22:51 GMT  
		Size: 6.6 MB (6561840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023d658cc0dc23304eafb5eb7929f8735f132ac8c29d88bd7b5c9889d9fc6b64`  
		Last Modified: Mon, 30 Jul 2018 16:22:46 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b08f9807deb20f004b71cdddefa2e6f161efa7311fe23df94225c5d1a9ca7e`  
		Last Modified: Mon, 30 Jul 2018 16:22:49 GMT  
		Size: 7.3 MB (7320830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4986154816c0587626838a8f33aa34806f147c8eb2e32f8740c4d6c171f837`  
		Last Modified: Mon, 30 Jul 2018 16:22:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48429ea6f6c72583722968c82fa2df69f7334ef8158b55e032cbcde6a2f02896`  
		Last Modified: Mon, 30 Jul 2018 16:23:08 GMT  
		Size: 57.7 MB (57699174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462f9d14c9ef50cb70a14248d22286fc7c4b6ff9fb2cedf6b58e35adc30594a2`  
		Last Modified: Mon, 30 Jul 2018 16:22:46 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

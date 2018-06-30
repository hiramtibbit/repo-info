## `arangodb:latest`

```console
$ docker pull arangodb@sha256:18674e38d44c3f07b88551b2ce61623e703408a13dfd4e9f3444174aab41bd99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:767f53a1e9548695a232c98d066dcf0b347abc9e39220f9fd2ccffac6348c0ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116927282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf957a4e418b2495feb22a31fa40e03f0c607ee46d724ffeccb79f85db4906e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Fri, 29 Jun 2018 23:20:22 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 29 Jun 2018 23:20:22 GMT
ENV ARCHITECTURE=amd64
# Fri, 29 Jun 2018 23:20:23 GMT
ENV DEB_PACKAGE_VERSION=1
# Fri, 29 Jun 2018 23:21:25 GMT
ENV ARANGO_VERSION=3.3.11
# Fri, 29 Jun 2018 23:21:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Fri, 29 Jun 2018 23:21:26 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.11-1_amd64.deb
# Fri, 29 Jun 2018 23:21:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb
# Fri, 29 Jun 2018 23:21:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.11-1_amd64.deb.asc
# Fri, 29 Jun 2018 23:21:31 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 23:21:45 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 29 Jun 2018 23:21:52 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Fri, 29 Jun 2018 23:21:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 29 Jun 2018 23:22:05 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf     && chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps     && chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps     &&     rm -f ${ARANGO_PACKAGE}*
# Fri, 29 Jun 2018 23:22:06 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 29 Jun 2018 23:22:06 GMT
COPY file:f1d7a2da62ae377ee32c18cf950d6507b5184b50e05c06ad6f35243591159860 in /entrypoint.sh 
# Fri, 29 Jun 2018 23:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 29 Jun 2018 23:22:07 GMT
EXPOSE 8529/tcp
# Fri, 29 Jun 2018 23:22:07 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdda0abcc42ffa91c9cdb0edb7466df03686a1eabc69e58f8d15bd05da6f9471`  
		Last Modified: Fri, 29 Jun 2018 23:23:38 GMT  
		Size: 6.6 MB (6561548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489cc642263e4577ebbee7267f06a8c5b7a50ac2900055a6463df20a9e23a520`  
		Last Modified: Fri, 29 Jun 2018 23:23:35 GMT  
		Size: 3.5 KB (3475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88814bd6d5534cadea269d5b14bbd36d1cd31b437a0403276f9adc7f8b299d0`  
		Last Modified: Fri, 29 Jun 2018 23:23:36 GMT  
		Size: 7.4 MB (7353237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c2fcd96b3a19d5a3da7299e2805d69ffbbfd8a5d25faddfb5fa82c0eb374b8`  
		Last Modified: Fri, 29 Jun 2018 23:23:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc71e97425fde177a514903d641d85d8e90d623ccd52a51e43b4054e07af97d`  
		Last Modified: Fri, 29 Jun 2018 23:23:44 GMT  
		Size: 57.7 MB (57687912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e761c6ac4f381f8a0ce6fe832307ff828427e8ca7711730e89d551017668a43c`  
		Last Modified: Fri, 29 Jun 2018 23:23:35 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

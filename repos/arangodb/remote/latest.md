## `arangodb:latest`

```console
$ docker pull arangodb@sha256:bf9f309da4bfff82b5e1bfd825a8099208ec51b4f1761291fe4048df58836fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:cade2b75ec0cca21c271f70a835adf99b55af85c798f38c61eed63c722558322
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115811926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6311badb97c9618ab6a427a5f65198bd575291f8f3dcc1005c52e43fad8801`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 01:10:27 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 14 Mar 2018 01:10:27 GMT
ENV ARCHITECTURE=amd64
# Wed, 14 Mar 2018 01:10:27 GMT
ENV DEB_PACKAGE_VERSION=1
# Thu, 29 Mar 2018 03:00:40 GMT
ENV ARANGO_VERSION=3.3.5
# Thu, 29 Mar 2018 03:00:40 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 29 Mar 2018 03:00:40 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.5-1_amd64.deb
# Thu, 29 Mar 2018 03:00:40 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.5-1_amd64.deb
# Thu, 29 Mar 2018 03:00:41 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.5-1_amd64.deb.asc
# Thu, 29 Mar 2018 03:00:49 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 03:01:11 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 29 Mar 2018 03:01:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 03:01:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 29 Mar 2018 03:01:38 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 29 Mar 2018 03:01:38 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 29 Mar 2018 03:01:39 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Thu, 29 Mar 2018 03:01:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Mar 2018 03:01:40 GMT
EXPOSE 8529/tcp
# Thu, 29 Mar 2018 03:01:40 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726daef28d71e0a74d45473950ea9dc02cc1f57b5f2e90527829a5fc9cf74adf`  
		Last Modified: Thu, 29 Mar 2018 03:02:08 GMT  
		Size: 6.9 MB (6921145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9785cd5e1aadbff530748c8902564ddda3ce6a84858deea256fcc0106851d1`  
		Last Modified: Thu, 29 Mar 2018 03:02:05 GMT  
		Size: 3.5 KB (3469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce5dd69e9ed4e4337c7d20b8560e5f3c33563084317142906c6e315e5acbcac`  
		Last Modified: Thu, 29 Mar 2018 03:02:06 GMT  
		Size: 7.4 MB (7351621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b52525dc244594fbd32aa8fc107f6c2c5b52428ff049ab10ff480309742f77`  
		Last Modified: Thu, 29 Mar 2018 03:02:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45e9a6cd16d6f4f30b7a351666fe615b12ea8bb8b0837dd804ebb7e5164b2fc`  
		Last Modified: Thu, 29 Mar 2018 03:02:13 GMT  
		Size: 56.4 MB (56398660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b62f98d3d19e592c6afab4104b817d47f8026c6d76137f86812522257a7b3e`  
		Last Modified: Thu, 29 Mar 2018 03:02:05 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

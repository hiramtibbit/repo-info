## `arangodb:latest`

```console
$ docker pull arangodb@sha256:c3cb7be923496c3d19fa1f35407e5bf7e39fc49c4f2a22b13893044836077533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:b67c1735799339a92cd303706a32c5aef3834bd0b6c5d3be68fdc175aeaf8d7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115787810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d86b9eb3d7824a94e53eb5354ea3ea32afb587e48265e231076253512e97635`
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
# Wed, 14 Mar 2018 01:10:27 GMT
ENV ARANGO_VERSION=3.3.4
# Wed, 14 Mar 2018 01:10:28 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Wed, 14 Mar 2018 01:10:28 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.4-1_amd64.deb
# Wed, 14 Mar 2018 01:10:28 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb
# Wed, 14 Mar 2018 01:10:28 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.4-1_amd64.deb.asc
# Wed, 14 Mar 2018 01:10:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 01:10:39 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 14 Mar 2018 01:10:46 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 01:10:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 01:11:00 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 14 Mar 2018 01:11:01 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 14 Mar 2018 01:11:01 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Wed, 14 Mar 2018 01:11:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 01:11:02 GMT
EXPOSE 8529/tcp
# Wed, 14 Mar 2018 01:11:03 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99311a2d4b2d94eb03e57aaf7ac33e59596d4843ce0b640e804b730b5a2fb93`  
		Last Modified: Wed, 14 Mar 2018 01:24:26 GMT  
		Size: 6.9 MB (6921122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1d3f4546f5db61a44205036e20fe9f69e66616e3960c76fa7b5904bb5ea56f`  
		Last Modified: Wed, 14 Mar 2018 01:24:22 GMT  
		Size: 3.5 KB (3466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5eace7367bf45f9d18d62e68b8a7d038de144ef193770950b2e1de08826328`  
		Last Modified: Wed, 14 Mar 2018 01:24:24 GMT  
		Size: 7.4 MB (7351549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f743141c6914ae13bb7cea7d3983cf79fe89a78dde4834c52a9d2bbaee880927`  
		Last Modified: Wed, 14 Mar 2018 01:24:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f59b4a6d40e24b0bf5cfeb2f1f1dbb4741ad047e9b504ae7bf10e2c749e960`  
		Last Modified: Wed, 14 Mar 2018 01:24:34 GMT  
		Size: 56.4 MB (56374644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e92fdd569bc3ea35aae5848e40744109b72e56f26f3ae187d325e6a26bd3c7`  
		Last Modified: Wed, 14 Mar 2018 01:24:22 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

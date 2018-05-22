## `arangodb:latest`

```console
$ docker pull arangodb@sha256:39defa9c931e5d31b93c32cbdb004a3aadd46a55b34ba904090fe9b3859795c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:36e6443d41f939854f64b6fa59ebe6174b823c864901f1bb987b30f710b3d7cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116740728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9604998ac3aefc50a85518952fa7aec2f7fa66e0260b6b922e71953e60399e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:20 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Tue, 01 May 2018 08:07:20 GMT
ENV ARCHITECTURE=amd64
# Tue, 01 May 2018 08:07:20 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 22 May 2018 18:19:25 GMT
ENV ARANGO_VERSION=3.3.9
# Tue, 22 May 2018 18:19:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Tue, 22 May 2018 18:19:25 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.9-1_amd64.deb
# Tue, 22 May 2018 18:19:25 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.9-1_amd64.deb
# Tue, 22 May 2018 18:19:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.9-1_amd64.deb.asc
# Tue, 22 May 2018 18:19:39 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 22 May 2018 18:19:43 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 22 May 2018 18:19:53 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 22 May 2018 18:19:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 22 May 2018 18:20:07 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 22 May 2018 18:20:07 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 22 May 2018 18:20:08 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Tue, 22 May 2018 18:20:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 May 2018 18:20:08 GMT
EXPOSE 8529/tcp
# Tue, 22 May 2018 18:20:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393e365da48900788bb87cae540a1fd7286f826ed40b9ac07369d512e9889e51`  
		Last Modified: Tue, 22 May 2018 18:21:57 GMT  
		Size: 6.6 MB (6561201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb8bf0789a1b8c7b2b29b7fc5dabeeab31aeb5bd5f500632bebc1d931e1f3de`  
		Last Modified: Tue, 22 May 2018 18:21:54 GMT  
		Size: 3.5 KB (3468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864de0936bc35242dbfc171fa38af9905ca9b507cf3ada68cf10bdee10f2cc23`  
		Last Modified: Tue, 22 May 2018 18:21:53 GMT  
		Size: 7.4 MB (7353210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20143a18fb440f8e5f785f22277ef602e66d5042fe164e47220a6fb22ef9c60a`  
		Last Modified: Tue, 22 May 2018 18:21:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2f0ed49c725e71eb2d5ee8c741493eedc1ed60d9e58bdb5c77c51cc8259a49`  
		Last Modified: Tue, 22 May 2018 18:22:05 GMT  
		Size: 57.5 MB (57502736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd8fe7d1d0a84738c0f664844f82b6d372f23b4731e5c03d082c2c9a63b8e2f`  
		Last Modified: Tue, 22 May 2018 18:21:52 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

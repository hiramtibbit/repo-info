<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `arangodb`

-	[`arangodb:2.8`](#arangodb28)
-	[`arangodb:2.8.11`](#arangodb2811)
-	[`arangodb:3.2`](#arangodb32)
-	[`arangodb:3.2.14`](#arangodb3214)
-	[`arangodb:3.3`](#arangodb33)
-	[`arangodb:3.3.7`](#arangodb337)
-	[`arangodb:latest`](#arangodblatest)

## `arangodb:2.8`

```console
$ docker pull arangodb@sha256:342a0fe3c28c2e7392f8b3f9f034ac1ba271b783e76725e16dc259f05f1bdfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8` - linux; amd64

```console
$ docker pull arangodb@sha256:9d4d3eee67a2b95f8b3692f78301a32f49297f92f30309a8eec35e9190505791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113344955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367a715e04aba2de4d7efb8ec5dd976dfe06a0739affe4bec0faa7deb9d36350`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 01:08:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 14 Mar 2018 01:08:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 14 Mar 2018 01:08:33 GMT
ENV ARCHITECTURE=amd64
# Wed, 14 Mar 2018 01:08:33 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 14 Mar 2018 01:09:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 14 Mar 2018 01:09:11 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 14 Mar 2018 01:09:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 14 Mar 2018 01:09:12 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 14 Mar 2018 01:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 01:09:13 GMT
EXPOSE 8529/tcp
# Wed, 14 Mar 2018 01:09:13 GMT
USER [arangodb]
# Wed, 14 Mar 2018 01:09:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346f6fbdf9c8019fcb6ba3d999b1c74cca7163c10157a2ce772ba4595dca5ab4`  
		Last Modified: Wed, 14 Mar 2018 01:22:42 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f0416a41eaea1676d346ac139cdab2377ea30723a5a4c894bb64c218407006`  
		Last Modified: Wed, 14 Mar 2018 01:22:53 GMT  
		Size: 60.7 MB (60727767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc9565d2136d1c13cc9e40470dc7f019216f4d5505fd101071ee06f3881a9a2`  
		Last Modified: Wed, 14 Mar 2018 01:22:41 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896a7a162e14c028262f27145ce0078059a6592e45f2db95aa8d9477f15acfd6`  
		Last Modified: Wed, 14 Mar 2018 01:22:41 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:2.8.11`

```console
$ docker pull arangodb@sha256:342a0fe3c28c2e7392f8b3f9f034ac1ba271b783e76725e16dc259f05f1bdfe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:2.8.11` - linux; amd64

```console
$ docker pull arangodb@sha256:9d4d3eee67a2b95f8b3692f78301a32f49297f92f30309a8eec35e9190505791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113344955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:367a715e04aba2de4d7efb8ec5dd976dfe06a0739affe4bec0faa7deb9d36350`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 01:08:31 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 14 Mar 2018 01:08:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 14 Mar 2018 01:08:33 GMT
ENV ARCHITECTURE=amd64
# Wed, 14 Mar 2018 01:08:33 GMT
ENV ARANGO_VERSION=2.8.11
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb2/Debian_8.0
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_PACKAGE=arangodb_2.8.11_amd64.deb
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb
# Wed, 14 Mar 2018 01:08:34 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb2/Debian_8.0/amd64/arangodb_2.8.11_amd64.deb.asc
# Wed, 14 Mar 2018 01:09:10 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libgoogle-perftools4         ca-certificates         pwgen         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*
# Wed, 14 Mar 2018 01:09:11 GMT
RUN chown arangodb:arangodb /var/lib/arangodb &&   chown arangodb:arangodb /var/lib/arangodb-apps
# Wed, 14 Mar 2018 01:09:12 GMT
VOLUME [/var/lib/arangodb /var/lib/arangodb-apps]
# Wed, 14 Mar 2018 01:09:12 GMT
COPY file:d5e2df43b028efe92b9f4dc2dfd67aa54840beb1e09b6c23c32ae8403b0ae7e4 in /entrypoint.sh 
# Wed, 14 Mar 2018 01:09:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 01:09:13 GMT
EXPOSE 8529/tcp
# Wed, 14 Mar 2018 01:09:13 GMT
USER [arangodb]
# Wed, 14 Mar 2018 01:09:14 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346f6fbdf9c8019fcb6ba3d999b1c74cca7163c10157a2ce772ba4595dca5ab4`  
		Last Modified: Wed, 14 Mar 2018 01:22:42 GMT  
		Size: 7.4 KB (7408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f0416a41eaea1676d346ac139cdab2377ea30723a5a4c894bb64c218407006`  
		Last Modified: Wed, 14 Mar 2018 01:22:53 GMT  
		Size: 60.7 MB (60727767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc9565d2136d1c13cc9e40470dc7f019216f4d5505fd101071ee06f3881a9a2`  
		Last Modified: Wed, 14 Mar 2018 01:22:41 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896a7a162e14c028262f27145ce0078059a6592e45f2db95aa8d9477f15acfd6`  
		Last Modified: Wed, 14 Mar 2018 01:22:41 GMT  
		Size: 1.1 KB (1093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2`

```console
$ docker pull arangodb@sha256:83509489427d0c24295af9459195498cca92d3b919a2f85a09d30b8a026e28f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.2` - linux; amd64

```console
$ docker pull arangodb@sha256:dba26af0276ca74c22549f6620190dfaa006bb5a680ab2c611af57dfaf1ada8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111969877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a7bc4d6f4022f4510f780a137d0db55b283e26ae802a7133b036fc45c9b91d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:38:08 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Thu, 15 Feb 2018 03:38:09 GMT
ENV ARCHITECTURE=amd64
# Thu, 15 Feb 2018 03:38:09 GMT
ENV DEB_PACKAGE_VERSION=1
# Tue, 27 Feb 2018 21:22:07 GMT
ENV ARANGO_VERSION=3.2.12
# Tue, 27 Feb 2018 21:22:07 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb32/Debian_9.0
# Tue, 27 Feb 2018 21:22:08 GMT
ENV ARANGO_PACKAGE=arangodb3-3.2.12-1_amd64.deb
# Tue, 27 Feb 2018 21:22:08 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.12-1_amd64.deb
# Tue, 27 Feb 2018 21:22:08 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb32/Debian_9.0/amd64/arangodb3-3.2.12-1_amd64.deb.asc
# Tue, 27 Feb 2018 21:22:16 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Tue, 27 Feb 2018 21:22:19 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Tue, 27 Feb 2018 21:22:26 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Tue, 27 Feb 2018 21:22:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Feb 2018 21:22:44 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Tue, 27 Feb 2018 21:22:44 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Tue, 27 Feb 2018 21:22:45 GMT
COPY file:aaac4dd78c57645478228d15f02c75572e9d7ff3ecdd6af4812113ee60663d86 in /entrypoint.sh 
# Tue, 27 Feb 2018 21:22:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Feb 2018 21:22:46 GMT
EXPOSE 8529/tcp
# Tue, 27 Feb 2018 21:22:46 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc90e1b1b277ee4e7c8ddc1073bf3b5b60426969fe446d307dc5cac02f00759`  
		Last Modified: Tue, 27 Feb 2018 21:23:10 GMT  
		Size: 6.9 MB (6921050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ab86572c9a7b7197d7fd6073cea6f1c93c0a9b81c423d11e91609644c3c8ae`  
		Last Modified: Tue, 27 Feb 2018 21:23:06 GMT  
		Size: 3.5 KB (3467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291143033722086097bb7bdfcc5ef67b6c5bfa4f4bc7767506ed88e5f4db0338`  
		Last Modified: Tue, 27 Feb 2018 21:23:08 GMT  
		Size: 7.4 MB (7351503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e850c9c3528326e6237bda8ef81e4c960d96bc90e99beeccb82729f4888d37d0`  
		Last Modified: Tue, 27 Feb 2018 21:23:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f6399022839a4dd6558a85174faa79965d7131ac9709e12bb4952ffffc2d30`  
		Last Modified: Tue, 27 Feb 2018 21:23:15 GMT  
		Size: 52.6 MB (52559275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb464e60fa9823794d9963c7dddd61b990942f1819e09b9d19c2e6703c1dbaa`  
		Last Modified: Tue, 27 Feb 2018 21:23:07 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.2.14`

**does not exist** (yet?)

## `arangodb:3.3`

```console
$ docker pull arangodb@sha256:177ea3e3a7bd3a2e3fd03a09e2de1ab2fd3f4e266ad3aea8c987e2abb3862782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3` - linux; amd64

```console
$ docker pull arangodb@sha256:fb64ad53921185a1afb6129bc6d4961b858da3719dccc0a07268d1437adc81f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115817402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30e16b12de2989a0b34fca471e65eeeb77b0bc3effd0809cfcf2262c0d59140`
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
# Thu, 12 Apr 2018 19:58:10 GMT
ENV ARANGO_VERSION=3.3.7
# Thu, 12 Apr 2018 19:58:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.7-1_amd64.deb
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb.asc
# Thu, 12 Apr 2018 19:58:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 20:00:02 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 12 Apr 2018 20:00:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 20:00:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 12 Apr 2018 20:00:24 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 12 Apr 2018 20:00:25 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 12 Apr 2018 20:00:25 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Thu, 12 Apr 2018 20:00:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 20:00:26 GMT
EXPOSE 8529/tcp
# Thu, 12 Apr 2018 20:00:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d31955036820b7e9dc0621f26f71513fdc23290e737c82e7d4dda65038752c`  
		Last Modified: Thu, 12 Apr 2018 20:12:28 GMT  
		Size: 6.9 MB (6921096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bc8979509da7dbfe1ac477427a132a32a5c5229bde16cc69d3f3f3abd4cb8b`  
		Last Modified: Thu, 12 Apr 2018 20:12:18 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e327384b999aab76ba07fbe2423db2895d64bfe9d7094c2cb863ab9363ddac`  
		Last Modified: Thu, 12 Apr 2018 20:12:27 GMT  
		Size: 7.4 MB (7352531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5289f6336aa176d3198a2db8d292ea620945eb970e36984ffb77877811cd57e`  
		Last Modified: Thu, 12 Apr 2018 20:12:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caad630478ac546520057cfdbdb305e546076470da56eab5c8e6ce6f73d7bcb`  
		Last Modified: Thu, 12 Apr 2018 20:14:02 GMT  
		Size: 56.4 MB (56403276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f04dcffd592be9f83f07de0a59b67389232783a67256faa232fac3bc5961e1`  
		Last Modified: Thu, 12 Apr 2018 20:12:16 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:3.3.7`

```console
$ docker pull arangodb@sha256:177ea3e3a7bd3a2e3fd03a09e2de1ab2fd3f4e266ad3aea8c987e2abb3862782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:3.3.7` - linux; amd64

```console
$ docker pull arangodb@sha256:fb64ad53921185a1afb6129bc6d4961b858da3719dccc0a07268d1437adc81f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115817402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30e16b12de2989a0b34fca471e65eeeb77b0bc3effd0809cfcf2262c0d59140`
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
# Thu, 12 Apr 2018 19:58:10 GMT
ENV ARANGO_VERSION=3.3.7
# Thu, 12 Apr 2018 19:58:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.7-1_amd64.deb
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb.asc
# Thu, 12 Apr 2018 19:58:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 20:00:02 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 12 Apr 2018 20:00:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 20:00:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 12 Apr 2018 20:00:24 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 12 Apr 2018 20:00:25 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 12 Apr 2018 20:00:25 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Thu, 12 Apr 2018 20:00:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 20:00:26 GMT
EXPOSE 8529/tcp
# Thu, 12 Apr 2018 20:00:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d31955036820b7e9dc0621f26f71513fdc23290e737c82e7d4dda65038752c`  
		Last Modified: Thu, 12 Apr 2018 20:12:28 GMT  
		Size: 6.9 MB (6921096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bc8979509da7dbfe1ac477427a132a32a5c5229bde16cc69d3f3f3abd4cb8b`  
		Last Modified: Thu, 12 Apr 2018 20:12:18 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e327384b999aab76ba07fbe2423db2895d64bfe9d7094c2cb863ab9363ddac`  
		Last Modified: Thu, 12 Apr 2018 20:12:27 GMT  
		Size: 7.4 MB (7352531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5289f6336aa176d3198a2db8d292ea620945eb970e36984ffb77877811cd57e`  
		Last Modified: Thu, 12 Apr 2018 20:12:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caad630478ac546520057cfdbdb305e546076470da56eab5c8e6ce6f73d7bcb`  
		Last Modified: Thu, 12 Apr 2018 20:14:02 GMT  
		Size: 56.4 MB (56403276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f04dcffd592be9f83f07de0a59b67389232783a67256faa232fac3bc5961e1`  
		Last Modified: Thu, 12 Apr 2018 20:12:16 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `arangodb:latest`

```console
$ docker pull arangodb@sha256:177ea3e3a7bd3a2e3fd03a09e2de1ab2fd3f4e266ad3aea8c987e2abb3862782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:fb64ad53921185a1afb6129bc6d4961b858da3719dccc0a07268d1437adc81f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115817402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30e16b12de2989a0b34fca471e65eeeb77b0bc3effd0809cfcf2262c0d59140`
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
# Thu, 12 Apr 2018 19:58:10 GMT
ENV ARANGO_VERSION=3.3.7
# Thu, 12 Apr 2018 19:58:10 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb33/Debian_9.0
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_PACKAGE=arangodb3-3.3.7-1_amd64.deb
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb
# Thu, 12 Apr 2018 19:58:11 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb33/Debian_9.0/amd64/arangodb3-3.3.7-1_amd64.deb.asc
# Thu, 12 Apr 2018 19:58:19 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gpg dirmngr     &&     rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 20:00:02 GMT
RUN gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Thu, 12 Apr 2018 20:00:09 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 20:00:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 12 Apr 2018 20:00:24 GMT
RUN curl --fail -O ${ARANGO_SIGNATURE_URL} &&           curl --fail -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND="noninteractive" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=).*!\1 -!'         -e 's!^#\s*uid\s*=.*!uid = arangodb!'         -e 's!^#\s*gid\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     rm -f ${ARANGO_PACKAGE}*
# Thu, 12 Apr 2018 20:00:25 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Thu, 12 Apr 2018 20:00:25 GMT
COPY file:c8c98381ee5ef4e7c71a4913d8a58664a5d0b6674fb044613e151b1a6f4d73ac in /entrypoint.sh 
# Thu, 12 Apr 2018 20:00:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 20:00:26 GMT
EXPOSE 8529/tcp
# Thu, 12 Apr 2018 20:00:27 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d31955036820b7e9dc0621f26f71513fdc23290e737c82e7d4dda65038752c`  
		Last Modified: Thu, 12 Apr 2018 20:12:28 GMT  
		Size: 6.9 MB (6921096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bc8979509da7dbfe1ac477427a132a32a5c5229bde16cc69d3f3f3abd4cb8b`  
		Last Modified: Thu, 12 Apr 2018 20:12:18 GMT  
		Size: 3.5 KB (3471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e327384b999aab76ba07fbe2423db2895d64bfe9d7094c2cb863ab9363ddac`  
		Last Modified: Thu, 12 Apr 2018 20:12:27 GMT  
		Size: 7.4 MB (7352531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5289f6336aa176d3198a2db8d292ea620945eb970e36984ffb77877811cd57e`  
		Last Modified: Thu, 12 Apr 2018 20:12:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caad630478ac546520057cfdbdb305e546076470da56eab5c8e6ce6f73d7bcb`  
		Last Modified: Thu, 12 Apr 2018 20:14:02 GMT  
		Size: 56.4 MB (56403276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f04dcffd592be9f83f07de0a59b67389232783a67256faa232fac3bc5961e1`  
		Last Modified: Thu, 12 Apr 2018 20:12:16 GMT  
		Size: 1.8 KB (1836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

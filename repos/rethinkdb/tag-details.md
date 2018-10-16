<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:4c29968663d36756019305814b725a613887c65d2185c3927cdfec1a127f5afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:579dd020267154568cb3bcdf8e22492cf0bae48e9a1cc0b1f7c0389245356d93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991f8de4f998dfa2c93dac4ce506d34bb716fa3eca6ae3acf1dbba5575cb331d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:48:54 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 16 Oct 2018 04:49:00 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 16 Oct 2018 04:49:08 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 16 Oct 2018 04:49:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 16 Oct 2018 04:49:38 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:49:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:49:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:49:38 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 16 Oct 2018 04:49:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e6a3af85481e3ea63293f2718a60e5c2690f85dc03e7050737c11883c26ecb`  
		Last Modified: Tue, 16 Oct 2018 04:49:51 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7d5d347591ec5e28b43498cfcc773bca7fb618bd4c3def33324eddfe31202b`  
		Last Modified: Tue, 16 Oct 2018 04:49:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b01f5c0b29630db0cf140fcb75addd14c3da82a3701cba5ff772ef1b5e7954`  
		Last Modified: Tue, 16 Oct 2018 04:49:55 GMT  
		Size: 23.6 MB (23575330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3975abbee223cc93de5bf4eeb26aa2db73913b4aee72bc62745c2e6c68b2de1a`  
		Last Modified: Tue, 16 Oct 2018 04:49:51 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:4c29968663d36756019305814b725a613887c65d2185c3927cdfec1a127f5afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:579dd020267154568cb3bcdf8e22492cf0bae48e9a1cc0b1f7c0389245356d93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991f8de4f998dfa2c93dac4ce506d34bb716fa3eca6ae3acf1dbba5575cb331d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:48:54 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 16 Oct 2018 04:49:00 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 16 Oct 2018 04:49:08 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 16 Oct 2018 04:49:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 16 Oct 2018 04:49:38 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:49:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:49:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:49:38 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 16 Oct 2018 04:49:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e6a3af85481e3ea63293f2718a60e5c2690f85dc03e7050737c11883c26ecb`  
		Last Modified: Tue, 16 Oct 2018 04:49:51 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7d5d347591ec5e28b43498cfcc773bca7fb618bd4c3def33324eddfe31202b`  
		Last Modified: Tue, 16 Oct 2018 04:49:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b01f5c0b29630db0cf140fcb75addd14c3da82a3701cba5ff772ef1b5e7954`  
		Last Modified: Tue, 16 Oct 2018 04:49:55 GMT  
		Size: 23.6 MB (23575330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3975abbee223cc93de5bf4eeb26aa2db73913b4aee72bc62745c2e6c68b2de1a`  
		Last Modified: Tue, 16 Oct 2018 04:49:51 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:4c29968663d36756019305814b725a613887c65d2185c3927cdfec1a127f5afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:579dd020267154568cb3bcdf8e22492cf0bae48e9a1cc0b1f7c0389245356d93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991f8de4f998dfa2c93dac4ce506d34bb716fa3eca6ae3acf1dbba5575cb331d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:48:54 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 16 Oct 2018 04:49:00 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 16 Oct 2018 04:49:08 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 16 Oct 2018 04:49:08 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 16 Oct 2018 04:49:38 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:49:38 GMT
VOLUME [/data]
# Tue, 16 Oct 2018 04:49:38 GMT
WORKDIR /data
# Tue, 16 Oct 2018 04:49:38 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 16 Oct 2018 04:49:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e6a3af85481e3ea63293f2718a60e5c2690f85dc03e7050737c11883c26ecb`  
		Last Modified: Tue, 16 Oct 2018 04:49:51 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7d5d347591ec5e28b43498cfcc773bca7fb618bd4c3def33324eddfe31202b`  
		Last Modified: Tue, 16 Oct 2018 04:49:52 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b01f5c0b29630db0cf140fcb75addd14c3da82a3701cba5ff772ef1b5e7954`  
		Last Modified: Tue, 16 Oct 2018 04:49:55 GMT  
		Size: 23.6 MB (23575330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3975abbee223cc93de5bf4eeb26aa2db73913b4aee72bc62745c2e6c68b2de1a`  
		Last Modified: Tue, 16 Oct 2018 04:49:51 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:d3317e44cbdae56fff64be2ac0096e5140987621d4b655641197cbd284071a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:d558dfd168983565c6dae01719c973528b4386e4fed49fc45aff0f0cbc43275f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77832015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49dd328850eb5c990a6d67aa1bb73131edc065154fd4b5f99445d246a0e72c36`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:29:56 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 05 Sep 2018 05:30:03 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 05 Sep 2018 05:30:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 05 Sep 2018 05:30:05 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 05 Sep 2018 05:30:32 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:30:33 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 05:30:33 GMT
WORKDIR /data
# Wed, 05 Sep 2018 05:30:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 05 Sep 2018 05:30:33 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84ddae31889b847b9d0a2004b7be8cc3f910f72a6022a2601ca1944aab9122f`  
		Last Modified: Wed, 05 Sep 2018 05:30:46 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd04dc7a271823f637c79a35bf00c42c9ee7d788dfd482d315d3e7590a9a82ad`  
		Last Modified: Wed, 05 Sep 2018 05:30:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6914556605a20a9f7ad0d13f64569e52ea59ded4c47d38dc1e5a3ea0206e399`  
		Last Modified: Wed, 05 Sep 2018 05:30:50 GMT  
		Size: 23.6 MB (23575385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0570462fb41181880d670ed7a52e3233c0bfc736199f55a63c5122d500cbc616`  
		Last Modified: Wed, 05 Sep 2018 05:30:46 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

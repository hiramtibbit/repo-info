<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:58c8066d8292f46bbf9303bb35e6e7ec72d1e11d7ffcd721f83844bed87baba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:eaf3105a295345e280323aa63940d1d5960dcc3f6de26c2fd713149c2b808866
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be18969e519fa412499ea385c497116e56f6469149270b85ef163d55a7266c1b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:39:47 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jul 2018 07:39:57 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 17 Jul 2018 07:40:05 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jul 2018 07:40:06 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 17 Jul 2018 07:40:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:41:03 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:41:03 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:41:04 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jul 2018 07:41:04 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de76b3079de22c17f06977d0e7443f29bf0f204996f87c07d85abe1257dcca3`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf21c6a5affc99bd20e688a307913b41b8d3129ff4c7eff93bfbdbe64cbac15`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20346a2ec50a1bda2f19fc9317061cd4e9f1e1a767aff12336bd15a1bb9a1e0e`  
		Last Modified: Tue, 17 Jul 2018 07:41:43 GMT  
		Size: 23.6 MB (23574685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c46c3f08f97393a0065cb263e39444962bfa6a438055d4fcbd3ea2a30f9ef4`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:58c8066d8292f46bbf9303bb35e6e7ec72d1e11d7ffcd721f83844bed87baba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:eaf3105a295345e280323aa63940d1d5960dcc3f6de26c2fd713149c2b808866
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be18969e519fa412499ea385c497116e56f6469149270b85ef163d55a7266c1b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:39:47 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jul 2018 07:39:57 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 17 Jul 2018 07:40:05 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jul 2018 07:40:06 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 17 Jul 2018 07:40:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:41:03 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:41:03 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:41:04 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jul 2018 07:41:04 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de76b3079de22c17f06977d0e7443f29bf0f204996f87c07d85abe1257dcca3`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf21c6a5affc99bd20e688a307913b41b8d3129ff4c7eff93bfbdbe64cbac15`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20346a2ec50a1bda2f19fc9317061cd4e9f1e1a767aff12336bd15a1bb9a1e0e`  
		Last Modified: Tue, 17 Jul 2018 07:41:43 GMT  
		Size: 23.6 MB (23574685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c46c3f08f97393a0065cb263e39444962bfa6a438055d4fcbd3ea2a30f9ef4`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:58c8066d8292f46bbf9303bb35e6e7ec72d1e11d7ffcd721f83844bed87baba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:eaf3105a295345e280323aa63940d1d5960dcc3f6de26c2fd713149c2b808866
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77831230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be18969e519fa412499ea385c497116e56f6469149270b85ef163d55a7266c1b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 07:39:47 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jul 2018 07:39:57 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 17 Jul 2018 07:40:05 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jul 2018 07:40:06 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 17 Jul 2018 07:40:52 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 07:41:03 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 07:41:03 GMT
WORKDIR /data
# Tue, 17 Jul 2018 07:41:04 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jul 2018 07:41:04 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de76b3079de22c17f06977d0e7443f29bf0f204996f87c07d85abe1257dcca3`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf21c6a5affc99bd20e688a307913b41b8d3129ff4c7eff93bfbdbe64cbac15`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20346a2ec50a1bda2f19fc9317061cd4e9f1e1a767aff12336bd15a1bb9a1e0e`  
		Last Modified: Tue, 17 Jul 2018 07:41:43 GMT  
		Size: 23.6 MB (23574685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c46c3f08f97393a0065cb263e39444962bfa6a438055d4fcbd3ea2a30f9ef4`  
		Last Modified: Tue, 17 Jul 2018 07:41:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:9c6843911fa65f7e1e363b3fcdcd3a11bd3c6502ecbef463c1b665ba3c991233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:4065e8394679c97d56f0a7949d0dc9c73f4834f7b7cb339ae4e682450e817bf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77869693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7655bbaceda31bd722143428695efe114b1312a9fc6182616036a000c024626a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:22:39 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 27 Jun 2018 01:22:46 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 27 Jun 2018 01:22:47 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 27 Jun 2018 01:22:47 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 27 Jun 2018 01:23:19 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:23:19 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:23:19 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:23:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 27 Jun 2018 01:23:19 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839b3e879cdb009b92086c6c7a5daf2fb98595d97c0e5e7a22c0827e136b161b`  
		Last Modified: Wed, 27 Jun 2018 01:23:39 GMT  
		Size: 4.1 KB (4111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc2a61df49696b639f7b395e3830ddaae0eb33b770552686808123305ece6db`  
		Last Modified: Wed, 27 Jun 2018 01:23:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25dd875c39bce132771e1defc084beb1a3a6f7c716d982e35da596164589de9f`  
		Last Modified: Wed, 27 Jun 2018 01:23:46 GMT  
		Size: 23.6 MB (23613237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2754758fe0ebc452375668a7c673808e4bb4f808a35383ffa0cb48919c1770`  
		Last Modified: Wed, 27 Jun 2018 01:23:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

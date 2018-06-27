<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:9c6843911fa65f7e1e363b3fcdcd3a11bd3c6502ecbef463c1b665ba3c991233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

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

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:9c6843911fa65f7e1e363b3fcdcd3a11bd3c6502ecbef463c1b665ba3c991233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

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

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:9c6843911fa65f7e1e363b3fcdcd3a11bd3c6502ecbef463c1b665ba3c991233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

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

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:d84e2ecf2a56d5b21ada0fce607ba7d3f871ba72fa56489d899113e4d61bdb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:9fc3f5e953fe41a7afdf4636848f6f1e3d37fc3501b96702c8f289c8d4fdb5e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77879763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86144ae205fb7bd8c7c29babfc23d08aa24ac7de1cfb5e4e0b64d83105723ad`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 22:10:19 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sun, 29 Apr 2018 22:13:01 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sun, 29 Apr 2018 22:13:02 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sun, 29 Apr 2018 22:13:02 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sun, 29 Apr 2018 22:13:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 22:13:29 GMT
VOLUME [/data]
# Sun, 29 Apr 2018 22:13:29 GMT
WORKDIR /data
# Sun, 29 Apr 2018 22:13:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sun, 29 Apr 2018 22:13:30 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79992e150a5973d6c419b9b98d0106f293df12b558af93e301c996ec3cf0e2b6`  
		Last Modified: Sun, 29 Apr 2018 22:24:01 GMT  
		Size: 4.1 KB (4111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8968a34c54f06edfb2643e93616e5f48ef854dea8e3fea1e27a5f1ac571706`  
		Last Modified: Sun, 29 Apr 2018 22:24:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f0bedb260eec9032431d15097b4e2a1e6dcc222e369559ea183bf108f17acc`  
		Last Modified: Sun, 29 Apr 2018 22:24:05 GMT  
		Size: 23.6 MB (23612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d52a0ae321b28e0456e6714a26791717efaf16d7a85dc02c1db2541750fbed`  
		Last Modified: Sun, 29 Apr 2018 22:24:02 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

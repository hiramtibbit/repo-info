<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:bedfdc8c67361023863d81e12fc33db1a84e0a41de485b6eedb2ed9e839fa894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:edf5596be114df48aea2db5b223d07bda6356fee666a63d3005b64664fee1677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77969774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89488df570370bf502404ceb033ae9bcf49957f447ab59a864cfe8894ee1bc58`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:34:54 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 29 Dec 2018 01:35:25 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 29 Dec 2018 01:35:26 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 29 Dec 2018 01:35:27 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 29 Dec 2018 01:37:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:37:30 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 01:37:30 GMT
WORKDIR /data
# Sat, 29 Dec 2018 01:37:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 29 Dec 2018 01:37:30 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ffc71911fcace556297b6dd027fcb65109309c2815cecb483ef1fb2b5f4656`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced95d665ff57f4c1ccb5d8b8a4b72690e30834fddf80d4bf192287f7201e5fe`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a572b764ba9cb2de70008136bae378610e388ab8c272d1ec6f5cf8960c66d18`  
		Last Modified: Sat, 29 Dec 2018 01:37:46 GMT  
		Size: 23.6 MB (23578235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9f6681cdc84c4dfa6d666eb838ecd32c30d06a00cdb8c6f89aa5f823e85211`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:bedfdc8c67361023863d81e12fc33db1a84e0a41de485b6eedb2ed9e839fa894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:edf5596be114df48aea2db5b223d07bda6356fee666a63d3005b64664fee1677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77969774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89488df570370bf502404ceb033ae9bcf49957f447ab59a864cfe8894ee1bc58`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:34:54 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 29 Dec 2018 01:35:25 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 29 Dec 2018 01:35:26 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 29 Dec 2018 01:35:27 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 29 Dec 2018 01:37:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:37:30 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 01:37:30 GMT
WORKDIR /data
# Sat, 29 Dec 2018 01:37:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 29 Dec 2018 01:37:30 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ffc71911fcace556297b6dd027fcb65109309c2815cecb483ef1fb2b5f4656`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced95d665ff57f4c1ccb5d8b8a4b72690e30834fddf80d4bf192287f7201e5fe`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a572b764ba9cb2de70008136bae378610e388ab8c272d1ec6f5cf8960c66d18`  
		Last Modified: Sat, 29 Dec 2018 01:37:46 GMT  
		Size: 23.6 MB (23578235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9f6681cdc84c4dfa6d666eb838ecd32c30d06a00cdb8c6f89aa5f823e85211`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:bedfdc8c67361023863d81e12fc33db1a84e0a41de485b6eedb2ed9e839fa894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:edf5596be114df48aea2db5b223d07bda6356fee666a63d3005b64664fee1677
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77969774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89488df570370bf502404ceb033ae9bcf49957f447ab59a864cfe8894ee1bc58`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:34:54 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 29 Dec 2018 01:35:25 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 29 Dec 2018 01:35:26 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 29 Dec 2018 01:35:27 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 29 Dec 2018 01:37:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:37:30 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 01:37:30 GMT
WORKDIR /data
# Sat, 29 Dec 2018 01:37:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 29 Dec 2018 01:37:30 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ffc71911fcace556297b6dd027fcb65109309c2815cecb483ef1fb2b5f4656`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced95d665ff57f4c1ccb5d8b8a4b72690e30834fddf80d4bf192287f7201e5fe`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a572b764ba9cb2de70008136bae378610e388ab8c272d1ec6f5cf8960c66d18`  
		Last Modified: Sat, 29 Dec 2018 01:37:46 GMT  
		Size: 23.6 MB (23578235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9f6681cdc84c4dfa6d666eb838ecd32c30d06a00cdb8c6f89aa5f823e85211`  
		Last Modified: Sat, 29 Dec 2018 01:37:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:78dbe069c3d3ebddeaa097a766bff4ea7e0ea6536a1afe9315fe61930dc16eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:916773ba5f7248561433b309460aeeb9ec4e707c3c33bdaa016efdfc4dbb3099
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77938717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75828e1f3c0978e957d27f1ac321d6b033341105e7d2ea3b243136e8048c03d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:34:04 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Fri, 16 Nov 2018 17:34:13 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Fri, 16 Nov 2018 17:34:14 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Fri, 16 Nov 2018 17:34:15 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Fri, 16 Nov 2018 17:35:00 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:35:00 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 17:35:00 GMT
WORKDIR /data
# Fri, 16 Nov 2018 17:35:00 GMT
CMD ["rethinkdb" "--bind" "all"]
# Fri, 16 Nov 2018 17:35:01 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb5b7a3cf61add855378f3ca3bb74fd5f3f0c912a0430b9412771efa93a92f`  
		Last Modified: Fri, 16 Nov 2018 17:35:32 GMT  
		Size: 4.1 KB (4111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd2685edb8c693276889f001b7e689f368a15f93686e741432889a0332927da`  
		Last Modified: Fri, 16 Nov 2018 17:35:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1508dbc4cb3bd567b25151034c4080a11c3d832f7b8916e50cb00e2c9a48565a`  
		Last Modified: Fri, 16 Nov 2018 17:35:39 GMT  
		Size: 23.6 MB (23576451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6905377a36e8ca23d48ecb49214d9c517d4e204d8b93e42094cae5d1a8bddfb2`  
		Last Modified: Fri, 16 Nov 2018 17:35:33 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:3313d033f49a83e56c6d6a6a33a03a908654fcb4526a356861d15afa078c7960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:ce46b519fab3f6c3892410a5bf85453e5053b573bd911653551b928c9c9d089d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30fe3da043631dbb57b1b16cf4967b81696921a116a251d947372b3cee49c3d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:23:48 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 22 Jan 2019 23:24:20 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 22 Jan 2019 23:24:22 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 22 Jan 2019 23:24:22 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 22 Jan 2019 23:26:23 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:26:23 GMT
VOLUME [/data]
# Tue, 22 Jan 2019 23:26:24 GMT
WORKDIR /data
# Tue, 22 Jan 2019 23:26:25 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 22 Jan 2019 23:26:25 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52785efe18024f07d479824f494fd48100081b74e5d600399f7770676681e579`  
		Last Modified: Tue, 22 Jan 2019 23:26:36 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca84154e9f8a4f42d59d54bf6bba4735d27c0aa651030569c810660da554b8fb`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa652f3bab70e94597527af8ad70145dd7fc56d3788fb856aad1ff3f859c84`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 23.6 MB (23578214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058112f3fb11101dfd4d5ea01420cf488f1c40cd473c57d9ff9bddce73f68b63`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:3313d033f49a83e56c6d6a6a33a03a908654fcb4526a356861d15afa078c7960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:ce46b519fab3f6c3892410a5bf85453e5053b573bd911653551b928c9c9d089d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30fe3da043631dbb57b1b16cf4967b81696921a116a251d947372b3cee49c3d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:23:48 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 22 Jan 2019 23:24:20 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 22 Jan 2019 23:24:22 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 22 Jan 2019 23:24:22 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 22 Jan 2019 23:26:23 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:26:23 GMT
VOLUME [/data]
# Tue, 22 Jan 2019 23:26:24 GMT
WORKDIR /data
# Tue, 22 Jan 2019 23:26:25 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 22 Jan 2019 23:26:25 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52785efe18024f07d479824f494fd48100081b74e5d600399f7770676681e579`  
		Last Modified: Tue, 22 Jan 2019 23:26:36 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca84154e9f8a4f42d59d54bf6bba4735d27c0aa651030569c810660da554b8fb`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa652f3bab70e94597527af8ad70145dd7fc56d3788fb856aad1ff3f859c84`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 23.6 MB (23578214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058112f3fb11101dfd4d5ea01420cf488f1c40cd473c57d9ff9bddce73f68b63`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:3313d033f49a83e56c6d6a6a33a03a908654fcb4526a356861d15afa078c7960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:ce46b519fab3f6c3892410a5bf85453e5053b573bd911653551b928c9c9d089d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30fe3da043631dbb57b1b16cf4967b81696921a116a251d947372b3cee49c3d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:23:48 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 22 Jan 2019 23:24:20 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 22 Jan 2019 23:24:22 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 22 Jan 2019 23:24:22 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 22 Jan 2019 23:26:23 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:26:23 GMT
VOLUME [/data]
# Tue, 22 Jan 2019 23:26:24 GMT
WORKDIR /data
# Tue, 22 Jan 2019 23:26:25 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 22 Jan 2019 23:26:25 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52785efe18024f07d479824f494fd48100081b74e5d600399f7770676681e579`  
		Last Modified: Tue, 22 Jan 2019 23:26:36 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca84154e9f8a4f42d59d54bf6bba4735d27c0aa651030569c810660da554b8fb`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa652f3bab70e94597527af8ad70145dd7fc56d3788fb856aad1ff3f859c84`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 23.6 MB (23578214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058112f3fb11101dfd4d5ea01420cf488f1c40cd473c57d9ff9bddce73f68b63`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:bedfdc8c67361023863d81e12fc33db1a84e0a41de485b6eedb2ed9e839fa894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

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

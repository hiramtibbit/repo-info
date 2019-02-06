<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:f71d44a28322bf17aa0d3dd6ccbcba8ff4d59fdda8a132576d6c3132b6ed0e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:1551e86cd54cb12f59e09ce1fac7d0c5bc7308f2fb31aa55d8f93550582aa866
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5039ce55c2091ab2cf7a2fc3438f55e978ec3238c32a013d4d907e5e64f1cbbb`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:57:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 06 Feb 2019 08:58:02 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 06 Feb 2019 08:58:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 06 Feb 2019 08:58:03 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 06 Feb 2019 09:00:04 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:00:04 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:00:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:00:05 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 06 Feb 2019 09:00:05 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14645c8514532df476a8d12df512f0bd69561b72c83246fa53ec060ddd6f208c`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4550880c6e0b8fbc35f23e0273b6d4b6eb248ea8df0c8b4418f54e2593b1f6f`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4225e6f741d5d30dff7dc4d6a047ececd683cced548a4d4bbd6570cb1fff3ab2`  
		Last Modified: Wed, 06 Feb 2019 09:00:19 GMT  
		Size: 23.6 MB (23578742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b67be7bfa46210d9e2277a90dff52c8e948ee79815e224386eb8ac770b818`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:f71d44a28322bf17aa0d3dd6ccbcba8ff4d59fdda8a132576d6c3132b6ed0e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:1551e86cd54cb12f59e09ce1fac7d0c5bc7308f2fb31aa55d8f93550582aa866
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5039ce55c2091ab2cf7a2fc3438f55e978ec3238c32a013d4d907e5e64f1cbbb`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:57:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 06 Feb 2019 08:58:02 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 06 Feb 2019 08:58:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 06 Feb 2019 08:58:03 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 06 Feb 2019 09:00:04 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:00:04 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:00:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:00:05 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 06 Feb 2019 09:00:05 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14645c8514532df476a8d12df512f0bd69561b72c83246fa53ec060ddd6f208c`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4550880c6e0b8fbc35f23e0273b6d4b6eb248ea8df0c8b4418f54e2593b1f6f`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4225e6f741d5d30dff7dc4d6a047ececd683cced548a4d4bbd6570cb1fff3ab2`  
		Last Modified: Wed, 06 Feb 2019 09:00:19 GMT  
		Size: 23.6 MB (23578742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b67be7bfa46210d9e2277a90dff52c8e948ee79815e224386eb8ac770b818`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:f71d44a28322bf17aa0d3dd6ccbcba8ff4d59fdda8a132576d6c3132b6ed0e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:1551e86cd54cb12f59e09ce1fac7d0c5bc7308f2fb31aa55d8f93550582aa866
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5039ce55c2091ab2cf7a2fc3438f55e978ec3238c32a013d4d907e5e64f1cbbb`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:57:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 06 Feb 2019 08:58:02 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 06 Feb 2019 08:58:03 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 06 Feb 2019 08:58:03 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 06 Feb 2019 09:00:04 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:00:04 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 09:00:05 GMT
WORKDIR /data
# Wed, 06 Feb 2019 09:00:05 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 06 Feb 2019 09:00:05 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14645c8514532df476a8d12df512f0bd69561b72c83246fa53ec060ddd6f208c`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 4.1 KB (4112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4550880c6e0b8fbc35f23e0273b6d4b6eb248ea8df0c8b4418f54e2593b1f6f`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4225e6f741d5d30dff7dc4d6a047ececd683cced548a4d4bbd6570cb1fff3ab2`  
		Last Modified: Wed, 06 Feb 2019 09:00:19 GMT  
		Size: 23.6 MB (23578742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3b67be7bfa46210d9e2277a90dff52c8e948ee79815e224386eb8ac770b818`  
		Last Modified: Wed, 06 Feb 2019 09:00:15 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:3313d033f49a83e56c6d6a6a33a03a908654fcb4526a356861d15afa078c7960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

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

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:80967fafeb6cc2491bf8c4b19380889d29a7b8432a7cbd5ec5861c26cc32c785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:50315bd9855a0042780effe43ee51fd60f5979fd65dcd91bce06f37cc6ee51f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc96c8bc6ae57bfea24d848ac04c0dc8f6e148e06717f1e855fe59c3e509b09b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:54:20 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 26 Mar 2019 23:54:52 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 26 Mar 2019 23:54:54 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 26 Mar 2019 23:54:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 26 Mar 2019 23:56:55 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:56:55 GMT
VOLUME [/data]
# Tue, 26 Mar 2019 23:56:56 GMT
WORKDIR /data
# Tue, 26 Mar 2019 23:56:56 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 26 Mar 2019 23:56:57 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa352d0099b2f62926d7e8daf17169a15cdc16dd3a6add66ed7a9e2638b693e`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a5df1d7aa53d94a290cb83d7ce5577d4fcaeb49921b45f5dda5ded5b13e43d`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca958152c7c05868bf9008ee782e78132d0a13ae4fa12c39db001c5e22406370`  
		Last Modified: Tue, 26 Mar 2019 23:57:12 GMT  
		Size: 23.6 MB (23581654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d849185ff69008c0d308bd94ab7efbdad0d3bcbe1895f6270546981e371046d4`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:80967fafeb6cc2491bf8c4b19380889d29a7b8432a7cbd5ec5861c26cc32c785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:50315bd9855a0042780effe43ee51fd60f5979fd65dcd91bce06f37cc6ee51f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc96c8bc6ae57bfea24d848ac04c0dc8f6e148e06717f1e855fe59c3e509b09b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:54:20 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 26 Mar 2019 23:54:52 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 26 Mar 2019 23:54:54 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 26 Mar 2019 23:54:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 26 Mar 2019 23:56:55 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:56:55 GMT
VOLUME [/data]
# Tue, 26 Mar 2019 23:56:56 GMT
WORKDIR /data
# Tue, 26 Mar 2019 23:56:56 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 26 Mar 2019 23:56:57 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa352d0099b2f62926d7e8daf17169a15cdc16dd3a6add66ed7a9e2638b693e`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a5df1d7aa53d94a290cb83d7ce5577d4fcaeb49921b45f5dda5ded5b13e43d`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca958152c7c05868bf9008ee782e78132d0a13ae4fa12c39db001c5e22406370`  
		Last Modified: Tue, 26 Mar 2019 23:57:12 GMT  
		Size: 23.6 MB (23581654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d849185ff69008c0d308bd94ab7efbdad0d3bcbe1895f6270546981e371046d4`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:80967fafeb6cc2491bf8c4b19380889d29a7b8432a7cbd5ec5861c26cc32c785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:50315bd9855a0042780effe43ee51fd60f5979fd65dcd91bce06f37cc6ee51f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc96c8bc6ae57bfea24d848ac04c0dc8f6e148e06717f1e855fe59c3e509b09b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:54:20 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 26 Mar 2019 23:54:52 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 26 Mar 2019 23:54:54 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 26 Mar 2019 23:54:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 26 Mar 2019 23:56:55 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:56:55 GMT
VOLUME [/data]
# Tue, 26 Mar 2019 23:56:56 GMT
WORKDIR /data
# Tue, 26 Mar 2019 23:56:56 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 26 Mar 2019 23:56:57 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa352d0099b2f62926d7e8daf17169a15cdc16dd3a6add66ed7a9e2638b693e`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a5df1d7aa53d94a290cb83d7ce5577d4fcaeb49921b45f5dda5ded5b13e43d`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca958152c7c05868bf9008ee782e78132d0a13ae4fa12c39db001c5e22406370`  
		Last Modified: Tue, 26 Mar 2019 23:57:12 GMT  
		Size: 23.6 MB (23581654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d849185ff69008c0d308bd94ab7efbdad0d3bcbe1895f6270546981e371046d4`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:6d65b3393a7a6a549c19e921e4b83430b422ebcf07d01508e0b1ef900877da8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:25dc7b9c9415adb2c16c88a80a0584d2642c337847672c012ad18bf2435abaf9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77965857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:318ddcd7d20b9c77b5c2f29d77c15f480c5b2c54b405b57aa5b7a37a50595eb2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:20:07 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 05 Mar 2019 05:20:43 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 05 Mar 2019 05:20:44 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 05 Mar 2019 05:20:45 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 05 Mar 2019 05:22:51 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:22:52 GMT
VOLUME [/data]
# Tue, 05 Mar 2019 05:22:52 GMT
WORKDIR /data
# Tue, 05 Mar 2019 05:22:52 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 05 Mar 2019 05:22:52 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099860832de12895a8bb88e9cf020f71404c1efabe57e8da164c7bc7b2525268`  
		Last Modified: Tue, 05 Mar 2019 05:23:10 GMT  
		Size: 4.1 KB (4111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceabff0983d6106e569a2155985f13ca9a043094a81b32ae5566a6a9e75fac54`  
		Last Modified: Tue, 05 Mar 2019 05:23:11 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48547e1220622322b4e28f7f0af5d64f2f953b5a0fb76a9780fec5c42c58cccf`  
		Last Modified: Tue, 05 Mar 2019 05:23:15 GMT  
		Size: 23.6 MB (23579779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51973b1fd5aced705eee1048ccfc4a2d198e8002532b6b147416121b83421f36`  
		Last Modified: Tue, 05 Mar 2019 05:23:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

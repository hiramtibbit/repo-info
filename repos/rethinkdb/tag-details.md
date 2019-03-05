<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:6d65b3393a7a6a549c19e921e4b83430b422ebcf07d01508e0b1ef900877da8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

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

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:6d65b3393a7a6a549c19e921e4b83430b422ebcf07d01508e0b1ef900877da8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

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

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:6d65b3393a7a6a549c19e921e4b83430b422ebcf07d01508e0b1ef900877da8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

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

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:f71d44a28322bf17aa0d3dd6ccbcba8ff4d59fdda8a132576d6c3132b6ed0e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

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

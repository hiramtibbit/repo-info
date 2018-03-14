<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:b5f89c69cc28f2527e4f73684671366bd79cb34a431cb8bdab3fa081ba57c5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7fd2c6021a01a49fb691d8936027d5f18f053e20a82c35c1f863c1877022d67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77889033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca31d06e22212b0af891382f76d03c50ae6d7798197a69f1b57565cc22395d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:18:37 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Mar 2018 19:18:43 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 14 Mar 2018 19:18:44 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Mar 2018 19:18:44 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 14 Mar 2018 19:19:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:15 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:19:15 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:19:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Mar 2018 19:19:15 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764c4252574825ba59e6912d4ae9293b1bc35beadc3f2f7913589dfb3bc29f69`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134675f031870053b809b24d1ab944c0bf41b7735f04844def190c5e5d65fad3`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73bb36540baf1289958f7b3613888aad8ef9c6f149aece9bfe7d17a57578772`  
		Last Modified: Wed, 14 Mar 2018 19:19:46 GMT  
		Size: 25.3 MB (25276095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a57f1d73a44af922b0b115de06e48ffa2765b0b3f0bfac28fa35e29316a1569`  
		Last Modified: Wed, 14 Mar 2018 19:19:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:b5f89c69cc28f2527e4f73684671366bd79cb34a431cb8bdab3fa081ba57c5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7fd2c6021a01a49fb691d8936027d5f18f053e20a82c35c1f863c1877022d67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77889033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca31d06e22212b0af891382f76d03c50ae6d7798197a69f1b57565cc22395d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:18:37 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Mar 2018 19:18:43 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 14 Mar 2018 19:18:44 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Mar 2018 19:18:44 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 14 Mar 2018 19:19:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:15 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:19:15 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:19:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Mar 2018 19:19:15 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764c4252574825ba59e6912d4ae9293b1bc35beadc3f2f7913589dfb3bc29f69`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134675f031870053b809b24d1ab944c0bf41b7735f04844def190c5e5d65fad3`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73bb36540baf1289958f7b3613888aad8ef9c6f149aece9bfe7d17a57578772`  
		Last Modified: Wed, 14 Mar 2018 19:19:46 GMT  
		Size: 25.3 MB (25276095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a57f1d73a44af922b0b115de06e48ffa2765b0b3f0bfac28fa35e29316a1569`  
		Last Modified: Wed, 14 Mar 2018 19:19:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:b5f89c69cc28f2527e4f73684671366bd79cb34a431cb8bdab3fa081ba57c5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7fd2c6021a01a49fb691d8936027d5f18f053e20a82c35c1f863c1877022d67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77889033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca31d06e22212b0af891382f76d03c50ae6d7798197a69f1b57565cc22395d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:18:37 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Mar 2018 19:18:43 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 14 Mar 2018 19:18:44 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Mar 2018 19:18:44 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 14 Mar 2018 19:19:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:15 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:19:15 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:19:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Mar 2018 19:19:15 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764c4252574825ba59e6912d4ae9293b1bc35beadc3f2f7913589dfb3bc29f69`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134675f031870053b809b24d1ab944c0bf41b7735f04844def190c5e5d65fad3`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73bb36540baf1289958f7b3613888aad8ef9c6f149aece9bfe7d17a57578772`  
		Last Modified: Wed, 14 Mar 2018 19:19:46 GMT  
		Size: 25.3 MB (25276095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a57f1d73a44af922b0b115de06e48ffa2765b0b3f0bfac28fa35e29316a1569`  
		Last Modified: Wed, 14 Mar 2018 19:19:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:b5f89c69cc28f2527e4f73684671366bd79cb34a431cb8bdab3fa081ba57c5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:7fd2c6021a01a49fb691d8936027d5f18f053e20a82c35c1f863c1877022d67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77889033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca31d06e22212b0af891382f76d03c50ae6d7798197a69f1b57565cc22395d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:18:37 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Mar 2018 19:18:43 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Wed, 14 Mar 2018 19:18:44 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Mar 2018 19:18:44 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Wed, 14 Mar 2018 19:19:14 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:19:15 GMT
VOLUME [/data]
# Wed, 14 Mar 2018 19:19:15 GMT
WORKDIR /data
# Wed, 14 Mar 2018 19:19:15 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Mar 2018 19:19:15 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764c4252574825ba59e6912d4ae9293b1bc35beadc3f2f7913589dfb3bc29f69`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 4.1 KB (4110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134675f031870053b809b24d1ab944c0bf41b7735f04844def190c5e5d65fad3`  
		Last Modified: Wed, 14 Mar 2018 19:19:42 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73bb36540baf1289958f7b3613888aad8ef9c6f149aece9bfe7d17a57578772`  
		Last Modified: Wed, 14 Mar 2018 19:19:46 GMT  
		Size: 25.3 MB (25276095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a57f1d73a44af922b0b115de06e48ffa2765b0b3f0bfac28fa35e29316a1569`  
		Last Modified: Wed, 14 Mar 2018 19:19:43 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

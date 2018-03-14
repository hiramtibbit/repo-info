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
$ docker pull rethinkdb@sha256:89a95ef2030888dc6074a23efffb535b6e32d46fa6d1fab5565ecfa653156607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:fad11e7a6bd7eec1805488e8a45cef0778031ddb4042e6a7a192afb52c25cee2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77888847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071228bf0b1e6f196b1331ae12afb790b14a5e0b555a3f5b2086a3d47d9b8a8f`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 09:41:50 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sat, 17 Feb 2018 09:41:54 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sat, 17 Feb 2018 09:41:54 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sat, 17 Feb 2018 09:41:55 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sat, 17 Feb 2018 09:42:15 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:42:16 GMT
VOLUME [/data]
# Sat, 17 Feb 2018 09:42:16 GMT
WORKDIR /data
# Sat, 17 Feb 2018 09:42:16 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sat, 17 Feb 2018 09:42:17 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ae55155d7c328ff2c55e2cdbe076a951b37a84cf47205e50cc96a299681c50`  
		Last Modified: Sat, 17 Feb 2018 09:42:46 GMT  
		Size: 4.1 KB (4111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc1ff2fe940e40a9ce3b51ca3e4d516b7ca2c438b26596c77dc2cb44e5dec24`  
		Last Modified: Sat, 17 Feb 2018 09:42:45 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8098e40951dae9ebbba7e362289c3ceb4e474bb65c7d3a57a5c5396e2b30512`  
		Last Modified: Sat, 17 Feb 2018 09:42:49 GMT  
		Size: 25.3 MB (25276141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d44ffd2ee4fbf09a80bbe651145409710e37f5c1a3821509ca38e949510d7b`  
		Last Modified: Sat, 17 Feb 2018 09:42:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

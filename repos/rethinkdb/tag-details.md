<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2.3.6`](#rethinkdb236)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:78dbe069c3d3ebddeaa097a766bff4ea7e0ea6536a1afe9315fe61930dc16eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

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

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:78dbe069c3d3ebddeaa097a766bff4ea7e0ea6536a1afe9315fe61930dc16eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

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

## `rethinkdb:2.3.6`

```console
$ docker pull rethinkdb@sha256:78dbe069c3d3ebddeaa097a766bff4ea7e0ea6536a1afe9315fe61930dc16eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.6` - linux; amd64

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

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:4c29968663d36756019305814b725a613887c65d2185c3927cdfec1a127f5afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

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

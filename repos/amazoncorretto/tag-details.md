<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazoncorretto`

-	[`amazoncorretto:11`](#amazoncorretto11)
-	[`amazoncorretto:11.0.2`](#amazoncorretto1102)
-	[`amazoncorretto:11-al2-full`](#amazoncorretto11-al2-full)
-	[`amazoncorretto:8`](#amazoncorretto8)
-	[`amazoncorretto:8-al2-full`](#amazoncorretto8-al2-full)
-	[`amazoncorretto:8u202`](#amazoncorretto8u202)
-	[`amazoncorretto:latest`](#amazoncorrettolatest)

## `amazoncorretto:11`

```console
$ docker pull amazoncorretto@sha256:540e99c7ce892b86613c349c4c4d3f72c2413bdfe2b30d85ce2a4be25fd36fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aa2153fae1cd36f22ef47e4d83d3918f87cfcc68b93343aa7e5306d864281f87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257414168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee30dc78be32f8ea32ba05701a48c271d6bdfd66ecc53a7f6667aef6845f8ee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 15 Mar 2019 23:19:22 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
# Fri, 15 Mar 2019 23:19:22 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3
# Fri, 15 Mar 2019 23:19:22 GMT
ARG key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862
# Fri, 15 Mar 2019 23:19:46 GMT
# ARGS: key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862 path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3 rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Fri, 15 Mar 2019 23:19:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d934c31277947df7d83f116135eb36eec4f980cf086daae3b92467bf3a2d8`  
		Last Modified: Fri, 15 Mar 2019 23:20:16 GMT  
		Size: 196.1 MB (196104423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:11.0.2`

```console
$ docker pull amazoncorretto@sha256:540e99c7ce892b86613c349c4c4d3f72c2413bdfe2b30d85ce2a4be25fd36fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11.0.2` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aa2153fae1cd36f22ef47e4d83d3918f87cfcc68b93343aa7e5306d864281f87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257414168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee30dc78be32f8ea32ba05701a48c271d6bdfd66ecc53a7f6667aef6845f8ee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 15 Mar 2019 23:19:22 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
# Fri, 15 Mar 2019 23:19:22 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3
# Fri, 15 Mar 2019 23:19:22 GMT
ARG key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862
# Fri, 15 Mar 2019 23:19:46 GMT
# ARGS: key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862 path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3 rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Fri, 15 Mar 2019 23:19:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d934c31277947df7d83f116135eb36eec4f980cf086daae3b92467bf3a2d8`  
		Last Modified: Fri, 15 Mar 2019 23:20:16 GMT  
		Size: 196.1 MB (196104423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:540e99c7ce892b86613c349c4c4d3f72c2413bdfe2b30d85ce2a4be25fd36fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aa2153fae1cd36f22ef47e4d83d3918f87cfcc68b93343aa7e5306d864281f87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257414168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee30dc78be32f8ea32ba05701a48c271d6bdfd66ecc53a7f6667aef6845f8ee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 15 Mar 2019 23:19:22 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
# Fri, 15 Mar 2019 23:19:22 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3
# Fri, 15 Mar 2019 23:19:22 GMT
ARG key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862
# Fri, 15 Mar 2019 23:19:46 GMT
# ARGS: key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862 path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3 rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Fri, 15 Mar 2019 23:19:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d934c31277947df7d83f116135eb36eec4f980cf086daae3b92467bf3a2d8`  
		Last Modified: Fri, 15 Mar 2019 23:20:16 GMT  
		Size: 196.1 MB (196104423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8`

```console
$ docker pull amazoncorretto@sha256:7e82f9ce197fe75a54d28f2f0c00ce64cb0f537eb137d1bb6e80a462c85b9f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5fe1482bdc62b647c9df73d31f353ca30cd9d6b00e4e6ffe9adee7a4ac3f2fc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232731183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fa1e2d458835b1d304d40e1d1c1cf7bb097c17cb7de6fd675bd748f988c29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:39:46 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6717d8e0127ffa7ddb72f8edb809cecdc20d3c6b5fe56e2aadd087f96b372f6`  
		Last Modified: Fri, 01 Mar 2019 22:40:32 GMT  
		Size: 171.4 MB (171421438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8-al2-full`

```console
$ docker pull amazoncorretto@sha256:7e82f9ce197fe75a54d28f2f0c00ce64cb0f537eb137d1bb6e80a462c85b9f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5fe1482bdc62b647c9df73d31f353ca30cd9d6b00e4e6ffe9adee7a4ac3f2fc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232731183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fa1e2d458835b1d304d40e1d1c1cf7bb097c17cb7de6fd675bd748f988c29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:39:46 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6717d8e0127ffa7ddb72f8edb809cecdc20d3c6b5fe56e2aadd087f96b372f6`  
		Last Modified: Fri, 01 Mar 2019 22:40:32 GMT  
		Size: 171.4 MB (171421438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8u202`

```console
$ docker pull amazoncorretto@sha256:7e82f9ce197fe75a54d28f2f0c00ce64cb0f537eb137d1bb6e80a462c85b9f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8u202` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5fe1482bdc62b647c9df73d31f353ca30cd9d6b00e4e6ffe9adee7a4ac3f2fc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232731183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fa1e2d458835b1d304d40e1d1c1cf7bb097c17cb7de6fd675bd748f988c29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:39:46 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6717d8e0127ffa7ddb72f8edb809cecdc20d3c6b5fe56e2aadd087f96b372f6`  
		Last Modified: Fri, 01 Mar 2019 22:40:32 GMT  
		Size: 171.4 MB (171421438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:7e82f9ce197fe75a54d28f2f0c00ce64cb0f537eb137d1bb6e80a462c85b9f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5fe1482bdc62b647c9df73d31f353ca30cd9d6b00e4e6ffe9adee7a4ac3f2fc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232731183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fa1e2d458835b1d304d40e1d1c1cf7bb097c17cb7de6fd675bd748f988c29`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:39:46 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6717d8e0127ffa7ddb72f8edb809cecdc20d3c6b5fe56e2aadd087f96b372f6`  
		Last Modified: Fri, 01 Mar 2019 22:40:32 GMT  
		Size: 171.4 MB (171421438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

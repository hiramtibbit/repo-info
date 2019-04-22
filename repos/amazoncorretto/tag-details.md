<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazoncorretto`

-	[`amazoncorretto:11`](#amazoncorretto11)
-	[`amazoncorretto:11.0.3`](#amazoncorretto1103)
-	[`amazoncorretto:11-al2-full`](#amazoncorretto11-al2-full)
-	[`amazoncorretto:8`](#amazoncorretto8)
-	[`amazoncorretto:8-al2-full`](#amazoncorretto8-al2-full)
-	[`amazoncorretto:8u212`](#amazoncorretto8u212)
-	[`amazoncorretto:latest`](#amazoncorrettolatest)

## `amazoncorretto:11`

```console
$ docker pull amazoncorretto@sha256:35eef32fc2a5d417d2c72bdffe2aee3d46d0be8aafdd0368d9aff95910bfb610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3953993f5b62f8c82f7cbf653c97b96508c876bce28f53caf502ce7255d352c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257473176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7bb9980b28361fc54dc8497553b7a8ba65548fc769139d373e0afdcadda155`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Apr 2019 22:20:46 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Tue, 16 Apr 2019 22:20:47 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Tue, 16 Apr 2019 22:20:47 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Tue, 16 Apr 2019 22:21:25 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Tue, 16 Apr 2019 22:21:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c2851dcafa74b9f85a95787d8e5a8a669964eeb5642aa0d89547e9bf60b5d6`  
		Last Modified: Tue, 16 Apr 2019 22:22:12 GMT  
		Size: 196.2 MB (196163431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:11.0.3`

```console
$ docker pull amazoncorretto@sha256:35eef32fc2a5d417d2c72bdffe2aee3d46d0be8aafdd0368d9aff95910bfb610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11.0.3` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3953993f5b62f8c82f7cbf653c97b96508c876bce28f53caf502ce7255d352c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257473176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7bb9980b28361fc54dc8497553b7a8ba65548fc769139d373e0afdcadda155`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Apr 2019 22:20:46 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Tue, 16 Apr 2019 22:20:47 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Tue, 16 Apr 2019 22:20:47 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Tue, 16 Apr 2019 22:21:25 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Tue, 16 Apr 2019 22:21:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c2851dcafa74b9f85a95787d8e5a8a669964eeb5642aa0d89547e9bf60b5d6`  
		Last Modified: Tue, 16 Apr 2019 22:22:12 GMT  
		Size: 196.2 MB (196163431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:35eef32fc2a5d417d2c72bdffe2aee3d46d0be8aafdd0368d9aff95910bfb610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3953993f5b62f8c82f7cbf653c97b96508c876bce28f53caf502ce7255d352c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257473176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7bb9980b28361fc54dc8497553b7a8ba65548fc769139d373e0afdcadda155`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Apr 2019 22:20:46 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Tue, 16 Apr 2019 22:20:47 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Tue, 16 Apr 2019 22:20:47 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Tue, 16 Apr 2019 22:21:25 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Tue, 16 Apr 2019 22:21:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c2851dcafa74b9f85a95787d8e5a8a669964eeb5642aa0d89547e9bf60b5d6`  
		Last Modified: Tue, 16 Apr 2019 22:22:12 GMT  
		Size: 196.2 MB (196163431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8`

```console
$ docker pull amazoncorretto@sha256:25af5f2354cd06b9303b5f2574a235038a8f9d585f5e89cca6386ff7bfb2c358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6b5dc5abd35cb1aad4043bbd28c6ab02558a639f84581d8df3deaabf323eab6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182597448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fe666c02f585e287fb583e38667aab6d830fb49319ff7b2a0b27c06ecda55d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Mon, 22 Apr 2019 22:24:12 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Mon, 22 Apr 2019 22:24:12 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Mon, 22 Apr 2019 22:24:12 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Mon, 22 Apr 2019 22:24:36 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Mon, 22 Apr 2019 22:24:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0027511527cb99b1b1065781bbbf386124f76551fff86e1cadb2c0f8c391285`  
		Last Modified: Mon, 22 Apr 2019 22:25:11 GMT  
		Size: 121.3 MB (121287703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8-al2-full`

```console
$ docker pull amazoncorretto@sha256:25af5f2354cd06b9303b5f2574a235038a8f9d585f5e89cca6386ff7bfb2c358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6b5dc5abd35cb1aad4043bbd28c6ab02558a639f84581d8df3deaabf323eab6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182597448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fe666c02f585e287fb583e38667aab6d830fb49319ff7b2a0b27c06ecda55d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Mon, 22 Apr 2019 22:24:12 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Mon, 22 Apr 2019 22:24:12 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Mon, 22 Apr 2019 22:24:12 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Mon, 22 Apr 2019 22:24:36 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Mon, 22 Apr 2019 22:24:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0027511527cb99b1b1065781bbbf386124f76551fff86e1cadb2c0f8c391285`  
		Last Modified: Mon, 22 Apr 2019 22:25:11 GMT  
		Size: 121.3 MB (121287703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8u212`

```console
$ docker pull amazoncorretto@sha256:25af5f2354cd06b9303b5f2574a235038a8f9d585f5e89cca6386ff7bfb2c358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8u212` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6b5dc5abd35cb1aad4043bbd28c6ab02558a639f84581d8df3deaabf323eab6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182597448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fe666c02f585e287fb583e38667aab6d830fb49319ff7b2a0b27c06ecda55d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Mon, 22 Apr 2019 22:24:12 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Mon, 22 Apr 2019 22:24:12 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Mon, 22 Apr 2019 22:24:12 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Mon, 22 Apr 2019 22:24:36 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Mon, 22 Apr 2019 22:24:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0027511527cb99b1b1065781bbbf386124f76551fff86e1cadb2c0f8c391285`  
		Last Modified: Mon, 22 Apr 2019 22:25:11 GMT  
		Size: 121.3 MB (121287703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:25af5f2354cd06b9303b5f2574a235038a8f9d585f5e89cca6386ff7bfb2c358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6b5dc5abd35cb1aad4043bbd28c6ab02558a639f84581d8df3deaabf323eab6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182597448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fe666c02f585e287fb583e38667aab6d830fb49319ff7b2a0b27c06ecda55d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Mon, 22 Apr 2019 22:24:12 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Mon, 22 Apr 2019 22:24:12 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Mon, 22 Apr 2019 22:24:12 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Mon, 22 Apr 2019 22:24:36 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Mon, 22 Apr 2019 22:24:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0027511527cb99b1b1065781bbbf386124f76551fff86e1cadb2c0f8c391285`  
		Last Modified: Mon, 22 Apr 2019 22:25:11 GMT  
		Size: 121.3 MB (121287703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull amazoncorretto@sha256:efa15e1a1353e0e5b964baa65ed89a2aeb424eb4fe0fa8a23691ee897d110d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:841e55ead7c49f856214dbf454f6e0ffaf09eb7449733c88cf1733d9cb892b49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257427256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19537520a8ba70301115a1d40eb69571dd42cbc7b890139739d6e88eec5be18c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:40:08 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Thu, 23 May 2019 22:40:08 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Thu, 23 May 2019 22:40:08 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Thu, 23 May 2019 22:40:33 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ffab511c0fe2e4732501f5e3b4fe3f49ce891effaa211104828fc03677c74e`  
		Last Modified: Thu, 23 May 2019 22:41:20 GMT  
		Size: 196.1 MB (196142079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:11.0.3`

```console
$ docker pull amazoncorretto@sha256:efa15e1a1353e0e5b964baa65ed89a2aeb424eb4fe0fa8a23691ee897d110d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11.0.3` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:841e55ead7c49f856214dbf454f6e0ffaf09eb7449733c88cf1733d9cb892b49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257427256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19537520a8ba70301115a1d40eb69571dd42cbc7b890139739d6e88eec5be18c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:40:08 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Thu, 23 May 2019 22:40:08 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Thu, 23 May 2019 22:40:08 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Thu, 23 May 2019 22:40:33 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ffab511c0fe2e4732501f5e3b4fe3f49ce891effaa211104828fc03677c74e`  
		Last Modified: Thu, 23 May 2019 22:41:20 GMT  
		Size: 196.1 MB (196142079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:11-al2-full`

```console
$ docker pull amazoncorretto@sha256:efa15e1a1353e0e5b964baa65ed89a2aeb424eb4fe0fa8a23691ee897d110d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:11-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:841e55ead7c49f856214dbf454f6e0ffaf09eb7449733c88cf1733d9cb892b49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257427256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19537520a8ba70301115a1d40eb69571dd42cbc7b890139739d6e88eec5be18c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:40:08 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Thu, 23 May 2019 22:40:08 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Thu, 23 May 2019 22:40:08 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Thu, 23 May 2019 22:40:33 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ffab511c0fe2e4732501f5e3b4fe3f49ce891effaa211104828fc03677c74e`  
		Last Modified: Thu, 23 May 2019 22:41:20 GMT  
		Size: 196.1 MB (196142079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8`

```console
$ docker pull amazoncorretto@sha256:9cfd4d23a4ea14e1102f8403e0b3445c4ae6f9ff1f80f00f95ca6ff7e11bd729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5732cc117eb41bbfad50bc92456dfaf7299cf8d74437b42b9cb8f77f3dcde8d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182565092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d228f0cf0d7c1607630a7ee9a4bad477e1c10b2fe6c61857e2afe16063cd897d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:41 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Thu, 23 May 2019 22:39:41 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Thu, 23 May 2019 22:39:42 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Thu, 23 May 2019 22:40:05 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042b5f8e146b4ed8e5e7f5082aea6e9392d3ac1eb8fa75f7c4b12b48cfbf584`  
		Last Modified: Thu, 23 May 2019 22:40:58 GMT  
		Size: 121.3 MB (121279915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8-al2-full`

```console
$ docker pull amazoncorretto@sha256:9cfd4d23a4ea14e1102f8403e0b3445c4ae6f9ff1f80f00f95ca6ff7e11bd729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8-al2-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5732cc117eb41bbfad50bc92456dfaf7299cf8d74437b42b9cb8f77f3dcde8d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182565092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d228f0cf0d7c1607630a7ee9a4bad477e1c10b2fe6c61857e2afe16063cd897d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:41 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Thu, 23 May 2019 22:39:41 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Thu, 23 May 2019 22:39:42 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Thu, 23 May 2019 22:40:05 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042b5f8e146b4ed8e5e7f5082aea6e9392d3ac1eb8fa75f7c4b12b48cfbf584`  
		Last Modified: Thu, 23 May 2019 22:40:58 GMT  
		Size: 121.3 MB (121279915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:8u212`

```console
$ docker pull amazoncorretto@sha256:9cfd4d23a4ea14e1102f8403e0b3445c4ae6f9ff1f80f00f95ca6ff7e11bd729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:8u212` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5732cc117eb41bbfad50bc92456dfaf7299cf8d74437b42b9cb8f77f3dcde8d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182565092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d228f0cf0d7c1607630a7ee9a4bad477e1c10b2fe6c61857e2afe16063cd897d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:41 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Thu, 23 May 2019 22:39:41 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Thu, 23 May 2019 22:39:42 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Thu, 23 May 2019 22:40:05 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042b5f8e146b4ed8e5e7f5082aea6e9392d3ac1eb8fa75f7c4b12b48cfbf584`  
		Last Modified: Thu, 23 May 2019 22:40:58 GMT  
		Size: 121.3 MB (121279915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:9cfd4d23a4ea14e1102f8403e0b3445c4ae6f9ff1f80f00f95ca6ff7e11bd729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5732cc117eb41bbfad50bc92456dfaf7299cf8d74437b42b9cb8f77f3dcde8d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182565092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d228f0cf0d7c1607630a7ee9a4bad477e1c10b2fe6c61857e2afe16063cd897d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:41 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Thu, 23 May 2019 22:39:41 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Thu, 23 May 2019 22:39:42 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Thu, 23 May 2019 22:40:05 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042b5f8e146b4ed8e5e7f5082aea6e9392d3ac1eb8fa75f7c4b12b48cfbf584`  
		Last Modified: Thu, 23 May 2019 22:40:58 GMT  
		Size: 121.3 MB (121279915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
